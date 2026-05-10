#!/usr/bin/env python3
# License: Apache-2.0
"""
This program converts a GDSII (2D) layout file to a single glTF (3D) file containing one baked mesh for each layer

USAGE:
    - edit the "layerstack" variable in the "CONFIGURATION" section below
    - run "gdsiiobj file.gds"
OUTPUT:
    - one file named: file.gds.gltf

The program takes one argument, a path to a GDSII file. It reads shapes from
each layer of the GDSII file, converts them to polygon boundaries, then makes
a triangle mesh for each GDSII layer by extruding the polygons to given sizes.

All units, including the units of the exported file, are the GDSII file's
user units (often microns).

Original script by mbalestrini: https://github.com/mbalestrini/GDS2Obj , also Licensed Apache-2.0
"""

import sys # read command-line arguments
import gdspy # open gds file
import numpy as np # fast math on lots of points
import triangle # triangulate polygons
import threading
import multiprocessing

import pygltflib
from pygltflib import BufferFormat
from pygltflib.validator import validate, summary
from multiprocessing import Pool

# get the input file name
if len(sys.argv) < 2: # sys.argv[0] is the name of the program
    print("Error: need exactly one file as a command line argument.")
    sys.exit(0)
gdsii_file_path = sys.argv[1]

def extrude(args):
    polygons = args[0]
    idx = args[1]
    print(f'Thread {idx} start')
    positions = []
    indices = []
    indices_offset = 0
    last_percent = 0
    for i in range(0, len(polygons)):
        percent = float(i) / len(polygons) * 100
        if percent - last_percent > 25:
            last_percent = percent
            print(f'Thread {idx}: {last_percent}%')
        poly_data = polygons[i][1]
        clockwise = polygons[i][2]
        
        p_positions_top = np.insert(poly_data['vertices'], 2, zmax, axis=1)
        p_positions_bottom = np.insert( poly_data['vertices'] , 2, zmin, axis=1)
        
        p_positions = np.concatenate( (p_positions_top, p_positions_bottom) )
        p_indices_top = poly_data['triangles']
        p_indices_bottom = np.flip ((p_indices_top+len(p_positions_top)), axis=1 )
        
        ind_list_top = np.arange(len(p_positions_top))
        ind_list_bottom = np.arange(len(p_positions_top)) + len(p_positions_top)

        if(clockwise):
            ind_list_top = np.flip(ind_list_top, axis=0)
            ind_list_bottom = np.flip(ind_list_bottom, axis=0)

        p_indices_right = np.stack( (ind_list_bottom, np.roll(ind_list_bottom, -1, axis=0) , np.roll(ind_list_top, -1, axis=0)), axis=1 )
        p_indices_left = np.stack( ( np.roll(ind_list_top, -1, axis=0), ind_list_top , ind_list_bottom ) , axis=1)
                
        p_indices = np.concatenate( (p_indices_top, p_indices_bottom, p_indices_right, p_indices_left) )

        if(len(positions)==0):
            positions = p_positions
        else:
            positions = np.append(positions , p_positions, axis=0)
        if(len(indices)==0):
            indices = p_indices
        else:    
            indices = np.append(indices, p_indices + indices_offset, axis=0)            
        indices_offset += len(p_positions)
    return (positions, indices)

