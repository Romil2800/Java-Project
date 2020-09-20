package com.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cart2")
public class cart2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con;
		try {
			con = DbConnection.dbConnection("mysql");
			String id=request.getParameter("id");
			String title=request.getParameter("title");
			String author=request.getParameter("author");
			String image=request.getParameter("image");
			String price=request.getParameter("price");
			String submitType=request.getParameter("value");
			UsersTable cd=new UsersTable();
			CartCla cart=new CartCla();
			if(submitType.equals("delete")) {
				cd.deletecart(id, con);
			}
			if(submitType.contentEquals("addtocart")) {
				cart.setId(id);
				cart.setTitle(title);
			cart.setAuthor(author);
			cart.setImage(image);
			cart.setPrice(price);
				cd.addtocart(cart, con);
			}
			
			
			request.getRequestDispatcher("cart.jsp").forward(request, response);	
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
