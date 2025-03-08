package bmshow.model;

import java.util.HashMap;

public class Theater {

	private String id = null;
	private String name = null;
	private HashMap<String,Screen> allScreens = null;
	public Theater(String thid,String thname){
		id = thid;
		name = thname;
		allScreens = new HashMap<>();
	}
	
	public void addScreen(Screen sc) throws Exception {
		if(allScreens.containsKey(sc.getScreenId())) {
			throw new Exception("Screen Already Exists");
		}else {
			allScreens.put(sc.getScreenId(), sc);
		}
	}

	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public HashMap<String, Screen> getAllScreens() {
		return allScreens;
	}

	public void setAllScreens(HashMap<String, Screen> allScreens) {
		this.allScreens = allScreens;
	}

	@Override
	public String toString() {
		return "Theater [id=" + id + ", name=" + name + ", allScreens=" + allScreens + "]";
	}
	
	

	
}
