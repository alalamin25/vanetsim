package log.custom;

import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.lang.reflect.Array;
import java.util.ArrayList;

import vanetsim.map.Map;
import vanetsim.map.Region;
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
	
	
	/**
	 * This Method is a helper method to get all the vehicles active or inactive in the map
	 * @returns an arraylist of Vehicles
	 */
	
	public ArrayList<Vehicle> getAllVehicle(){
		
		ArrayList<Vehicle> allVehicles = new ArrayList<>();
		
		
		Region[][] regions = Map.getInstance().getRegions();
		Vehicle[] vehicles;
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
		for(i = 0; i < regions.length; ++i){
			for(j = 0; j < regions[i].length; ++j){
				vehicles = regions[i][j].getVehicleArray();	
				
				
				for(k = 0; k < vehicles.length; ++k){
					vehicle = vehicles[k];
					allVehicles.add(vehicle);					

				}
			}
		}
		
		System.out.println("\n Total " + allVehicles.size() + " Vehicles are on the Map");
        return allVehicles;
			
		
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
	
	public void writeVehicleInfo(ArrayList<Vehicle> vehicles){
		
		
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
			for(k = 0; k < vehicles.size(); ++k){
				
				vehicle = vehicles.get(k);
				
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
    
	public void logAllVehicleInfo(){
		
		LogVehicleData logVehicleData = new LogVehicleData();
		System.out.println("\n\n ****Going to call VehicleInfo\n");
		ArrayList<Vehicle> vehiclesList = logVehicleData.getAllVehicle();
		logVehicleData.writeVehicleInfo(vehiclesList);	
		
	}

}
