package Model;

public class Product {
	private int pId;
	private String pName;
	private float pPrice;
	private String category;
	
	public Product(int pId, String pName, float pPrice, String category) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pPrice = pPrice;
		this.category = category;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public float getpPrice() {
		return pPrice;
	}

	public void setpPrice(float pPrice) {
		this.pPrice = pPrice;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
}
