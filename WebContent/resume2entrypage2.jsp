<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%     
String personalprofile = request.getParameter("inputPP4");

session.setAttribute("personalprofile",personalprofile);


response.sendRedirect("c2-page3.jsp");
%>