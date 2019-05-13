<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/myHome.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Reserve Book</title>

</head>
<body>

   
  <div class="w3-container w3-padding-32" id="contact">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Book Reserve</h3>
 
    
    <form action="action_page.jsp" target="_blank"  name="Add">
       <input class="w3-input w3-section w3-border" type="text" placeholder="uder id"  name="id">
      <input class="w3-input w3-section w3-border" type="text" placeholder=" Book Name" name="book">
      <input class="w3-input w3-section w3-border" type="text" placeholder=" Author Name"  name="Author">
      <input class="w3-input w3-section w3-border" type="text" placeholder="ISBN No"  name="no">
     
        <input class="w3-input w3-section w3-border" type="text" placeholder="Issue Date"  name="idate">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Expired Date"  name="edate">
 <%
String username = session.getAttribute("username").toString();
session.setAttribute("usename", username);
%>

      <button class="w3-button w3-black w3-section" onclick="return validation()" type="submit">
        Reserve
      </button>
      </form>
      <form action="home.jsp">
         <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> back
      </button>
    </form>
  </div>
</div>
            <table style="width:95%" border="1"cellspacing="1"cellpading="2"bordercolor="0033FF" align="center" valign="top" style = "margin-left : 180px">
			
		

		<tr>
            <th> <pre> NIC:  </pre></th>
			<th> <pre> Book Name:    </pre> </th>
			<th> <pre> Author</pre> </th>
			<th> <pre> ISBN</pre> </th>
			<th> <pre> DeadLine  </pre> </th>
			<th> <pre> Status  </pre> </th>
		</tr>
            <%
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/lms", "root", "root");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select * from reserve";
                ResultSet rs = stm.executeQuery(SQL);
                while(rs.next()){ 
            %>
                <tr>
                		<td><%= rs.getString("userId")%></td>
                        <td><%=rs.getString("bookname")%></td>
                         <td><%= rs.getString("author")%></td>
                        <td><%= rs.getString("isbn")%></td>
                        <td><%= rs.getString("deadline")%></td>
                        <td><form action="cancelreserve.jsp"><button type="submit" value="Delete" name="Delete" onclick="alert('Deleted')"
						>Cancel</button></form></td>
                </tr>        
		 <% 
                }
            }
            catch(ClassNotFoundException ex){ 
                out.println("Error : "+ ex);
            }catch(SQLException ex){
                out.println("Error : "+ ex);
            }
        %>
              

<script>
	function validation(){
		
		var id = document.forms["Add"]["id"].value;
		var book = document.forms["Add"]["book"].value;
		var Author = document.forms["Add"]["Author"].value;
		var no = document.forms["Add"]["no"].value;
		var idate = document.forms["Add"]["idate"].value;
		var edate = document.forms["Add"]["edate"].value;
		
		/*if(add == "Add"){
			alert("successfully");
			window.open("Supplierinsert.jsp");
		}*/
		if(id == ""){
			alert("please enter NIC");
			return false;
		}
		else if(!id.includes("V")){
			alert("Item code must have V");
			return false;
			
		}
		else if(id.length != 10){
			alert("Item code must have 10 characters");
			return false;
			
		}
		else if(book == ""){
			alert("please enter  Book name");
			return false;
		}
		else if(Author == ""){
				alert("please enter Author Name");
				return false;
			}
		else if(no == ""){
			alert("please enter ISBN");
			return false;
		}
		else if(idate == ""){
			alert("please enter issue date");
			return false;
		}
		
		else if(edate == ""){
				alert("please enter deadline");
				return false;
			}
		else{
			alert("Successful");
			return true;
		}
		
	}
	</script> 
</body>
</html>