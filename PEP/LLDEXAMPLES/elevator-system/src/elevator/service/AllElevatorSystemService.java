package elevator.service;

import java.util.HashMap;

import elevator.model.Direction;
import elevator.model.ElevatorSystem;

public class AllElevatorSystemService {

	private static HashMap<String,ElevatorSystemService> allElevatorSystem = null;
	
	{
		allElevatorSystem = new HashMap<>();
	}
	
	public static void addElevatorSystem(String id,ElevatorSystemService es) {
		allElevatorSystem.put(id,es);
	}
	
	public static void externalCommand(String esId,Direction instruction) {
		ElevatorSystemService es = allElevatorSystem.get(esId);
		
		
	}
}
