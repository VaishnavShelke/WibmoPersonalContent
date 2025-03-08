package bmshow.model;

import java.util.HashMap;
import java.util.HashSet;

public class Screen {

	private HashMap<String,Seat> allSeats = null;
	private String screenName = null;
	private String screenId = null;
	private String theaterId = null;
	public Screen(String sc,String thid,String name){
		screenId = sc;
		theaterId = thid;
		screenName = name;
		allSeats = new HashMap<>();
	}
	public HashMap<String, Seat> getAllSeats() {
		return allSeats;
	}
	public void setAllSeats(HashMap<String, Seat> allSeats) {
		this.allSeats = allSeats;
	}
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public String getScreenId() {
		return screenId;
	}
	public void setScreenId(String screenId) {
		this.screenId = screenId;
	}
	public String getTheaterId() {
		return theaterId;
	}
	public void setTheaterId(String theaterId) {
		this.theaterId = theaterId;
	}
	@Override
	public String toString() {
		return "Screen [allSeats=" + allSeats + ", screenName=" + screenName + ", screenId=" + screenId + ", theaterId="
				+ theaterId + "]";
	}
	
	
	
	
}
