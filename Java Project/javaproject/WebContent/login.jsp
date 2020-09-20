<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Login Page</title>
    <!-- Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Lato:100,200,300,300i,400&display=swap"
      rel="stylesheet"
    />

    <!-- CSS -->
    <link rel="stylesheet" href="style-login.css" />
  </head>
  <body>
    <form class="row" action="register" method="post">
      <div class="heading">
        <h1>${successmessage}</h1>
        <h1>${message}</h1>
      </div>
		<div align="center"><img src="images/bookstore.png" width="600px" height="200px"/></div>
      <div class="main-login">
        <div class="main-blocks">
          <div class="label">
            <label for="password">Username:</label>
          </div>
          <div class="input">
            <input type="text" name="username" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Password:</label>
          </div>
          <div class="input">
            <input type="text" name="password" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <a href="register.jsp">Register</a>
          </div>
          <div class="input">
            <input type="submit" name="submit" value="Login" />
          </div>
        </div>
      </div>
    </form>
  </body>
</html>
