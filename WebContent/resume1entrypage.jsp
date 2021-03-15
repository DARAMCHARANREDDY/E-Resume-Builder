<%@ page  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String fname=request.getParameter("inputFName4");
String lname=request.getParameter("inputLName4");
String mail=request.getParameter("inputEmail4");
String linkedin=request.getParameter("inputLinkdein4");
String github=request.getParameter("inputGithub4");
String contact=request.getParameter("inputNumber4");

session.setAttribute("fname",fname);
session.setAttribute("lname",lname);
session.setAttribute("mail",mail);
session.setAttribute("linkedin",linkedin);
session.setAttribute("github",github);
session.setAttribute("contact",contact);

response.sendRedirect("page3.jsp");
%>