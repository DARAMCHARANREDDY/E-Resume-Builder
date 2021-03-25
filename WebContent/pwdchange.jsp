<%@ page import='java.util.*, java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String email=request.getParameter("email");
String password1=request.getParameter("password1");
String password2=request.getParameter("password2");

try{
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
System.out.println("connection");
if(password1.equals(password2))
{
	PreparedStatement stmt=con.prepareStatement("update user set password=? where email=?");
	stmt.setString(2, email);
	stmt.setString(1, password1);
	int rs=stmt.executeUpdate();
	if(rs>0) 
	{
		out.println("<script type=\"text/javascript\">");
	    out.println("alert('Password Changed Successfully');"
	        + "window.location.replace(\"example.html\");");
	    out.println("</script>");
	}
}
}
catch(Exception e){
	System.out.println(e);
}
%>