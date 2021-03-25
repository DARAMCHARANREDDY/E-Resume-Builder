<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String skill1 = request.getParameter("list[0][]");
String skill2= request.getParameter("list[1][]");
String skill3= request.getParameter("list[2][]");

String des1 = request.getParameter("list1[0][]");
String des2= request.getParameter("list1[1][]");
String des3= request.getParameter("list1[2][]");


session.setAttribute("skill1",skill1);
session.setAttribute("des1",des1);
session.setAttribute("skill2",skill2);
session.setAttribute("des2",des2);
session.setAttribute("skill3",skill3);
session.setAttribute("des3",des3);


response.sendRedirect("c3-page4.jsp");
%>