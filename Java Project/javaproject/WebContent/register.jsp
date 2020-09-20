<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Registration</title>
    <!-- Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Lato:100,200,300,300i,400&display=swap"
      rel="stylesheet"
    />

    <!-- CSS -->
    <link rel="stylesheet" href="style-register.css" />
  </head>
  <body>
    <form action="register" method="post">
      <h1>Registration</h1>
      <div class="main-login row">
        <div class="main-blocks">
          <div class="label">
            <label for="password">FirstName</label>
          </div>
          <div class="input">
            <input type="text" name="firstName" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">LastName</label>
          </div>
          <div class="input">
            <input type="text" name="lastName" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Email</label>
          </div>
          <div class="input">
            <input type="email" name="email" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Phone</label>
          </div>
          <div class="input">
            <input type="phone" name="phone" max="10" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Date Of Birth</label>
          </div>
          <div class="input">
            <input type="date" name="dob" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Username</label>
          </div>
          <div class="input">
            <input type="text" name="username" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Password</label>
          </div>
          <div class="input">
            <input type="text" name="password" />
          </div>
        </div>

        <div class="register">
          <input type="submit" name="submit" value="Register" />
        </div>
      </div>
    </form>
  </body>
</html>