def triangulate(polygon):
    polygon = polygon[0]
    
    num_polygon_points = len(polygon)

    # determine whether polygon points are CW or CCW
    area = 0
    for i, v1 in enumerate(polygon): # loop through vertices
        v2 = polygon[(i+1) % num_polygon_points]
        area += (v2[0]-v1[0])*(v2[1]+v1[1]) # integrate area

    clockwise = area > 0

    # GDSII implements holes in polygons by making the polygon edge
    # wrap into the hole and back out along the same line. However,
    # this confuses the triangulation library, which fills the holes
    # with extra triangles. Avoid this by moving each edge back a
    # very small amount so that no two edges of the same polygon overlap.
    delta = 0.00001 # inset each vertex by this much (smaller has broken one file)
    points_i = polygon # get list of points
    points_j = np.roll(points_i, -1, axis=0) # shift by 1
    points_k = np.roll(points_i, 1, axis=0) # shift by -1
    # calculate normals for each edge of each vertex (in parallel, for speed)
    normal_ij = np.stack((points_j[:, 1]-points_i[:, 1],
                        points_i[:, 0]-points_j[:, 0]), axis=1)
    normal_ik = np.stack((points_i[:, 1]-points_k[:, 1],
                        points_k[:, 0]-points_i[:, 0]), axis=1)
    length_ij = np.linalg.norm(normal_ij, axis=1)
    length_ik = np.linalg.norm(normal_ik, axis=1)
    normal_ij /= np.stack((length_ij, length_ij), axis=1)
    normal_ik /= np.stack((length_ik, length_ik), axis=1)
    if clockwise:
        normal_ij = -1*normal_ij
        normal_ik = -1*normal_ik
    # move each vertex inward along its two edge normals
    polygon = points_i - delta*normal_ij - delta*normal_ik

    # In an extreme case of the above, the polygon edge doubles back on
    # itself on the same line, resulting in a zero-width segment. I've
    # seen this happen, e.g., with a capital "N"-shaped hole, where
    # the hole split line cuts out the "N" shape but splits apart to
    # form the triangle cutout in one side of the shape. In any case,
    # simply moving the polygon edges isn't enough to deal with this;
    # we'll additionally mark points just outside of each edge, between
    # the original edge and the delta-shifted edge, as outside the polygon.
    # These parts will be removed from the triangulation, and this solves
    # just this case with no adverse affects elsewhere.
    hole_delta = 0.00001 # small fraction of delta
    holes = 0.5*(points_j+points_i) - hole_delta*delta*normal_ij
    # HOWEVER: sometimes this causes a segmentation fault in the triangle
    # library. I've observed this as a result of certain various polygons.
    # Frustratingly, the fault can be bypassed by *rotating the polygons*
    # by like 30 degrees (exact angle seems to depend on delta values) or
    # moving one specific edge outward a bit. I have absolutely no idea
    # what is wrong. In the interest of stability over full functionality,
    # this is disabled. TODO: figure out why this happens and fix it.
    use_holes = False

    # triangulate: compute triangles to fill polygon
    point_array = np.arange(num_polygon_points)
    edges = np.transpose(np.stack((point_array, np.roll(point_array, 1))))
    if use_holes:
        triangles = triangle.triangulate(dict(vertices=polygon,
                                            segments=edges,
                                            holes=holes), opts='p')
    else:
        triangles = triangle.triangulate(dict(vertices=polygon,
                                            segments=edges), opts='p')

    if not 'triangles' in triangles.keys():
        triangles['triangles'] = []

    # each line segment will make two triangles (for a rectangle), and the polygon
    # triangulation will be copied on the top and bottom of the layer.
    return (polygon, triangles, clockwise)

########## CONFIGURATION (EDIT THIS PART) #####################################

# choose which GDSII layers to use

layerstack = {
    (0,0): {'name':'substrate', 'zmin':-2, 'zmax':0, 'color':[ 0.2, 0.2, 0.2, 1.0]},
    (21,0): {'name':'Nwell', 'zmin':-0.5, 'zmax':0.01, 'color':[ 0.4, 0.4, 0.4, 1.0]},    
    (22,0): {'name':'COMP (1)', 'zmin':-0.12, 'zmax':0.02, 'color':[ 0.9, 0.9, 0.9, 1.0]},    
    (30,0): {'name':'Poly2', 'zmin':0, 'zmax':0.18, 'color':[ 0.75, 0.35, 0.46, 1.0]},    
    (53,0): {'name':'MetalTop', 'zmin':0, 'zmax':0.936, 'color':[ 0.2, 0.2, 0.2, 1.0]},    
    #(67,20): {'name':'li1', 'zmin':0.936, 'zmax':1.136, 'color':[ 1.0, 0.81, 0.55, 1.0]},    
    (33,0): {'name':'Contact', 'zmin':1.011, 'zmax':1.376, 'color':[ 0.2, 0.2, 0.2, 1.0]},    
    (34,0): {'name':'Metal1', 'zmin':1.376, 'zmax':1.736, 'color':[ 0.16, 0.38, 0.83, 1.0]},    
    (35,0): {'name':'Via1', 'zmin':1.736,'zmax':2, 'color':[ 0.2, 0.2, 0.2, 1.0]},    
    (36,0): {'name':'Metal2', 'zmin':2, 'zmax':2.36, 'color':[ 0.65, 0.75, 0.9, 1.0]},    
    (38,0): {'name':'Via2', 'zmin':2.36, 'zmax':2.786, 'color':[ 0.2, 0.2, 0.2, 1.0]},    
    (42,0): {'name':'Metal3', 'zmin':2.786, 'zmax':3.631, 'color':[ 0.2, 0.62, 0.86, 1.0]},    
    (40,0): {'name':'Via3', 'zmin':3.631, 'zmax':4.0211, 'color':[ 0.2, 0.2, 0.2, 1.0]},    
    (46,0): {'name':'Metal4', 'zmin':4.0211, 'zmax':4.8661, 'color':[ 0.15, 0.11, 0.38, 1.0]},    
    (41,0): {'name':'Via4', 'zmin':4.8661, 'zmax':5.371, 'color':[ 0.2, 0.2, 0.2, 1.0]},    
    (81,0): {'name':'Metal5', 'zmin':5.371, 'zmax':6.6311, 'color':[ 0.4, 0.4, 0.4, 1.0]},
}
threads = 4

