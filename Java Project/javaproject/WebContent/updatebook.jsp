<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Book</title>
    <link rel="stylesheet" href="style-login.css" />
</head>
<body>
<form class="row"action="updatebook" method="post">

<%
String id=request.getParameter("id");
String title=request.getParameter("title");
String price=request.getParameter("price");

%>






 <div class="heading">
        <h1>Update Book</h1>
      </div>

      <div class="main-login">
        <div class="main-blocks">
          <div class="label">
            <label for="password">Book title:</label>
          </div>
          <div class="input">
            <input type="text" value="<%=title%>" name="title" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Book Price:</label>
          </div>
          <div class="input">
            <input type="text"  value="<%=price%>"  name="price" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <a href="register.jsp">Register</a>
          </div>
          <div class="input">
            <input type="submit" name="submit" value="Update">
          </div>
        </div>
      </div>

</form>

</body>
</html>