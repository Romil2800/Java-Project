package com.project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

	public static Connection dbConnection(String dbName) throws SQLException, 
	ClassNotFoundException{	
		Connection con = null;
		if(dbName.equalsIgnoreCase("Oracle")){
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			//step2 create  the connection object  
			 con=DriverManager.getConnection(  
			"jdbc:oracle:thin:@localhost:1521:xe","System","1234");  
			return con;
		}
		else{
			Class.forName("com.mysql.jdbc.Driver");  
			 con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/projectfinal","root","pass123");  
			 return con;
		}
		
	}
}
