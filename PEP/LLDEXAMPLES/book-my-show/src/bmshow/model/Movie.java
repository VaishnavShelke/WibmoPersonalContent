package bmshow.model;

public class Movie {

	String id;
	String title;
	public Movie(String id, String title) {
		super();
		this.id = id;
		this.title = title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	
}
