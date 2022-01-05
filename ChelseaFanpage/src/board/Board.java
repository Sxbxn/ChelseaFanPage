package board;

public class Board {
	private int bID;
	private String bContent;
	private String userID;
	private String bDate;
	private int bAvailable;
	
	public int getbID() {
		return bID;
	}
	public void setbID(int bID) {
		this.bID = bID;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getbDate() {
		return bDate;
	}
	public void setbDate(String bDate) {
		this.bDate = bDate;
	}
	public int getbAvailable() {
		return bAvailable;
	}
	public void setbAvailable(int bAvailable) {
		this.bAvailable = bAvailable;
	}
}
