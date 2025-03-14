package bmshow.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import bmshow.model.Booking;
import bmshow.model.Seat;
import bmshow.model.Show;

public class BookingService {
	
	static Map<String,Booking> allBookingsMap = new HashMap<>();
	
	public static Booking createBooking(Show show,List<Seat> selectedSeat) throws Exception{
		
		ShowService.blockSeats(show.getId(),selectedSeat);
		String id = UUID.randomUUID().toString();
		Booking booking  = new Booking(id, show, selectedSeat, show.getTheatre());
		allBookingsMap.put(id, booking);
		return booking;
	}
	
	public static void  removeBooking(String id) throws Exception {
		Booking booking  = allBookingsMap.get(id);
		Show show = booking.getShow();
		ShowService.unblockSeats(show.getId(),booking.getSelectedSeats());
		allBookingsMap.remove(id);
	}
	
	public static Map<String,Booking> getAllBookings(){
		return allBookingsMap;
	}

}