binaryBlob = bytes()
gltf = pygltflib.GLTF2()
scene = pygltflib.Scene()
gltf.scenes.append(scene)
buffer = pygltflib.Buffer()
gltf.buffers.append(buffer)

for layer in layerstack:
    mainMaterial = pygltflib.Material()
    mainMaterial.doubleSided = False
    mainMaterial.name = layerstack[layer]['name']
    mainMaterial.pbrMetallicRoughness =  {
                    "baseColorFactor": layerstack[layer]['color'],
                    "metallicFactor": 0.5,
                    "roughnessFactor": 0.5
                }
    gltf.materials.append(mainMaterial)

root_node = pygltflib.Node()
root_node.name = 'main'
gltf.nodes.append(root_node)

tris_count = 0

########## INPUT ##############################################################

# First, the input file is read using the gdspy library, which interprets the
# GDSII file and formats the data Python-style.
# See https://gdspy.readthedocs.io/en/stable/index.html for documentation.
# Second, the boundaries of each shape (polygon or path) are extracted for
# further processing.

print('Reading GDSII file {}...'.format(gdsii_file_path))
gdsii = gdspy.GdsLibrary()
gdsii.read_gds(gdsii_file_path, units='import')

print('Extracting polygons...')

for cell in gdsii.cells.values():
    if 'fill' in cell.name or 'antenna' in cell.name or 'endcap' in cell.name:
        cell.polygons.clear()
        

