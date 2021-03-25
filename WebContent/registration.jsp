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
int rs=stmt.executeUpdate();
if(rs>0)
{
	out.println("<script type=\"text/javascript\">");
    out.println("alert('Registration Successful');"
        + "window.location.replace(\"example.html\");");
    out.println("</script>");
}
}
catch(Exception e){
	System.out.println(e);
}
%>