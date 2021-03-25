<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

String uni1 = request.getParameter("list[0][]");
String uni2= request.getParameter("list[1][]");
String uni3= request.getParameter("list[2][]");


String qual1 = request.getParameter("list1[0][]");
String qual2= request.getParameter("list1[1][]");
String qual3= request.getParameter("list1[2][]");

session.setAttribute("uni1",uni1);
session.setAttribute("uni2",uni2);
session.setAttribute("uni3",uni3);

session.setAttribute("qual1",qual1);
session.setAttribute("qual2",qual2);
session.setAttribute("qual3",qual3);

response.sendRedirect("resume2entrypage6.jsp");
%>