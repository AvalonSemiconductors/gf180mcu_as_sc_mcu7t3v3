import java.io.*;
import java.util.*;

public class GenMaskhints {
	private GenMaskhints() {}

	public static void main(String[] args) {
		try {
			for(int i = 0; i < args.length; i++) {
				List<String> lines = new ArrayList<String>(32);
				BufferedReader br = new BufferedReader(new FileReader(new File(args[i])));
				int[] nwellDims = new int[4];
				int[] pwellDims = new int[4];
				boolean nextIsNwell = false;
				boolean nextIsPwell = false;
				boolean scale5 = false;
				while(true) {
					String l = br.readLine();
					if(l == null) break;
					lines.add(l);
					if(nextIsNwell || nextIsPwell) {
						String[] parts = l.split(" ");
						int a = Integer.parseInt(parts[1]);
						int b = Integer.parseInt(parts[2]);
						int c = Integer.parseInt(parts[3]);
						int d = Integer.parseInt(parts[4]);
						if(nextIsNwell) {
							nwellDims[0] = a;
							nwellDims[1] = b;
							nwellDims[2] = c;
							nwellDims[3] = d;
						}
						if(nextIsPwell) {
							pwellDims[0] = a;
							pwellDims[1] = b;
							pwellDims[2] = c;
							pwellDims[3] = d;
						}
						nextIsNwell = nextIsPwell = false;
					}
					if(l.contains("<< nwell >>")) nextIsNwell = true;
					if(l.contains("<< pwell >>")) nextIsPwell = true;
					if(l.startsWith("magscale ")) {
						String[] parts = l.split(" ");
						scale5 = parts[2].equals("5");
					}
				}
				br.close();
				int offset = 70;
				if(scale5) offset /= 2;
				nwellDims[0] += offset;
				nwellDims[2] -= offset;
				pwellDims[0] += offset;
				pwellDims[2] -= offset;
				offset = 40;
				if(scale5) offset /= 2;
				nwellDims[3] -= offset;
				pwellDims[1] += offset;
				BufferedWriter bw = new BufferedWriter(new FileWriter(new File(args[i])));
				for(int j = 0; j < lines.size(); j++) {
					String line = lines.get(j);
					if(line.startsWith("string MASKHINTS_NPLUS")) {
						line = String.format("string MASKHINTS_NPLUS %d %d %d %d", pwellDims[0], pwellDims[1], pwellDims[2], pwellDims[3]);
					}
					if(line.startsWith("string MASKHINTS_PPLUS")) {
						line = String.format("string MASKHINTS_PPLUS %d %d %d %d", nwellDims[0], nwellDims[1], nwellDims[2], nwellDims[3]);
					}
					bw.write(line);
					bw.newLine();
				}
				bw.close();
			}
		}catch(Exception e) {
			System.err.println("Error:");
			e.printStackTrace();
			System.exit(1);
		}
	}
}
