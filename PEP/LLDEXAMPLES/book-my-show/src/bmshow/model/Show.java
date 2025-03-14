package bmshow.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Show {

	String id;
	Screen screen;
	Movie movie;
	Theater theatre;
	Timestamp startTime;
	Set<Seat> unavaliableSeats;
	
	
	

	public Show(String id, Screen screen, Movie movie, Theater theatre, Timestamp startTime) {
		super();
		this.id = id;
		this.screen = screen;
		this.movie = movie;
		this.theatre = theatre;
		this.startTime = startTime;
		unavaliableSeats = new HashSet<>();
	}
	
	public List<Seat> avaliableSeats() {
		List<Seat> avseat = new ArrayList<>();
		for(Map.Entry<String, Seat> seatEty : screen.getAllSeats().entrySet()) {
			Seat st = seatEty.getValue();
			if(!unavaliableSeats.contains(st)) {
				avseat.add(st);
			}
		}
		return avseat;
	}

	public synchronized void blockseats(List<Seat> selected) throws Exception{
		for(Seat seat : selected) {
			if(unavaliableSeats.contains(seat)) {
				throw new Exception("Seat Not Avaliable");
			}
		}
		for(Seat seat : selected) {
			unavaliableSeats.add(seat);
		}
	}
	
	public synchronized void unblockseats(List<Seat> selected) throws Exception{
		
		for(Seat seat : selected) {
			unavaliableSeats.remove(seat);
		}
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Screen getScreen() {
		return screen;
	}

	public void setScreen(Screen screen) {
		this.screen = screen;
	}

	public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	public Theater getTheatre() {
		return theatre;
	}

	public void setTheatre(Theater theatre) {
		this.theatre = theatre;
	}

	@Override
	public String toString() {
		return "Show [id=" + id + ", screen=" + screen + ", movie=" + movie + ", theatre=" + theatre + ", startTime="
				+ startTime + ", unavaliableSeats=" + unavaliableSeats + "]";
	}

	
	
	
	
}
