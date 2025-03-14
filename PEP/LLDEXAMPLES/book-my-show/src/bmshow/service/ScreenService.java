package bmshow.service;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import bmshow.model.Screen;
import bmshow.model.Theater;

public class ScreenService {
	static Map<String,Screen> allScreenMap = new HashMap<>();
	
	public static Screen createScreen(Theater theater,String screenName) throws Exception {
		String id = UUID.randomUUID().toString().substring(0,3);
		Screen sc = new Screen(id, theater.getId(), screenName);
		theater.addScreen(sc);
		allScreenMap.put(id, sc);
		return sc;
	}
}
