<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>

<body>

<form action="" method="post">
<h1>${successmessage} </h1>
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


PreparedStatement	rr =con.prepareStatement("select * from cart");
%><table class="table thead-light">
	 <tr class="text-white bg-dark">
	 		<th>Id</th>
	 		<th>Title</th>
	 		<th>Author</th>
	 		<th>Price</th>
	 		<th>Image</th>
	 		
	 		<th>Actions</th>
	 </tr><%

ResultSet wrslt=rr.executeQuery();
while(wrslt.next()) {
		String id=wrslt.getString("id");
		String title=wrslt.getString("title");
		String author=wrslt.getString("author");
		String image=wrslt.getString("image");
		String price=wrslt.getString("price");
		String value="delete";
	%>
	 
 	<tr>
 			<td><%=wrslt.getString("id")%></td>
 			<td><%=wrslt.getString("title")%></td>
 			<td><%=wrslt.getString("author")%></td>
 			<td id="price"><%=wrslt.getString("price")%></td>
 			<td><%=wrslt.getString("image")%></td>
 			
 			
 			<td> 
					
					<a href="cart2?id=<%=id%>&title=<%=title%>  &author=<%=author%>   &image=<%=image%>  &price=<%=price%>  &value=<%=value%>">delete</a>
						
						
					</td>
 			
 	</tr>
 

	
<%	
}
 %>
 </table>
 
<%
try
{

	PreparedStatement	rr1 =con.prepareStatement("select * from cart");
	ResultSet wrslt1=rr.executeQuery();
String Countrun="";
while(wrslt1.next()){
Countrun = wrslt1.getString(5);
System.out.println("Total Run :" +Countrun);
%><h1> Total is::::<%=Countrun %></h1><%
}
}
catch (Exception e){
e.printStackTrace();
}
%>
</body>
</html>