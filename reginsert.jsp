<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*,java.util.*" %>
    

    <% 
    String NIC= request.getParameter("nic");
    String uName= request.getParameter("username");
    String pw= request.getParameter("password");
    String repw= request.getParameter("repassword");
    String phone= request.getParameter("phone");
    
 
   
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms", "root", "root");
        Statement stm =  conn.createStatement();
       
       int i=stm.executeUpdate("insert into luser(NIC,userName,pw,repassword,telephone)values('"+NIC+"','"+uName+"','"+pw+"','"+repw+"','"+phone+"')");
       out.println("Data is successfully inserted!");
   		response.sendRedirect("login.jsp");
    }
    catch(Exception e){
    	System.out.print(e);
    	e.printStackTrace();
    }
    %>
       