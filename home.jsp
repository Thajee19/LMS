<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>onlineLibrary</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="css/myHome.css"/>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<body>
<%
String username = session.getAttribute("username").toString();
session.setAttribute("username", username);
System.out.println(username);
%>

<div class="w3-top1">
  <div class="w3-bar w3-gray w3-wide w3-padding w3-card">
    <div class="w3-bar-item"><b>MIS Library</b></div>
 <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#home" class="w3-bar-item w3-button"><c:set var="username" value="${param.username}" scope="session"/>Home</a>
      <a href="Search.jsp" class="w3-bar-item w3-button"><c:set var="username" value="${param.username}" scope="session"/>Search Book</a>
      <a href="ReturnBook.jsp" class="w3-bar-item w3-button"><c:set var="username" value="${param.username}" scope="session"/>Return Book</a>
      <a href="book_reserve.jsp" class="w3-bar-item w3-button"><c:set var="username" value="${param.username}" scope="session"/>Reserve Book</a>
      <a href="logout.jsp" class="w3-bar-item w3-button">Logout</a>
      <a href="contactus.jsp" class="w3-bar-item w3-button">Contact us</a>
    </div>
  </div>
</div>

<!-- Header -->
<header class ="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
  <img class="w3-image" src="images/library2.jpg" alt="Architecture" width="1500" height="800">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>MIS Library</b></span> <span class="w3-hide-small w3-text-light-grey"></span></h1>
  </div>
</header>

 
<div class = "w3-row-padding">
  <div class="w3-container w3-padding-32" id="about">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">MIS Library</h3>
    <p>The MIS Library provides educational, cultural and information services and resources to the students, faculty, and the community. Its primary mission is to support and supplement classroom and independent learning; facilitate student and faculty research; and provide students with lifelong skills in identifying, locating, evaluating and synchronizing information.

All library materials are housed in the Delmar T. Oviatt Library, a 234,712 square foot state-of-the-art facility. Of note are 3 computer equipped library instruction labs totaling 100 desktops, 100 desktops in various library locations, and over 120 laptops and tablets available for lending to currently affiliated CSUN Students, Faculty, and Staff. The recently remodeled first floor Learning Commons is a modern, expansive and flexible space that includes an Information Technology help desk and a state-of-the-art Creative Media Studio. There are over 2,500 seats for in house study. During the fall and spring semesters, the building is open 85 hours a week. The Library maintains and provides access to electronic information 24 hours a day.

The Oviatt Library has a collection containing 2.1 million volumes, of which over 1.5 million are books, and over 250,000 bound periodical volumes. The Library subscribes to 53,000 online journals, over 2,300 print journals, over 200 online databases and more than 570,000 ebooks. The microform collection contains 3.17 million pieces. There are over 13,000 sound recordings, 45,000 film and video recordings and nearly 60,000 pictures and other graphic materials. The archives and manuscript collection exceeds 11,000 linear feet of materials, with nearly 45,000 items housed in Special Collections.

The Library is heavily used with 13 million uses of its web pages annually, a gate count of nearly 1.5 million annually, and over 25,000 reference questions answered per year by librarians.
    </p>
  </div>
  
  
	

    <!-- feedback  Section -->
  <div class="w3-container w3-padding-32" id="contact">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">feedback</h3>
    <form method="post" action="feedbackinsert.jsp"  target="_blank">
      <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Email" required name="Email">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Leave any comments/questions" required name="Comment">
        

    
      <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> SEND MESSAGE
      </button>
    </form>
  </div>
</div>
        

 
<!-- Footer -->
<footer class="w3-center w3-gray w3-padding-16">
  <p>Copyright@ MIS Library, 2019-All rights Reserved</p>
</footer>

</body>
</html>
