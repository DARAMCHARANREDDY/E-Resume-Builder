<%@ page import='java.util.*, java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String email=request.getParameter("email");
try{
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
System.out.println("connection");
PreparedStatement stmt=con.prepareStatement("select * from user where email=?");
stmt.setString(1, email);
ResultSet rs=stmt.executeQuery();
if(rs.next()) {
	response.sendRedirect("forgetpwd-page2.jsp?email="+email);	
	}
	else
	{
		response.sendRedirect("forgetpwd-page3.html");
	}
}
catch(Exception e){
	System.out.println(e);
}
%>