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
	response.sendRedirect("page0.jsp");
	%>
	<script>
	alert("Login successfull");
	</script>
	<%
}
else
{
	response.sendRedirect("example.html");
	%>
	<script>
	alert("Login unsuccessfull");
	</script>
	<%
}
}
catch(Exception e){
	System.out.println(e);
}
%>