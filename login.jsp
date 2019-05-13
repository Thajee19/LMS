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
<title>Education</title>
<meta name="keywords" content="free css templates, education, school, college, university, templatemo.com" />
<meta name="description" content="Education template is for academic related websites" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/myHome.css"/>
<style>
.bottom {
	background-image:url(blue1.jpg);
    text-align: right;
    padding: 20px;
}</style>

<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.username.focus()
		   return false
		}
   }

   
   return true   
}
</SCRIPT>

</head>
<body class="bottom" >

    	
   		   
				  <%  out.print("WELCOME TO MEMBER LOGIN");
	%>
    
    	<form name=F1 onSubmit="return dil(this)" action="loginvalidate.jsp" >
				   <table align="center" cellspacing="10" cellpadding="8">	
				 
	
	    			<tr><td>LOGIN NAME:</td><td> <input type="text" name="username"/></td></tr>
					
					<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
					
					<tr><td></td><td><input type="submit" value="Submit" class="w3-button w3-black w3-section"/>
					
                   
                   <INPUT TYPE=RESET VALUE="CLEAR" class="w3-button w3-black w3-section"></td></tr>
                   
                   
                   <tr><td><a href="register.jsp">New User</a></td></tr>
          
             	</table>
        </form>
  
             	
</body>
</html>