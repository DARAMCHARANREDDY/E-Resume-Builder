<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String tech1 = request.getParameter("list[0][]");
String tech2= request.getParameter("list[1][]");
String tech3= request.getParameter("list[2][]");
String tech4 = request.getParameter("list[3][]");
String tech5= request.getParameter("list[4][]");
String tech6= request.getParameter("list[5][]");

session.setAttribute("tech1",tech1);
session.setAttribute("tech2",tech2);
session.setAttribute("tech3",tech3);
session.setAttribute("tech4",tech4);
session.setAttribute("tech5",tech5);
session.setAttribute("tech6",tech6);

response.sendRedirect("c3-page5.jsp");
%>