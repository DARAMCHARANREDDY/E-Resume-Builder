<%@ page import='java.util.*, java.sql.*' language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String moocs1 = request.getParameter("list[0][]");
String moocs2= request.getParameter("list[1][]");
String moocs3= request.getParameter("list[2][]");
String moocs4= request.getParameter("list[3][]");

String link1 = request.getParameter("list1[0][]");
String link2= request.getParameter("list1[1][]");
String link3= request.getParameter("list1[2][]");
String link4= request.getParameter("list1[3][]");

String email=(String)session.getAttribute("email");
String fname=(String)session.getAttribute("fname");
String lname=(String)session.getAttribute("lname");
String mail=(String)session.getAttribute("mail");
String linkedin=(String)session.getAttribute("linkedin");
String github=(String)session.getAttribute("github");
String contact=(String)session.getAttribute("contact");
String objective=(String)session.getAttribute("objective");
String skill1=(String)session.getAttribute("skill1");
String level1=(String)session.getAttribute("level1");
String skill2=(String)session.getAttribute("skill2");
String level2=(String)session.getAttribute("level2");
String skill3=(String)session.getAttribute("skill3");
String level3=(String)session.getAttribute("level3");
String skill4=(String)session.getAttribute("skill4");
String level4=(String)session.getAttribute("level4");
String board1=(String)session.getAttribute("board1");
String institution1=(String)session.getAttribute("institution1");
String yop1=(String)session.getAttribute("yop1");
String gpa1=(String)session.getAttribute("gpa1");
String board2=(String)session.getAttribute("board2");
String institution2=(String)session.getAttribute("institution2");
String yop2=(String)session.getAttribute("yop2");
String gpa2=(String)session.getAttribute("gpa2");
String board3=(String)session.getAttribute("board3");
String institution3=(String)session.getAttribute("institution3");
String yop3=(String)session.getAttribute("yop3");
String gpa3=(String)session.getAttribute("gpa3");
String activity=(String)session.getAttribute("activity");

int id = (int)(Math.random()*99999)+1;
try{
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("loaded");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ep_project","root","root");
System.out.println("connection");

PreparedStatement stmt=con.prepareStatement("insert into resume1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1, email);
stmt.setString(2, fname);
stmt.setString(3, lname);
stmt.setString(4, mail);
stmt.setString(5, linkedin);
stmt.setString(6, github);
stmt.setString(7, contact);
stmt.setString(8, objective);
stmt.setString(9, skill1);
stmt.setString(10, level1);
stmt.setString(11, skill2);
stmt.setString(12, level2);
stmt.setString(13, skill3);
stmt.setString(14, level3);
stmt.setString(15, skill4);
stmt.setString(16, level4);
stmt.setString(17, board1);
stmt.setString(18, institution1);
stmt.setString(19, yop1);
stmt.setString(20, gpa1);
stmt.setString(21, board2);
stmt.setString(22, institution2);
stmt.setString(23, yop2);
stmt.setString(24, gpa2);
stmt.setString(25, board3);
stmt.setString(26, institution3);
stmt.setString(27, yop3);
stmt.setString(28, gpa3);
stmt.setString(29, activity);
stmt.setString(30, moocs1);
stmt.setString(31, link1);
stmt.setString(32, moocs2);
stmt.setString(33, link2);
stmt.setString(34, moocs3);
stmt.setString(35, link3);
stmt.setString(36, moocs4);
stmt.setString(37, link4);
stmt.setInt(38, id);

int rs=stmt.executeUpdate();

if(rs>0)
{
	//response.sendRedirect("success.html");
	session.removeAttribute("email");
	session.removeAttribute("fname");
	session.removeAttribute("lname");
	session.removeAttribute("mail");
	session.removeAttribute("linkedin");
	session.removeAttribute("github");
	session.removeAttribute("contact");
	session.removeAttribute("objective");
	session.removeAttribute("skill1");
	session.removeAttribute("level1");
	session.removeAttribute("skill2");
	session.removeAttribute("level2");
	session.removeAttribute("skill3");
	session.removeAttribute("level3");
	session.removeAttribute("skill4");
	session.removeAttribute("level4");
	session.removeAttribute("board1");
	session.removeAttribute("institution1");
	session.removeAttribute("yop1");
	session.removeAttribute("gpa1");
	session.removeAttribute("board2");
	session.removeAttribute("institution2");
	session.removeAttribute("yop2");
	session.removeAttribute("gpa2");
	session.removeAttribute("board3");
	session.removeAttribute("institution3");
	session.removeAttribute("yop3");
	session.removeAttribute("gpa3");
	session.removeAttribute("activity");
	response.sendRedirect("resume1.jsp?id="+id);
}

}
catch(Exception e){
	System.out.println(e);
}
%>