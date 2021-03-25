<%@ page import='java.util.*, java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String email=(String)session.getAttribute("email");
String name = request.getParameter("name");
String mail= request.getParameter("mail");
String subject= request.getParameter("subject");
String message= request.getParameter("msg");
try{
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
System.out.println("connection");
int id = (int)(Math.random()*99999)+1;
PreparedStatement stmt=con.prepareStatement("insert into contact values(?,?,?,?,?,?)");
stmt.setInt(1, id);
stmt.setString(2, email);
stmt.setString(3, name);
stmt.setString(4, mail);
stmt.setString(5, subject);
stmt.setString(6, message);
 
int rs=stmt.executeUpdate();
if(rs>0)
	{
		System.out.println("Your Query has been registered");
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
