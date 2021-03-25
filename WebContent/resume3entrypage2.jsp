<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String profile = request.getParameter("inputPR4");

session.setAttribute("profile",profile);


response.sendRedirect("c3-page3.jsp");
%>