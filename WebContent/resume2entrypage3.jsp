<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String wp1 = request.getParameter("list[0][]");
String wp2= request.getParameter("list[1][]");
String wp3= request.getParameter("list[2][]");


String exp1 = request.getParameter("list1[0][]");
String exp2= request.getParameter("list1[1][]");
String exp3= request.getParameter("list1[2][]");

String rolec1 = request.getParameter("list2[0][]");
String rolec2= request.getParameter("list2[1][]");
String rolec3= request.getParameter("list2[2][]");

session.setAttribute("wp1",wp1);
session.setAttribute("wp2",wp2);
session.setAttribute("wp3",wp3);

session.setAttribute("exp1",exp1);
session.setAttribute("exp2",exp2);
session.setAttribute("exp3",exp3);

session.setAttribute("rolec1",rolec1);
session.setAttribute("rolec2",rolec2);
session.setAttribute("rolec3",rolec3);

response.sendRedirect("c2-page4.jsp");
%>