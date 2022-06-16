package Controller;

import Model.Admin;
import Model.Customer;
import Model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Adapter.ConnectionPr;
public class ProductDao {

	ConnectionPr c=new ConnectionPr();
	Connection con=c.getConnection();
	PreparedStatement pstate;
	
	public void Billingdb(List<Product> b){
		for(Product bill:b){
			try {
				System.out.println("The connection was at :"+con);
				pstate=con.prepareStatement
						("Insert into plist values(?,?,?,?)");
				pstate.setInt(1,bill.getpId());
				pstate.setString(2, bill.getpName());
				pstate.setFloat(3,bill.getpPrice());
				pstate.setString(4, bill.getCategory());
				int i=pstate.executeUpdate();
				if(i>0){
					System.out.println("Executed successfully");
				}
				else{
					System.out.println("Not Executed");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
	}
	
	public List<Product> ReturnBill(){
		List<Product> prod=new ArrayList<Product>();
		try {
			pstate = con.prepareStatement("Select * from plist");
			ResultSet res=pstate.executeQuery();
			ResultSetMetaData rsmd=res.getMetaData();
			int ColumnNumbers=rsmd.getColumnCount();
			while(res.next()){
					int  pId=res.getInt(1);
					String pName=res.getString(2);
					float pPrice=res.getFloat(3);
					String pcat=res.getString(4);
					Product pr=new Product(pId, pName, pPrice,pcat );
					prod.add(pr);
				}
					} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prod;
	}
	
	public boolean clearProduct(String pid){
		boolean status=false;
		try {
			pstate=con.prepareStatement("Delete from plist WHERE pId= ?");
			pstate.setString(1, pid);
			int i=pstate.executeUpdate();
			if(i>0){
				System.out.println("Selected Product is deleted");
				status= true;
			}
			else {
				System.out.println("Selected product not deleted");
				status= false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	public boolean updateProduct(String id,String Price){
		try {
			pstate=con.prepareStatement("Update plist SET pPrice=? WHERE pId= ?");
			pstate.setString(1, Price);
			pstate.setString(2, id);
			int i=pstate.executeUpdate();
			if(i>0){
				System.out.println("product updated");
			}
			else {
				System.out.println("product not updated");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean verify( Admin ad){
		boolean status=false;
		try {
			pstate = con.prepareStatement("Select * from admin WHERE Aname = ? and Apass= ? ");
			pstate.setString(1, ad.getName());
			pstate.setString(2, ad.getPass());		
			System.out.println(pstate);
			ResultSet res=pstate.executeQuery();
			status = res.next();
			System.out.println("Status here :"+status);
			return status;
					} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	public List<Customer> customerDetails(String MobileNo) {
		List<Customer> cus=new ArrayList<Customer>();
		try {
			pstate=con.prepareStatement("Select * from cust WHERE mobile= ?");
			pstate.setString(1,MobileNo);
			ResultSet res=pstate.executeQuery();
			ResultSetMetaData rsmd=res.getMetaData();
			int ColumnNumbers=rsmd.getColumnCount();
			while(res.next()){
					String email=res.getString(1);
					int mobileNo=res.getInt(2);
					String Name=res.getString(3);
					String address=res.getString(4);
					Customer cust=new Customer(email, mobileNo, Name, address);
					cus.add(cust);
				}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cus;
	}

		public void ProductLList(String BillId,List<Product> plist) {
			try {
				PreparedStatement pstate=
				con.prepareStatement("Create table ? (pId  number(6) FOREIGN KEY references plist(pId)");
				pstate.setString(1,BillId);
				for(Product p :plist) {
					pstate.setInt(2, p.getpId());
					int i=pstate.executeUpdate();
					if(i>0){
						System.out.println("product list created");
					}
					else {
						System.out.println("product list not created");
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
		}
}
/*
create table plist(
pId INT PRIMARY KEY,
pName varchar2(40),
pPrice FLOAT,
pCategory varchar2(40),
pQty number(6),
pSold number(6),
 ); 
*/
/*
 insert into plist values(123,'Book','School',2300,400);
insert into plist values(124,'Pencil','Food',1300,500);
insert into plist values(125,'Pen','School',1700,900);
 */

/*
  create table admin(
 Aname varchar2(40),
 Apass varchar2(40)
 );
*/		
//insert into admin values('User1','123');

	/*create table cust(
	email varchar2(40) ,
	mobile number(10) PRIMAry KEY,
	name varchar2(40),
	address varchaR2(40)
	);
	*/

//insert into cust values('mad@gmail.com',1234566789,'Mahesh','Pune');