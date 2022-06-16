package Model;

public class BillObject {
	private int n;
	private float total;
	private float finaltotal;
	private float cgst;
	private float sgst;
	
	public BillObject(int n, float total, float finaltotal, float cgst, float sgst) {
	
		this.n = n;
		this.total = total;
		this.finaltotal = finaltotal;
		this.cgst = cgst;
		this.sgst = sgst;
	}

	public int getN() {
		return n;
	}

	public void setN(int n) {
		this.n = n;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public float getFinaltotal() {
		return finaltotal;
	}

	public void setFinaltotal(float finaltotal) {
		this.finaltotal = finaltotal;
	}

	public float getCgst() {
		return cgst;
	}

	public void setCgst(float cgst) {
		this.cgst = cgst;
	}

	public float getSgst() {
		return sgst;
	}

	public void setSgst(float sgst) {
		this.sgst = sgst;
	}

}
