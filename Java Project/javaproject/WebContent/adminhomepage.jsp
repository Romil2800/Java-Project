<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Admin</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <style>
 
 .main-add {
 	margin-top: 15rem;
 	display: flex;
 	justify-content: center;
 	align-itmes: center;
 	color: #fff;
 }
 .add{
 	margin: 30px;
 	padding: 80px;
 	height: 200px;
 	width: 300px;
 	text-align: center;
 	font-size: 20px;
 }
 a{
 list-style: none;
 color: #fff;
 }
 a:hover {
  color: #fff;
 }
 .add1 {
 background-color: #99b4ff;
 }
 .add2 {
 background-color: #668fff;
 }
 .add3 {
 background-color: #3369ff;
 }
 .add4 {
 background-color: #04f;
 }
 
 </style>
</head>
<body>
<h1>${message}</h1>
<h1>${successmessage} </h1>
<div class="main-add">
	<div class='add add1'> 
		<a href="adminregister.jsp">Add new admin</a>
	</div>
	<div class='add add2'> 
		<a href="register.jsp">Add new user</a>
	</div>
	<div class='add add3'> 
		<a href="totalusers.jsp">Total Users</a>
	</div>
	<div class='add add4'>
		<a href="book.jsp">Books</a>
	 </div>
</div>
</body>
</html>