<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%


String objective = request.getParameter("inputObj4");

session.setAttribute("objective",objective);


response.sendRedirect("page4.jsp");

%>