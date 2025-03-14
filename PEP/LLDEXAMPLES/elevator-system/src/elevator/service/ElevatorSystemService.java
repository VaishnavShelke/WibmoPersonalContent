package elevator.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import elevator.model.Direction;

public class ElevatorSystemService {

	private List<ElevatorCarService> ecarServiceList;
	Set<Direction> unexecutedInstructions = new HashSet<>();
	
	public ElevatorSystemService(ElevatorCarService es) {
		ecarServiceList = new ArrayList<>();
		clock();
	}
	
	public void takeExternalInstructions(Direction instruction) {
		boolean flag = false;
		for(ElevatorCarService es : ecarServiceList) {
			try {
				es.takeExternalCommand(instruction);
				flag = true;
				break;
			}catch (Exception e) {
				System.out.println("Excpetion ::" + e.getMessage());
			}
		}
		if(!flag) {
			unexecutedInstructions.add(instruction);
		}
	}
	
	private void clock() {
		 ScheduledExecutorService executor = Executors.newScheduledThreadPool(1);
	        executor.scheduleAtFixedRate(() -> {
	            // Your function code goes here
	            System.out.println("Elevator Unexecuted Commands at: " + System.currentTimeMillis());
	            System.out.println("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
	            runJobToClearUnexecuteInstructions();
	            System.out.println("YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY");
	        }, 0, 5, TimeUnit.SECONDS);
	}
	
	void runJobToClearUnexecuteInstructions() {
		List<Direction> unex = new ArrayList<>(unexecutedInstructions);
		for(Direction inst : unex) {
			for(ElevatorCarService es : ecarServiceList) {
				try {
					es.takeExternalCommand(inst);
					unexecutedInstructions.remove(inst);
					break;
				}catch (Exception e) {
					
				}
			}
		}
	}
	
	
}

