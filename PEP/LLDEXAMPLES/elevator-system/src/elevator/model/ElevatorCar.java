package elevator.model;

import java.util.LinkedList;

public class ElevatorCar {
	private String id;
	private boolean isActive = false;
	private Direction currentState;
	private Integer maxFloor;
	private Integer minFloor;
	
	
	public ElevatorCar(String id,Integer maxFloor,Integer minFloor) {
		this.id = id;
		this.maxFloor = maxFloor;
		this.minFloor = minFloor;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public boolean isActive() {
		return isActive;
	}


	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}


	public Direction getcurrentState() {
		return currentState;
	}


	public void setcurrentState(Direction currentFloor) {
		this.currentState = currentFloor;
	}


	public Integer getMaxFloor() {
		return maxFloor;
	}


	public void setMaxFloor(Integer maxFloor) {
		this.maxFloor = maxFloor;
	}


	public Integer getMinFloor() {
		return minFloor;
	}


	public void setMinFloor(Integer minFloor) {
		this.minFloor = minFloor;
	}
	
	
}
