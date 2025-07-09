import java.io.*;

public class MagTransform {
	public static void main(String[] args) {
		try {
			if(args.length < 3) {
				System.out.println("Usage [move amount] [infile] [outfile]");
				return;
			}
			int moveAmount = Integer.parseInt(args[0]);
			File infile = new File(args[1]);
			File outfile = new File(args[2]);
			BufferedReader br = new BufferedReader(new FileReader(infile));
			BufferedWriter bw = new BufferedWriter(new FileWriter(outfile));
			while(true) {
				String line = br.readLine();
				if(line == null) break;
				if(line.startsWith("rect")) {
					line = line.substring(5);
					String[] parts = line.split(" ");
					int x1 = Integer.parseInt(parts[0]);
					int y1 = Integer.parseInt(parts[1]);
					int x2 = Integer.parseInt(parts[2]);
					int y2 = Integer.parseInt(parts[3]);
					x1 += moveAmount;
					x2 += moveAmount;
					line = "rect " + x1 + " " + y1 + " " + x2 + " " + y2;
				}
				if(line.startsWith("flabel")) {
					String[] parts = line.split(" ");
					String name = parts[parts.length - 1];
					if(!name.equals("VNW") && !name.equals("VPW") && !name.equals("VDD") && !name.equals("VSS")) {
						int numIdx = 2;
						if(parts.length == 14) numIdx = 3;
						int x1 = Integer.parseInt(parts[numIdx]);
						int y1 = Integer.parseInt(parts[numIdx+1]);
						int x2 = Integer.parseInt(parts[numIdx+2]);
						int y2 = Integer.parseInt(parts[numIdx+3]);
						x1 += moveAmount;
						x2 += moveAmount;
						line = "";
						parts[numIdx] = Integer.toString(x1);
						parts[numIdx+1] = Integer.toString(y1);
						parts[numIdx+2] = Integer.toString(x2);
						parts[numIdx+3] = Integer.toString(y2);
						for(int i = 0; i < parts.length; i++) {
							line += parts[i];
							if(i != parts.length - 1) line += " ";
						}
					}
				}
				if(line.startsWith("rlabel")) {

				}
				bw.write(line);
				bw.newLine();
			}
			bw.close();
			br.close();
		}catch(Exception e) {
			e.printStackTrace();
			System.exit(1);
		}
	}
}
