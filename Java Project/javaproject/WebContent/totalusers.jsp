<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>total Users</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
<h1 align="center">Total Users</h1>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");  
con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/projectfinal","root","pass123");  


PreparedStatement	rr =con.prepareStatement("select * from user");
%><table class="table thead-light">
	 <tr class="text-white bg-dark">
	 		<th>Number</th>
	 		<th>First Name</th>
	 		<th>Last Name</th>
	 		<th>Email Id</th>
	 		<th>Phone Number</th>
	 		<th>Date of Birth</th>
	 </tr><%

ResultSet wrslt=rr.executeQuery();
while(wrslt.next()) {
	%>
	 
 	<tr>
 			<td><%=wrslt.getString(1)%></td>
 			<td><%=wrslt.getString(2)%></td>
 			<td><%=wrslt.getString(3)%></td>
 			<td><%=wrslt.getString(4)%></td>
 			<td><%=wrslt.getString(5)%></td>
 			<td><%=wrslt.getString(6)%></td>
 			
 	</tr>
 

	
<%	
}
 %>
 </table>
</body>
</html>