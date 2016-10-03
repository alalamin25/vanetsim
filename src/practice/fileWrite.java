package practice;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;

public class fileWrite {

	public static void main(String[] args) {
		Writer writer = null;

		try {
		    writer = new BufferedWriter(new OutputStreamWriter(
		          new FileOutputStream("logs/log_output.txt"), "utf-8"));
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
