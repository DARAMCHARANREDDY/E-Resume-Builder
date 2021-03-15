<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

String board1 = request.getParameter("list[0][]");
String board2= request.getParameter("list[1][]");
String board3= request.getParameter("list[2][]");


String institution1 = request.getParameter("list1[0][]");
String institution2= request.getParameter("list1[1][]");
String institution3= request.getParameter("list1[2][]");

String yop1 = request.getParameter("list2[0][]");
String yop2= request.getParameter("list2[1][]");
String yop3= request.getParameter("list2[2][]");

String gpa1 = request.getParameter("list3[0][]");
String gpa2= request.getParameter("list3[1][]");
String gpa3= request.getParameter("list3[2][]");


session.setAttribute("board1",board1);
session.setAttribute("board2",board2);
session.setAttribute("board3",board3);

session.setAttribute("institution1",institution1);
session.setAttribute("institution2",institution2);
session.setAttribute("institution3",institution3);

session.setAttribute("yop1",yop1);
session.setAttribute("yop2",yop2);
session.setAttribute("yop3",yop3);

session.setAttribute("gpa1",gpa1);
session.setAttribute("gpa2",gpa2);
session.setAttribute("gpa3",gpa3);

response.sendRedirect("page6.jsp");

%>    
    