<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>National Book Store</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
<h1>${message}</h1>
<h1>${successmessage} </h1>
<a href="login.jsp">Log out</a>
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
%>
<table class="table thead-light">
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
		String value="addtocart";
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
					<!-- <a href="bookServlet?id=$"{<%=id%>$action="ordernow"}">Add to cart</a>
					<a href="deletebook.jsp?id=<%=id%>">Delete</a> -->
					

				 	<a href="cart2?id=<%=id%> &title=<%=title%>  &author=<%=author%>   &image=<%=image%>  &price=<%=price%>   &value=<%=value%>">ADD to Cart</a>
						
					</td>
 			
 	</tr>
 

	
<%	
}
 %>
 </table>
</body>
</html>