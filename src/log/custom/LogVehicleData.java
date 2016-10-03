package log.custom;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;

public class LogVehicleData {
	private Writer writer = null;
	private String outputFileName = "logs/log_output.txt" ;
	
	public void updateLog(){	
		
		try {
		    writer = new BufferedWriter(new OutputStreamWriter(
		          new FileOutputStream(outputFileName), "utf-8"));
		    writer.write("Something\n");
		    writer.write("new line\n");
		} catch (IOException ex) {
		  // report
		} finally {
		   try {writer.close();} catch (Exception ex) {/*ignore*/}
		}
	   System.out.println("File output over");
		
	}
	
	


}