for cell in gdsii.top_level(): # loop through cells to read paths and polygons
    layers = {} # array to hold all geometry, sorted into layers

    print ("\nProcessing cell: ", cell.name)

    if len(cell.get_dependencies()) != 0:
        print("Flatenning")
        cell.flatten()
        gds_flattened = gdspy.GdsLibrary(gdsii.name, unit=gdsii.unit, precision=gdsii.precision)
        gds_flattened.add(cell)
        gds_flattened.write_gds(gdsii_file_path + "_flattened.gds")
    
    # $$$CONTEXT_INFO$$$ is a separate, non-standard compliant cell added
    # optionally by KLayout to store extra information not needed here.
    # see https://www.klayout.de/forum/discussion/1026/very-
    # important-gds-exported-from-k-layout-not-working-on-cadence-at-foundry
    if cell.name == '$$$CONTEXT_INFO$$$':
        continue # skip this cell

    print ("\tpaths loop. total paths:" , len(cell.paths))
    # loop through paths in cell
    for path in cell.paths:
        lnum = (path.layers[0],path.datatypes[0]) # GDSII layer number
        
        if not lnum in layerstack.keys():
            continue

        layers[lnum] = [] if not lnum in layers else layers[lnum]
        # add paths (converted to polygons) that layer
        for poly in path.get_polygons():
            layers[lnum].append((poly, None, False))

    print ("\tpolygons loop. total polygons:" , len(cell.polygons))
    # loop through polygons (and boxes) in cell
    for polygon in cell.polygons:
        lnum = (polygon.layers[0],polygon.datatypes[0]) # same as before...

        if not lnum in layerstack.keys():
            continue

        layers[lnum] = [] if not lnum in layers else layers[lnum]
        for poly in polygon.polygons:
            layers[lnum].append((poly, None, False))


    
    
    """
    At this point, "layers" is a Python dictionary structured as follows:

    layers = {
    0 : [ ([[x1, y1], [x2, y2], ...], None, False), ... ]
    1 : [ ... ]
    2 : [ ... ]
    ...
    }

    Each dictionary key is a GDSII layer number (0-255), and the value of the
    dictionary at that key (if it exists; keys were only created for layers with
    geometry) is a list of polygons in that GDSII layer. Each polygon is a 3-tuple
    whose first element is a list of points (2-element lists with x and y
    coordinates), second element is None (for the moment; this will be used later),
    and third element is False (whether the polygon is clockwise; will be updated).
    """

    ########## TRIANGULATION ######################################################

    # An STL file is a list of triangles, so the polygons need to be filled with
    # triangles. This is a surprisingly hard algorithmic problem, especially since
    # there are few limits on what shapes GDSII file polygons can be. So we use the
    # Python triangle library (documentation is at https://rufat.be/triangle/),
    # which is a Python interface to a fast and well-written C library also called
    # triangle (with documentation at https://www.cs.cmu.edu/~quake/triangle.html).

    print('\tTriangulating polygons...')

    # loop through all layers
    for layer_number, polygons in layers.items():

        # but skip layer if it won't be exported
        if not layer_number in layerstack.keys():
            continue

        p = Pool(threads)
        polygons = p.map(triangulate, polygons)

        zmin = layerstack[layer_number]['zmin']
        zmax = layerstack[layer_number]['zmax']
        layername = layerstack[layer_number]['name']

        print("\nProcesing layer " + layername + "\nExtruding polygons and preparing vertices and faces")
        
        ranges = []
        portion = int(len(polygons) / threads)
        positions = []
        indices = []
        
        if portion > 4:
            print(f'Using {threads} threads with ~{portion} polys per thread')
            p = Pool(threads)
            
            for i in range(0, threads - 1):
                ranges.append((polygons[i * portion : i * portion + portion], i))
                #ranges.append((i * portion, i * portion + portion))
            #ranges.append(((threads - 1) * portion, len(polygons)))
            ranges.append((polygons[(threads - 1) * portion : len(polygons)], threads - 1))
            
            mp_res = p.map(extrude, ranges)
            
            print("Merging thread outputs")
            for i in range(0, threads):
                print(f'{i + 1}/{threads}')
                b = len(positions)
                l_positions, l_indices = mp_res[i]
                if len(positions) == 0:
                    positions = l_positions
                else:
                    positions = np.append(positions , l_positions, axis=0)
                for ind in l_indices:
                    ind[0] += b
                    ind[1] += b
                    ind[2] += b
                if len(indices) == 0:
                    indices = l_indices
                else:
                    indices = np.append(indices , l_indices, axis=0)
        else:
            print(f'Workload too small ({portion}), forcing single-threaded processing')
            a, b = extrude((polygons, 0))
            positions = a
            indices = b
        

        indices_binary_blob = indices.astype(np.uint32).flatten().tobytes()
        positions_binary_blob = positions.astype(np.float32).tobytes()
        
        bufferView1 = pygltflib.BufferView()
        bufferView1.buffer = 0
        bufferView1.byteOffset = len(binaryBlob)
        bufferView1.byteLength = len(indices_binary_blob)
        bufferView1.target = pygltflib.ELEMENT_ARRAY_BUFFER
        gltf.bufferViews.append(bufferView1)

        accessor1 = pygltflib.Accessor()
        accessor1.bufferView = len(gltf.bufferViews)-1
        accessor1.byteOffset = 0
        accessor1.componentType = pygltflib.UNSIGNED_INT
        accessor1.type = pygltflib.SCALAR
        accessor1.count = indices.size
        accessor1.max = [int(indices.max())]
        accessor1.min = [int(indices.min())]
        gltf.accessors.append(accessor1)

        binaryBlob = binaryBlob + indices_binary_blob

        bufferView2 = pygltflib.BufferView()
        bufferView2.buffer = 0
        bufferView2.byteOffset = len(binaryBlob)
        bufferView2.byteLength = len(positions_binary_blob)
        bufferView2.target = pygltflib.ARRAY_BUFFER
        gltf.bufferViews.append(bufferView2)

        positions_count = len(positions)
        accessor2 = pygltflib.Accessor()
        accessor2.bufferView =  len(gltf.bufferViews)-1
        accessor2.byteOffset = 0
        accessor2.componentType = pygltflib.FLOAT
        accessor2.count = positions_count
        accessor2.type = pygltflib.VEC3
        accessor2.max = positions.max(axis=0).tolist()
        accessor2.min = positions.min(axis=0).tolist()
        gltf.accessors.append(accessor2)
        
        binaryBlob = binaryBlob + positions_binary_blob
        
        mesh = pygltflib.Mesh()
        mesh_primitive = pygltflib.Primitive()
        mesh_primitive.indices = len(gltf.accessors)-2
        mesh_primitive.attributes.POSITION = len(gltf.accessors)-1

        mesh_primitive.material = list(layerstack).index(layer_number)
        
        mesh.primitives.append(mesh_primitive)
        
        gltf.meshes.append(mesh)
        
        layer_node = pygltflib.Node()
        layer_node.name = layername
        layer_node.mesh = len(gltf.meshes)-1
        gltf.nodes.append(layer_node)
        root_node.children.append(len(gltf.nodes)-1)
        tris_count += len(indices)
        print(f'{len(indices)} tris')
        
print("Saving gltf...")
filename = gdsii_file_path + ".gltf"
        
gltf.set_binary_blob(binaryBlob)
buffer.byteLength = len(binaryBlob)
gltf.convert_buffers(BufferFormat.DATAURI)
        
scene.nodes.append(0)
gltf.scene = 0

gltf.save(filename)
        

print('Done.')
print(f'{tris_count} total tris')
