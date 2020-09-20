package com.project;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UsersTable {
	static PreparedStatement ps;
	
	public void insertRecord(RegisterName c,Connection conn) {
		// TODO Auto-generated method stub
		PreparedStatement stmt  = null;
		try {
			stmt =conn.prepareStatement("insert into user (firstname,lastname,email,phone,dob,username,password)"
					+ "values(?,?,?,?,?,?,?)");
			stmt.setString(1, c.getFirstname());
			stmt.setString(2, c.getLastname());
			stmt.setString(3, c.getEmail());
			stmt.setString(4, c.getPhone());
			stmt.setString(5, c.getDob());
			stmt.setString(6, c.getUsername());
			stmt.setString(7, c.getPassword());
			
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try{
			stmt.close();
		} catch(SQLException e){
			e.printStackTrace();
			}
		}
	}
	
	public void addBook(Book c,Connection conn) {
		// TODO Auto-generated method stub
		PreparedStatement stmt  = null;
		try {
			stmt =conn.prepareStatement("insert into addbook (title,author,description,image,price,publishdate,ISBN,id)"
					+ "values(?,?,?,?,?,?,?,?)");
			stmt.setString(1, c.getTitle());
			stmt.setString(2,  c.getAuthor());
			stmt.setString(3, c.getDesc());
			stmt.setString(4,  c.getImage());
			
			stmt.setLong(5,  c.getPrice());
			stmt.setString(6,  c.getPublishdate());
			stmt.setString(7,  c.getIsbn());
			stmt.setLong(8,  c.getBookid());
			
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try{
			stmt.close();
		} catch(SQLException e){
			e.printStackTrace();
			}
		}
	}
	
	public void insertadminRecord(RegisterName c,Connection conn) {
		// TODO Auto-generated method stub
		PreparedStatement stmt  = null;
		try {
			stmt =conn.prepareStatement("insert into adminregister (firstname,lastname,email,phone,dob,username,password)"
					+ "values(?,?,?,?,?,?,?)");
			stmt.setString(1, c.getFirstname());
			stmt.setString(2, c.getLastname());
			stmt.setString(3, c.getEmail());
			stmt.setString(4, c.getPhone());
			stmt.setString(5, c.getDob());
			stmt.setString(6, c.getUsername());
			stmt.setString(7, c.getPassword());
			
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try{
			stmt.close();
		} catch(SQLException e){
			e.printStackTrace();
			}
		}
	}
	
	
	public void addtocart(CartCla c,Connection conn) {
		// TODO Auto-generated method stub
		PreparedStatement stmt  = null;
		try {
			stmt =conn.prepareStatement("insert into cart (id,title,author,image,price)"
					+ "values(?,?,?,?,?)");
			stmt.setString(1,c.getId());
			stmt.setString(2, c.getTitle());
			stmt.setString(3, c.getAuthor());
			stmt.setString(4,c.getImage());
			stmt.setString(5,c.getPrice());
			
			
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try{
			stmt.close();
		} catch(SQLException e){
			e.printStackTrace();
			}
		}
		
	}
	
	
//		public static void updateRecord(String username, String password, 
//				 Connection conn) {
//			PreparedStatement stmt  = null;
//			try {
//				stmt =conn.prepareStatement("update register set password =? where username =?");
//				stmt.setString(1, password);
//				stmt.setString(2, username);		
//				stmt.executeUpdate();
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			finally{
//				try{
//				stmt.close();
//			} catch(SQLException e){
//				e.printStackTrace();
//				}
//			
//			
//		}
//}

	
	public static void deletecart(String id, 
				 Connection conn) {
			PreparedStatement stmt  = null;
			try {
				stmt =conn.prepareStatement("delete from cart where id =?");
				stmt.setString(1, id);		
				stmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				try{
				stmt.close();
			} catch(SQLException e){
				e.printStackTrace();
				}

		}
}
		
		public static RegisterName getUSersRecord(String username,String password,
				 Connection conn) {
			RegisterName c=new RegisterName();
			try {
				
				ps=conn.prepareStatement("select * from user where username=? and password=?");
				ps.setString(1, username);
				ps.setString(2, password);
				
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					c.setUsername(rs.getString(6));
					c.setPassword(rs.getString(7));
					c.setFirstname(rs.getString(2));
				}
			}catch(Exception e) {
				System.out.println(e);
			}
			return c;
}
		public static RegisterName getadminRecord(String username,String password,
				 Connection conn) {
			RegisterName ca=new RegisterName();
			try {
				
				ps=conn.prepareStatement("select * from adminregister where username=? and password=?");
				ps.setString(1, username);
				ps.setString(2, password);
				
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					ca.setUsername(rs.getString(6));
					ca.setPassword(rs.getString(7));
					ca.setFirstname(rs.getString(1));
				}
			}catch(Exception e) {
				System.out.println(e);
			}
			return ca;
}
		
		
		
		
		
		
		
		
		
		
}
