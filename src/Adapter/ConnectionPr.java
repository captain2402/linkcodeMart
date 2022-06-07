package Adapter;

import java.sql.*;
public class ConnectionPr {
	public Connection getConnection(){		
		Connection con=null;	
		//load drivers
					try {
						
						Class.forName("oracle.jdbc.OracleDriver");
						String url="jdbc:oracle:thin:@localhost:1521:XE";
						String uname="system";
						String pass="system";
					
						//Connection to db
						con=DriverManager.getConnection(url,uname,pass);
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					System.out.println("Connection was made"+con);
				return con;
	}
}
