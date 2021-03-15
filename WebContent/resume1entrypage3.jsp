<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String skill1 = request.getParameter("list[0][]");
String skill2= request.getParameter("list[1][]");
String skill3= request.getParameter("list[2][]");
String skill4= request.getParameter("list[3][]");

String level1 = request.getParameter("list1[0][]");
String level2= request.getParameter("list1[1][]");
String level3= request.getParameter("list1[2][]");
String level4= request.getParameter("list1[3][]");

session.setAttribute("skill1",skill1);
session.setAttribute("level1",level1);
session.setAttribute("skill2",skill2);
session.setAttribute("level2",level2);
session.setAttribute("skill3",skill3);
session.setAttribute("level3",level3);
session.setAttribute("skill4",skill4);
session.setAttribute("level4",level4);

response.sendRedirect("page5.jsp");
%>