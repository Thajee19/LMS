<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>data</title>
</head>
<body>
<h1>Author Details</h1>


            <% String name =request.getParameter("search");
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/lms", "root", "root");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select * from author where author_name ='"+name+"'";
                ResultSet rs = stm.executeQuery(SQL);
                while(rs.next()){ 
            %>
            	<table >
               			 <tr>
               			   <td> Sl no</td>
               			   <td><%=rs.getString("sl_no")%></td>
               			 </tr>

						<tr>
                         <td> Author  Name </td>
                       	<td><%= rs.getString("author_name")%></td>
                       	</tr>
                         
                         <tr>
                         <td> Profile </td>
                       	<td><%= rs.getString("profile")%></td>
                       	</tr>
                       	
                       
                       
         </table>
		 <% 
                     }
                    
                }
                    catch(ClassNotFoundException ex){ 
                        out.println("Error : "+ ex);
                    }
                %>
   

</body>
</html>