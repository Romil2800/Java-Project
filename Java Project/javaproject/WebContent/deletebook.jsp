<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Book</title>
</head>
<body>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%
	String id=request.getParameter("id");
	Connection con = null;
	Class.forName("com.mysql.jdbc.Driver");  
	con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/projectfinal","root","pass123");  
	
	PreparedStatement	rr =con.prepareStatement("delete from addbook where id=?");
	rr.setString(1, id);
	rr.executeUpdate();
	request.getRequestDispatcher("book.jsp").forward(request, response);	
	

 %>


</body>
</html>