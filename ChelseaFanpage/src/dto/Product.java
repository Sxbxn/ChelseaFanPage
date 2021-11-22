package dto;

public class Product {
	private String pID;
	private String pName;
	private int unitPrice;
	private String pDescription;
	private String filename;
	private int quantity;

	public Product() {
		super();
	}

	public Product(String pID, String pName, Integer unitPrice) {
		this.pID = pID;
		this.pName = pName;
		this.unitPrice = unitPrice;
	}
	
	public Product(String pID, String pName, Integer unitPrice, String pDescription, String filename, Integer quantity) {
		this.pID = pID;
		this.pName = pName;
		this.unitPrice = unitPrice;
		this.pDescription = pDescription;
		this.filename = filename;
		this.quantity = quantity;
	}

	public String getpID() {
		return pID;
	}

	public void setpID(String pID) {
		this.pID = pID;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getpDescription() {
		return pDescription;
	}

	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}	
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}