package bmshow.service;

import java.util.List;
import java.util.UUID;

import bmshow.model.Screen;
import bmshow.model.Seat;

public class SeatService {

	
	public static void addSeatsToScreen(Screen sc,List<Seat> seats) {
		for(Seat seat : seats) {
			sc.getAllSeats().put(seat.getId(), seat);
		}
	}
}
