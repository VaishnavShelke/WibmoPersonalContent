package bmshow;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;

import bmshow.model.Booking;
import bmshow.model.Movie;
import bmshow.model.Screen;
import bmshow.model.Seat;
import bmshow.model.Show;
import bmshow.model.Theater;
import bmshow.service.BookingService;
import bmshow.service.MovieService;
import bmshow.service.ScreenService;
import bmshow.service.SeatService;
import bmshow.service.ShowService;
import bmshow.service.TheatreService;

public class TestService {

	public static void main(String[] args) {
		try {
			Theater th1 = TheatreService.createTheater("PVR Thanisandra");
			Theater th2 = TheatreService.createTheater("INOX Lido");
			
			Screen sc11 = ScreenService.createScreen(th1, "Floor 1 2");
			List<Seat> allseats = Arrays.asList(new Seat("F25", "F", "25"),new Seat("G05", "G", "05"),new Seat("K25", "K", "25"));
			SeatService.addSeatsToScreen(sc11, allseats);
			
			Movie mv = MovieService.createMovie("Finding Nemo");
			Show show = ShowService.createShow(th1, sc11,mv , new Timestamp(System.currentTimeMillis()));
			
			
			
			Booking b1 = BookingService.createBooking(show, Arrays.asList(allseats.get(0),allseats.get(1)));
			
			System.out.println(ShowService.getAvaliableSeats(show.getId()));
			
			BookingService.removeBooking(b1.getId());
			
			System.out.println(ShowService.getAvaliableSeats(show.getId()));
			
			System.out.println(ShowService.getAllShowsForMovie(mv.getId()));
			
			System.out.println(TheatreService.getAllTheaters());
		}catch (Exception e) {
			System.out.println("Exception + :: "+ e.getMessage());
		}
		
	}
}
