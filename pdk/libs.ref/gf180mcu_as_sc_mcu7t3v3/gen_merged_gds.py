import klayout.db as db
import math
import sys

n = len(sys.argv)

ly = db.Layout()
print(sys.argv[1])
ly.read(sys.argv[1])

for i in range(2, n):
  ly2 = db.Layout()
  print(sys.argv[i])
  ly2.read(sys.argv[i])
  new_cell = ly.create_cell(ly2.top_cell().name)
  new_cell.copy_tree(ly2.top_cell())
  ly2._destroy()

ly.write("gf180mcu_as_sc_mcu7t3v3__merged.gds")
