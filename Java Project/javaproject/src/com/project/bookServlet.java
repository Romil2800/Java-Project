package com.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/com.project.bookServlet")
public class bookServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Connection con;
		UsersTable cd=new UsersTable();
		try {
			
			con = DbConnection.dbConnection("mysql");
			int bookid=Integer.parseInt(request.getParameter("bookid"));
			String title=request.getParameter("title");
			String author=request.getParameter("author");
			String desc=request.getParameter("desc");
			String image=request.getParameter("image");
			int price=Integer.parseInt(request.getParameter("price"));
			String pdate=request.getParameter("pdate");
			String isbn=request.getParameter("isbn");
			String submitType=request.getParameter("submit");
			System.out.println(bookid);
			Book book=new Book();
			
			if(submitType.equals("Add Book")) {
			
			book.setBookid(bookid);
			book.setTitle(title);
			book.setAuthor(author);
			book.setDesc(desc);
			book.setImage("images/"+image);
			book.setPrice(price);
			book.setPublishdate(pdate);
			book.setIsbn(isbn);
			
			cd.addBook(book, con);
			request.setAttribute("successmessage", "book successfully added!!!");
			request.getRequestDispatcher("book.jsp").forward(request, response);
			}
		System.out.println(title+price);

			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);	
		
	}
	
	protected void cart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	

	
}
