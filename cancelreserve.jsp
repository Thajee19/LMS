<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	//System.out.println("******" + (request.getParameter("id")));

	int id = Integer.parseInt(request.getParameter("id"));

	try {

		Class.forName("com.mysql.jdbc.Driver");

		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms", "root",
				"root");

		Statement st = conn.createStatement();
		Statement st1 = conn.createStatement();
		Statement st2 = conn.createStatement();

		String query = "SELECT * FROM Reserve where reserveID ='" + id + "' ";

		ResultSet rs = st1.executeQuery(query);

		while (rs.next()) {

            String bookname = request.getParameter("book");
            String Author = request.getParameter("Author");
            String no = request.getParameter("no");
            String idate = request.getParameter("idate");
            String edate = request.getParameter("edate");

            int i=st.executeUpdate("insert into DeleteReserve(userId,bookname,author,issueDate,deadLine,isbn)values('"+id+"','"+bookname+"','"+Author+"','"+idate+"','"+edate+"','"+no+"')");
            

		}

		int i = st.executeUpdate("delete from Reserve where userId = '" + id + "'");

		System.out.println("Your reservation is canceled!");
		request.getRequestDispatcher("bookreserve.jsp").forward(request, response);

	}

	catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();

	}
%>

</body>
</html>