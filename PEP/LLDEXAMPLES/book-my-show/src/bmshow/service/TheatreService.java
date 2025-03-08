package bmshow.service;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import bmshow.model.Theater;

public class TheatreService {

	static Map<String,Theater> allTheatersMap = new HashMap<>();
	
	public static Theater createTheater(String name) {
		String id = UUID.randomUUID().toString().substring(0,6);
		Theater th = new Theater(id, name);
		allTheatersMap.put(id, th);
		return th;
	}
	
	public static Map<String,Theater> getAllTheaters(){
		return allTheatersMap;
	}
	
	public static Theater getTheater(String id) throws Exception{
		if(allTheatersMap.containsKey(id)) {
			return allTheatersMap.get(id);
		}else {
			throw new Exception("Theater Not Found");
		}
	}
}
