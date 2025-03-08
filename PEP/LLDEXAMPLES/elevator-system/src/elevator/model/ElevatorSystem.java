package elevator.model;

import java.util.HashSet;
import java.util.Set;

public class ElevatorSystem {

	Set<ElevatorCar> allCars = null;
	String id;
	
	public ElevatorSystem(String id) {
		allCars = new HashSet<>();
		this.id = id;
	}
	
	public void addCar(ElevatorCar ec) {
		allCars.add(ec);
	}
	
}
