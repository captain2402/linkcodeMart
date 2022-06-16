package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Adapter.ConnectionPr;
import Model.BillObject;
import Model.Product;

public class CartDao {
	ConnectionPr c=new ConnectionPr();
	Connection con=c.getConnection();
	PreparedStatement pstate;
	public void Cartdb(List<Product> b){
		
		for(Product bill:b){
			try {
				System.out.println("The connection was at :"+con);
				pstate=con.prepareStatement
						("Insert into cart values(?,?,?,?)");
				pstate.setInt(1,bill.getpId());
				pstate.setString(2, bill.getpName());
				pstate.setFloat(3,bill.getpPrice());
				pstate.setString(4, bill.getQuantity());
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
	
	public List<Product> CartProduct(){
		List<Product> prod=new ArrayList<Product>();
		try {
			pstate = con.prepareStatement("Select * from cart");
			ResultSet res=pstate.executeQuery();
			ResultSetMetaData rsmd=res.getMetaData();
			while(res.next()){
					int  pId=res.getInt(1);
					String pName=res.getString(2);
					float pPrice=res.getFloat(3);
					String pQty=res.getString(4);
				
		                
					Product pr=new Product(pId, pName, pPrice, pQty);
					prod.add(pr);
				}
					} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prod;
	}
	
		public boolean deleteProduct(String name,String pid){
			Integer id=new Integer(pid);
			boolean status=false;
			try {
				pstate=con.prepareStatement("Delete from plist WHERE pId= ?");
				pstate.setInt(1, id);
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
		
		public BillObject cartBill(){
			float total=0;
			float cgst,sgst,finaltotal;
			
			List<Product> pro=CartProduct();
			
			for(Product p:pro)
			{
				total=total+p.getpPrice();
			}
			cgst=(float) (0.06*total);
			sgst=(float) (0.06*total);
			finaltotal=cgst+sgst+total;
			BillObject b=new BillObject(11, total, finaltotal, cgst, sgst);
			return b;
			
		}
}
/*
create table cart(
		pid number(5),
		pname varchar2(40),
		price float,
		quantity number(4));
	
*/
/*
insert into cart values(123,'Book',2300,4);
insert into cart values(124,'Pencil',1300,5);
insert into cart values(125,'Pen',1700,9);
*/