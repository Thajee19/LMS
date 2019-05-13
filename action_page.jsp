<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	

		<% 
		try{
			        //String username = session.getAttribute("username").toString();
	          		String id = request.getParameter("id");
	                String bookname = request.getParameter("book");
	                String Author = request.getParameter("Author");
	                String no = request.getParameter("no");
	                String idate = request.getParameter("idate");
	                String edate = request.getParameter("edate");
	                
	                    Class.forName("com.mysql.jdbc.Driver");
	                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms", "root", "root");
	                    Statement stm =  conn.createStatement();
	                   
	                   int i=stm.executeUpdate("insert into reserve(userId,bookname,author,issueDate,deadLine,isbn)values('"+id+"','"+bookname+"','"+Author+"','"+idate+"','"+edate+"','"+no+"')");
	                   out.println("Data is successfully inserted!");
	                
	                response.sendRedirect("home.jsp");
	                } catch (Exception ex) {
	                	System.out.println("Error : " + ex);
	            }
	                %>
</body>
</html>