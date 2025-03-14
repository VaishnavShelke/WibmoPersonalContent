package bmshow.service;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import bmshow.model.Movie;

public class MovieService {
	static Map<String,Movie> allMoviesMap = new HashMap<>();
	
	public static Movie createMovie(String title) {
		String id = UUID.randomUUID().toString().substring(0,6);
		Movie movie = new Movie(id,title);
		allMoviesMap.put(id, movie);
		return movie;
	}
	
	public static Map<String,Movie> getallMoveis(){
		return allMoviesMap;
	}
	
	public static Movie getMovie(String id) throws Exception {
		if(allMoviesMap.containsKey(id)) {
			return allMoviesMap.get(id);
		}else {
			throw new Exception("Movie Not Found");
		}
	}
}
