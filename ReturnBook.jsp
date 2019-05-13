<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/myHome.css"/>
<title>Return Book</title>
</head>
<body>
  
  <div class="w3-container w3-padding-32" id="contact">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Book Return</h3>
    <form action="return.jsp" target="_blank">
      <input class="w3-input w3-section w3-border" type="text" placeholder="User NIC" required name="no">
      <input class="w3-input w3-border" type="text" placeholder=" Book Title" required name="Name">
      <input class="w3-input w3-section w3-border" type="text" placeholder="ISBN" required name="isbn">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Return Date" required name="date">
      
      <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> Return
      </button>
      </form>
      <form action="fine.jsp">
        <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> Calculate Fine
      </button>
    </form>
        <form action="home.jsp">
         <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> back
      </button>
    </form>
  </div>

</body>
</html>