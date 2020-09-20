<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
<form action="bookservlet" method="post">
<h1>${successmessage} </h1>
<a href="addbook.jsp">Add new book</a>
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


PreparedStatement	rr =con.prepareStatement("select * from addbook");
%><table class="table thead-light">
	 <tr class="text-white bg-dark">
	 		<th>Id</th>
	 		<th>Title</th>
	 		<th>Author</th>
	 		<th>Description</th>
	 		<th>Price</th>
	 		<th>Image</th>
	 		<th>Publish Date</th>
	 		<th>ISBN</th>
	 		<th>Actions</th>
	 </tr><%

ResultSet wrslt=rr.executeQuery();
while(wrslt.next()) {
		int id=Integer.parseInt(wrslt.getString("id"));
		String title=wrslt.getString("title");
		String author=wrslt.getString("author");
		String image=wrslt.getString("image");
		int price=Integer.parseInt(wrslt.getString("price"));
	%>
	 
 	<tr>
 			<td><%=wrslt.getString("id")%></td>
 			<td><%=wrslt.getString("title")%></td>
 			<td><%=wrslt.getString("author")%></td>
 			<td><%=wrslt.getString("description")%></td>
 			<td><%=wrslt.getString("price")%></td>
 			<td><%=wrslt.getString("image")%></td>
 			<td><%=wrslt.getString("publishdate")%></td>
 			<td><%=wrslt.getString("isbn")%></td>
 			<td> 
					<a href="updatebook.jsp?id=<%=id%>  &title=<%=title%>  &price=<%=price%>">Edit</a>
					
					
					<a href="deletebook.jsp?id=<%=id%> ">Delete</a>
						
					</td>
 			
 	</tr>
 

	
<%	
}
 %>
 </table>
 </form>
</body>
</html>