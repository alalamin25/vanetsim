package log.custom;

import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

import vanetsim.scenario.Vehicle;

public class LogVehicleData {
	private Writer writer = null;
	private String outputFileName = "logs/log_output.txt" ;
	
	public LogVehicleData(){
		
	    try {
			writer = new BufferedWriter(new OutputStreamWriter(
			          new FileOutputStream(outputFileName), "utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public void updateLog(){	
		
		try {

		    writer.write("Something\n");
		    writer.write("new line\n");
		} catch (IOException ex) {
		  // report
		} finally {
		   try {writer.close();} catch (Exception ex) {/*ignore*/}
		}
	   System.out.println("File output over");
		
	}
	
	public void writeVehicleInfo(Vehicle [] vehicles){
		
		
		Vehicle vehicle;
		int i, j, k;
		int activeVehicles = 0;
		int travelledVehicles = 0;
		int wifiVehicles = 0;
		long messagesCreated = 0;
		long IDsChanged = 0;
		double messageForwardFailed = 0;
		double travelDistance = 0;
		double travelTime = 0;
		double speed = 0;
		double knownVehicles = 0;
		
		try {
			for(k = 0; k < vehicles.length; ++k){
				
				vehicle = vehicles[k];
				
					writer.write(vehicle.getID()+"");
					writer.write(" ");
					writer.write(vehicle.getTotalTravelDistance()+"");
					writer.write(" ");
					writer.write(vehicle.getTotalTravelTime()+"");
					writer.write("\n");
				} 

		}catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		finally {
			   try {writer.close();} catch (Exception ex) {/*ignore*/}
			}
	

		
		
	}


}
