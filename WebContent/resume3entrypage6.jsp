<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String uni1 = request.getParameter("list[0][]");
String uni2= request.getParameter("list[1][]");
String uni3= request.getParameter("list[2][]");


String gpa1 = request.getParameter("list2[0][]");
String gpa2= request.getParameter("list2[1][]");
String gpa3= request.getParameter("list2[2][]");

String cname1 = request.getParameter("list1[0][]");
String cname2= request.getParameter("list1[1][]");
String cname3= request.getParameter("list1[2][]");

session.setAttribute("uni1",uni1);
session.setAttribute("uni2",uni2);
session.setAttribute("uni3",uni3);

session.setAttribute("gpa1",gpa1);
session.setAttribute("gpa2",gpa2);
session.setAttribute("gpa3",gpa3);

session.setAttribute("cname1",cname1);
session.setAttribute("cname2",cname2);
session.setAttribute("cname3",cname3);

response.sendRedirect("resume3entrypage7.jsp");
%>