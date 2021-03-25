<%@ page import='java.util.*, java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String email=(String)session.getAttribute("email");
String fname=(String)session.getAttribute("fname");
String lname=(String)session.getAttribute("lname");
String mail=(String)session.getAttribute("mail");
String linkedin=(String)session.getAttribute("linkedin");
String role=(String)session.getAttribute("role");
String contact=(String)session.getAttribute("contact");
String personalprofile=(String)session.getAttribute("personalprofile");
String wp1=(String)session.getAttribute("wp1");
String exp1=(String)session.getAttribute("exp1");
String rolec1=(String)session.getAttribute("rolec1");
String wp2=(String)session.getAttribute("wp2");
String exp2=(String)session.getAttribute("exp2");
String rolec2=(String)session.getAttribute("rolec2");
String wp3=(String)session.getAttribute("wp3");
String exp3=(String)session.getAttribute("exp3");
String rolec3=(String)session.getAttribute("rolec3");
String skill1=(String)session.getAttribute("skill1");
String level1=(String)session.getAttribute("level1");
String skill2=(String)session.getAttribute("skill2");
String level2=(String)session.getAttribute("level2");
String skill3=(String)session.getAttribute("skill3");
String level3=(String)session.getAttribute("level3");
String uni1=(String)session.getAttribute("uni1");
String qual1=(String)session.getAttribute("qual1");
String uni2=(String)session.getAttribute("uni2");
String qual2=(String)session.getAttribute("qual2");
String uni3=(String)session.getAttribute("uni3");
String qual3=(String)session.getAttribute("qual3");

int id = (int)(Math.random()*99999)+1;
try{
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
System.out.println("connection");

PreparedStatement stmt=con.prepareStatement("insert into resume2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1, email);
stmt.setString(2, fname);
stmt.setString(3, lname);
stmt.setString(4, mail);
stmt.setString(5, linkedin);
stmt.setString(6,role);
stmt.setString(7,contact);
stmt.setString(8,personalprofile);
stmt.setString(9,wp1);
stmt.setString(10,exp1);
stmt.setString(11,rolec1);
stmt.setString(12,wp2);
stmt.setString(13,exp2);
stmt.setString(14,rolec2);
stmt.setString(15,wp3);
stmt.setString(16,exp3);
stmt.setString(17,rolec3);
stmt.setString(18,skill1);
stmt.setString(19,level1);
stmt.setString(20,skill2);
stmt.setString(21,level2);
stmt.setString(22,skill3);
stmt.setString(23,level3);
stmt.setString(24,uni1);
stmt.setString(25,qual1);
stmt.setString(26,uni2);
stmt.setString(27,qual2);
stmt.setString(28,uni3);
stmt.setString(29,qual3);
stmt.setInt(30, id);

int rs=stmt.executeUpdate();

if(rs>0)
{
	//response.sendRedirect("success.html");
	session.removeAttribute("email");
	session.removeAttribute("fname");
	session.removeAttribute("lname");
	session.removeAttribute("mail");
	session.removeAttribute("linkedin");
	session.removeAttribute("role");
	session.removeAttribute("contact");
	session.removeAttribute("personalprofile");
	session.removeAttribute("skill1");
	session.removeAttribute("level1");
	session.removeAttribute("skill2");
	session.removeAttribute("level2");
	session.removeAttribute("skill3");
	session.removeAttribute("level3");
	session.removeAttribute("wp1");
	session.removeAttribute("exp1");
	session.removeAttribute("rolec1");
	session.removeAttribute("wp2");
	session.removeAttribute("exp2");
	session.removeAttribute("rolec2");
	session.removeAttribute("wp3");
	session.removeAttribute("exp3");
	session.removeAttribute("rolec3");
	session.removeAttribute("uni1");
	session.removeAttribute("qual1");
	session.removeAttribute("uni2");
	session.removeAttribute("qual2");
	session.removeAttribute("uni3");
	session.removeAttribute("qual3");
	response.sendRedirect("resume2.jsp?id="+id);
}

}
catch(Exception e){
	System.out.println(e);
}
%>