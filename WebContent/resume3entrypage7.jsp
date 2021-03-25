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
String profile=(String)session.getAttribute("profile");
String comp1=(String)session.getAttribute("comp1");
String dur1=(String)session.getAttribute("dur1");
String rolec1=(String)session.getAttribute("rolec1");
String jinfo1=(String)session.getAttribute("jinfo1");
String comp2=(String)session.getAttribute("comp2");
String dur2=(String)session.getAttribute("dur2");
String rolec2=(String)session.getAttribute("rolec2");
String jinfo2=(String)session.getAttribute("jinfo2");
String comp3=(String)session.getAttribute("comp3");
String dur3=(String)session.getAttribute("dur3");
String rolec3=(String)session.getAttribute("rolec3");
String jinfo3=(String)session.getAttribute("jinfo3");
String skill1=(String)session.getAttribute("skill1");
String des1=(String)session.getAttribute("des1");
String skill2=(String)session.getAttribute("skill2");
String des2=(String)session.getAttribute("des2");
String skill3=(String)session.getAttribute("skill3");
String des3=(String)session.getAttribute("des3");
String tech1=(String)session.getAttribute("tech1");
String tech2=(String)session.getAttribute("tech2");
String tech3=(String)session.getAttribute("tech3");
String tech4=(String)session.getAttribute("tech4");
String tech5=(String)session.getAttribute("tech5");
String tech6=(String)session.getAttribute("tech6");
String uni1=(String)session.getAttribute("uni1");
String gpa1=(String)session.getAttribute("gpa1");
String cname1=(String)session.getAttribute("cname1");
String uni2=(String)session.getAttribute("uni2");
String gpa2=(String)session.getAttribute("gpa2");
String cname2=(String)session.getAttribute("cname2");
String uni3=(String)session.getAttribute("uni3");
String gpa3=(String)session.getAttribute("gpa3");
String cname3=(String)session.getAttribute("cname3");

int id = (int)(Math.random()*99999)+1;
try{
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
System.out.println("connection");

PreparedStatement stmt=con.prepareStatement("insert into resume3 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1,email);
stmt.setString(2,fname);
stmt.setString(3,lname);
stmt.setString(4,mail);
stmt.setString(5,linkedin);
stmt.setString(6,contact);
stmt.setString(7,role);
stmt.setString(8,profile);
stmt.setString(9,skill1);
stmt.setString(10,des1);
stmt.setString(11,skill2);
stmt.setString(12,des2);
stmt.setString(13,skill3);
stmt.setString(14,des3);
stmt.setString(15,tech1);
stmt.setString(16,tech2);
stmt.setString(17,tech3);
stmt.setString(18,tech4);
stmt.setString(19,tech5);
stmt.setString(20,tech6);
stmt.setString(21,comp1);
stmt.setString(22,rolec1);
stmt.setString(23,dur1);
stmt.setString(24,jinfo1);
stmt.setString(25,comp2);
stmt.setString(26,rolec2);
stmt.setString(27,dur2);
stmt.setString(28,jinfo2);
stmt.setString(29,comp3);
stmt.setString(30,rolec3);
stmt.setString(31,dur3);
stmt.setString(32,jinfo3);
stmt.setString(33,uni1);
stmt.setString(34,gpa1);
stmt.setString(35,cname1);
stmt.setString(36,uni2);
stmt.setString(37,gpa2);
stmt.setString(38,cname2);
stmt.setString(39,uni3);
stmt.setString(40,gpa3);
stmt.setString(41,cname3);
stmt.setInt(42, id);

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
	session.removeAttribute("profile");
	session.removeAttribute("skill1");
	session.removeAttribute("des1");
	session.removeAttribute("skill2");
	session.removeAttribute("des2");
	session.removeAttribute("skill3");
	session.removeAttribute("des3");
	session.removeAttribute("tech1");
	session.removeAttribute("tech2");
	session.removeAttribute("tech3");
	session.removeAttribute("tech4");
	session.removeAttribute("tech5");
	session.removeAttribute("tech6");
	session.removeAttribute("comp1");
	session.removeAttribute("dur1");
	session.removeAttribute("rolec1");
	session.removeAttribute("jinfo1");
	session.removeAttribute("comp2");
	session.removeAttribute("dur2");
	session.removeAttribute("rolec2");
	session.removeAttribute("jinfo2");
	session.removeAttribute("comp3");
	session.removeAttribute("dur3");
	session.removeAttribute("rolec3");
	session.removeAttribute("jinfo3");
	session.removeAttribute("uni1");
	session.removeAttribute("cname1");
	session.removeAttribute("gpa1");
	session.removeAttribute("uni2");
	session.removeAttribute("cname2");
	session.removeAttribute("gpa2");
	session.removeAttribute("uni3");
	session.removeAttribute("cname3");
	session.removeAttribute("gpa3");
	response.sendRedirect("resume3.jsp?id="+id);
}

}
catch(Exception e){
	System.out.println(e);
}
%>