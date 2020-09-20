<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Add Book</title>

    <!-- Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Lato:100,200,300,300i,400&display=swap"
      rel="stylesheet"
    />

    <!-- CSS -->
    <link rel="stylesheet" href="style-addbook.css" />
  </head>
  <body>
    <form action="com.project.bookServlet" method="post">
      <div class="main-login row">
        <div class="main-blocks">
          <div class="label">
            <label for="password">Book Id</label>
          </div>
          <div class="input">
            <input type="number" name="bookid" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Book title</label>
          </div>
          <div class="input">
            <input type="text" name="title" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Book Author</label>
          </div>
          <div class="input">
            <input type="text" name="author" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Book Description</label>
          </div>
          <div class="input">
            <textarea type="text" name="desc" rows="5" cols="50"></textarea>
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Book Image</label>
          </div>
          <div class="input">
            <input type="file" name="image" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Book Price</label>
          </div>
          <div class="input">
            <input type="number" name="price" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">Publish Date</label>
          </div>
          <div class="input">
            <input type="date" name="pdate" />
          </div>
        </div>
        <div class="main-blocks">
          <div class="label">
            <label for="password">ISBN</label>
          </div>
          <div class="input">
            <input type="number" name="isbn" />
          </div>
        </div>

        <div class="register">
          <input type="submit" name="submit" value="Add Book" />
        </div>
      </div>
    </form>
  </body>
</html>