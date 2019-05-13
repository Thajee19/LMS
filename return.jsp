<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,java.util.*" %>
    

    <% 
    String NIC= request.getParameter("no");
    String Name= request.getParameter("Name");
    String isbn= request.getParameter("isbn");
    String date= request.getParameter("date");
    
    
 
   
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms", "root", "root");
        Statement stm =  conn.createStatement();
       
       int i=stm.executeUpdate("insert into return_book(userNIC,booktitle,isbn,ReturnDate)values('"+NIC+"','"+Name+"','"+isbn+"','"+date+"')");
       out.println("Data is successfully inserted!");
   		response.sendRedirect("home.jsp");
    }
    catch(Exception e){
    	System.out.print(e);
    	e.printStackTrace();
    }
    %>
       