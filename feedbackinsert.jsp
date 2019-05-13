<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*,java.util.*" %>
    

    <% 
    String Name= request.getParameter("Name");
    String Email= request.getParameter("Email");
    String Comment= request.getParameter("Comment");
 
    
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms", "root", "root");
        Statement stm =  conn.createStatement();
       
       int i=stm.executeUpdate("insert into feedback(user_name,email,comment1)values('"+Name+"','"+Email+"','"+Comment+"')");
       out.println("Data is successfully inserted!");
   		response.sendRedirect("home.jsp");
    }
    catch(Exception e){
    	System.out.print(e);
    	e.printStackTrace();
    }
    %>
       