package bmshow.model;

import java.util.List;

public class Booking {

	String id;
	Show show;
	List<Seat> selectedSeats;
	Theater theater;
	public Booking(String id, Show show, List<Seat> selectedSeats, Theater theater) {
		super();
		this.id = id;
		this.show = show;
		this.selectedSeats = selectedSeats;
		this.theater = theater;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Show getShow() {
		return show;
	}
	public void setShow(Show show) {
		this.show = show;
	}
	public List<Seat> getSelectedSeats() {
		return selectedSeats;
	}
	public void setSelectedSeats(List<Seat> selectedSeats) {
		this.selectedSeats = selectedSeats;
	}
	public Theater getTheater() {
		return theater;
	}
	public void setTheater(Theater theater) {
		this.theater = theater;
	}
	
	
	
}
