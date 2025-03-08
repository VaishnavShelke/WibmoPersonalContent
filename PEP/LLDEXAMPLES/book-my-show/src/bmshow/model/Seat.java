package bmshow.model;



public class Seat {
	
	private String id;
	private String rowNo;
	private String colNo;
	public Seat(String id, String rowNo, String colNo) {
		super();
		this.id = id;
		this.rowNo = rowNo;
		this.colNo = colNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRowNo() {
		return rowNo;
	}
	public void setRowNo(String rowNo) {
		this.rowNo = rowNo;
	}
	public String getColNo() {
		return colNo;
	}
	public void setColNo(String colNo) {
		this.colNo = colNo;
	}
	@Override
	public String toString() {
		return "Seat [id=" + id + ", rowNo=" + rowNo + ", colNo=" + colNo + "]";
	}
	
	
	
}
