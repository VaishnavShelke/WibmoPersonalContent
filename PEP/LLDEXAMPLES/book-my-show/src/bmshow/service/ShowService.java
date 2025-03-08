package bmshow.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import bmshow.model.Movie;
import bmshow.model.Screen;
import bmshow.model.Seat;
import bmshow.model.Show;
import bmshow.model.Theater;

public class ShowService {

	static Map<String,Show> allShows = new HashMap<>();
	
	
	public static List<Show> getAllShowsForMovie(String movieId){
		List<Show> showList = new ArrayList<>();
		for(Map.Entry<String, Show> ety : allShows.entrySet()) {
			if(ety.getValue().getMovie().getId() == movieId) {
				showList.add(ety.getValue());
			}
		}
		return showList;
	}
	
	public static Show getShow(String showId) {
		return allShows.get(showId);
	}
	
	public static Show createShow(Theater theatre,Screen sc,Movie mv,Timestamp startTime) throws Exception {
		if(checkScreenOverlap(sc,startTime)) {
			throw new Exception("Slot Not Avaliable");
		}else {
			String id = UUID.randomUUID().toString();
			Show show = new Show(id, sc, mv, theatre, startTime);
			allShows.put(id, show);
			return show;
		}
	}

	private static boolean checkScreenOverlap(Screen sc, Timestamp startTime) {
		// TODO Auto-generated method stub
		return false;
	}

	public static void blockSeats(String showId, List<Seat> selectedSeat) throws Exception{
		Show show = allShows.get(showId);
		show.blockseats(selectedSeat);
	}

	public static void unblockSeats(String id, List<Seat> selectedSeats) throws Exception{
		Show show = allShows.get(id);
		show.unblockseats(selectedSeats);
		
	}
	
	public static List<Seat> getAvaliableSeats(String showId) {
		List<Seat> lis = new ArrayList<>();
		Show sh = allShows.get(showId);
		return sh.avaliableSeats();
	}
	
	
}
