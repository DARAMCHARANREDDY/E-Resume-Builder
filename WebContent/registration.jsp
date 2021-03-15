<%@ page import='java.util.*, java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String fullname=request.getParameter("fullname");
String email=request.getParameter("email");
String password=request.getParameter("password");

try{
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
System.out.println("connection");

PreparedStatement stmt=con.prepareStatement("insert into user values(?,?,?)");
stmt.setString(1, fullname);
stmt.setString(2, email);
stmt.setString(3, password);
boolean rs=stmt.execute();
if(rs)
{
	response.sendRedirect("page0.html");
}
else
{
	response.sendRedirect("example.html");
}
}
catch(Exception e){
	System.out.println(e);
}
%>