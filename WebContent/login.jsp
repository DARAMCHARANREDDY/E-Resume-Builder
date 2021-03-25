<%@ page import='java.util.*, java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");

try{
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
System.out.println("connection");

PreparedStatement stmt=con.prepareStatement("select * from user where email=? and password=?");
stmt.setString(1, email);
stmt.setString(2, password);
ResultSet rs=stmt.executeQuery();
if(rs.next()) {
	session.setAttribute("email",email);
	out.println("<script type=\"text/javascript\">");
    out.println("alert('Login Successful');"
        + "window.location.replace(\"page0.jsp\");");
    out.println("</script>");
}
else
{

	out.println("<script type=\"text/javascript\">");
    out.println("alert('E - Mail or Password Incorrect!');"
        + "window.location.replace(\"example.html\");");
    out.println("</script>");

}
}
catch(Exception e){
	System.out.println(e);
}
%>