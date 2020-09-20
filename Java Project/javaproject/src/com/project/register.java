package com.project;


import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/register")
public class register extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Connection con;
		
		
	
		
		try {
			UsersTable cd=new UsersTable();
			con = DbConnection.dbConnection("mysql");
			String firstname=request.getParameter("firstName");
			String lastname=request.getParameter("lastName");
			String email=request.getParameter("email");
			String phone=request.getParameter("phone");
			String dob=request.getParameter("dob");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			
			String submitType=request.getParameter("submit");
			RegisterName c=new RegisterName();
			RegisterName ca=new RegisterName();
			
			
			
			
			c=cd.getUSersRecord(username, password,con);
			
			ca=cd.getadminRecord(username, password,con);
			if(submitType.equals("Login")&&(c!=null||ca!=null)&&(c.getFirstname()!=null||ca.getFirstname()!=null)) {
				
				if(username.equals(ca.getUsername())&& password.equals(ca.getPassword())) {
					request.setAttribute("message", ca.getFirstname());						
					request.getRequestDispatcher("adminhomepage.jsp").forward(request, response);	
				}
				else {
					request.setAttribute("message", c.getFirstname());
					request.getRequestDispatcher("welcome.jsp").forward(request, response);		
				}
				
				
				
					
			}
			
			
			
			
			if(submitType.equals("Register")){
				
				String [] recepients =new String[]{request.getParameter("email")};
				String [] bccRecepients =new String[]{"patelromil2800@gmail.com"};
				String subject ="Nathonal Book Store";
				String message ="Dear "+request.getParameter("firstName")+request.getParameter("lastName")+",\n\n"+
						"Thanks for creating an account with us. Acquire some great knowledge with our books of epoch till date!\n"+"Go ahead and log in and enjoy shopping.\n\n\n\n"+"Thank you,\n"+"National Book Store";
				
				new sendEmail().sendMail(recepients, bccRecepients, subject, message);
				
				c.setFirstname(firstname);
				c.setLastname(lastname);
				c.setEmail(email);
				c.setPhone(phone);
				c.setDob(dob);
				c.setUsername(username);
				c.setPassword(password);
				cd.insertRecord(c, con);
				request.setAttribute("message", c.getFirstname());
				request.setAttribute("successmessage", "Registration done, please login to continue!!!");
				request.getRequestDispatcher("welcome.jsp").forward(request, response);
				
			}
			
			
			
			
			if(submitType.equals("ARegister")){
				
				String [] recepients =new String[]{request.getParameter("email")};
				String [] bccRecepients =new String[]{"patelromil2800@gmail.com"};
				String subject ="Nathonal Book Store";
				String message ="Dear "+request.getParameter("firstName ")+request.getParameter("lastName")+",\n\n"+
						"Thanks for being a member with us. Acquire some great knowledge with our books of epoch till date!\n"+"Go ahead and log in.\n\n\n\n"+"Thank you,\n"+"National Book Store";
				
				
				new sendEmail().sendMail(recepients, bccRecepients, subject, message);
				
				c.setFirstname(firstname);
				c.setLastname(lastname);
				c.setEmail(email);
				c.setPhone(phone);
				c.setDob(dob);
				c.setUsername(username);
				c.setPassword(password);
				cd.insertadminRecord(c, con);
				request.setAttribute("message", ca.getFirstname());		
				request.setAttribute("successmessage", "Registration done, please login to continue!!!");
				request.getRequestDispatcher("adminhomepage.jsp").forward(request, response);
				
				
			}
			
			
			else {
				request.setAttribute("message","Data not found, click on register!!");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	
}
