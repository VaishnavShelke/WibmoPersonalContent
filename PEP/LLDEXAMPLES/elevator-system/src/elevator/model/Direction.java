package elevator.model;

public class Direction {
	private Integer floor;
	private DirectionsEnum dir;
	
	
	public Direction(Integer floor, DirectionsEnum dir) {
		super();
		this.floor = floor;
		this.dir = dir;
	}
	public Integer getFloor() {
		return floor;
	}
	public void setFloor(Integer floor) {
		this.floor = floor;
	}
	public DirectionsEnum getDir() {
		return dir;
	}
	public void setDir(DirectionsEnum dir) {
		this.dir = dir;
	}
	
	
}
