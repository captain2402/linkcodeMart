package Model;

public class Customer {
	private String emailId;
	private int mobileNo;
	private String cName;
	private String custAdd;
	public Customer(String emailId, int mobileNo, String cName, String custAdd) {
		super();
		this.emailId = emailId;
		this.mobileNo = mobileNo;
		this.cName = cName;
		this.custAdd = custAdd;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public int getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(int mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getCustAdd() {
		return custAdd;
	}
	public void setCustAdd(String custAdd) {
		this.custAdd = custAdd;
	}
	
}
