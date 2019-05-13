<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

      
<%

			

	try {
		  	Class.forName("com.mysql.jdbc.Driver");
	        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms", "root", "root");
	        Statement stm =  conn.createStatement();
			PreparedStatement pst = conn.prepareStatement("Select userName,pw from luser where userName=? and pw=?");

			String username = request.getParameter("username");
			String password = request.getParameter("password");

			pst.setString(1, username);
			pst.setString(2, password);

			ResultSet res = pst.executeQuery();

			if (res.next()) {
				System.out.println("Valid login credentials");
	            session.setAttribute("username", username);
				response.sendRedirect("home.jsp");

			} else {
				response.sendRedirect("register.jsp");

			}
		}
	catch(Exception e){
	System.out.print(e);
	e.printStackTrace();
		}
%>
	
        