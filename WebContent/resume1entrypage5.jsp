<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%


String activity = request.getParameter("inputAct4");

session.setAttribute("activity",activity);


response.sendRedirect("page7.jsp");

%>