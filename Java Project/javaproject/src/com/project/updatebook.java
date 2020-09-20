package com.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updatebook")
public class updatebook extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

String title=request.getParameter("title");
String  price=request.getParameter("price");



Connection con;
try {
	con = DbConnection.dbConnection("mysql");
	PreparedStatement stmt  = null;
		stmt =con.prepareStatement("update addbook set price=? where title=?");
		stmt.setString(1, price);
		stmt.setString(2, title);		
		stmt.executeUpdate();
		request.setAttribute("successmessage", "Book price updated!!!");
		request.getRequestDispatcher("book.jsp").forward(request, response);	
} catch (ClassNotFoundException | SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}
	
	
	

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
