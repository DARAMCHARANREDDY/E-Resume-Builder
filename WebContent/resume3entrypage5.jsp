<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String comp1 = request.getParameter("list[0][]");
String comp2= request.getParameter("list[1][]");
String comp3= request.getParameter("list[2][]");


String rolec1 = request.getParameter("list1[0][]");
String rolec2= request.getParameter("list1[1][]");
String rolec3= request.getParameter("list1[2][]");

String dur1 = request.getParameter("list3[0][]");
String dur2= request.getParameter("list3[1][]");
String dur3= request.getParameter("list3[2][]");

String jinfo1 = request.getParameter("list2[0][]");
String jinfo2= request.getParameter("list2[1][]");
String jinfo3= request.getParameter("list2[2][]");


session.setAttribute("comp1",comp1);
session.setAttribute("comp2",comp2);
session.setAttribute("comp3",comp3);

session.setAttribute("rolec1",rolec1);
session.setAttribute("rolec2",rolec2);
session.setAttribute("rolec3",rolec3);

session.setAttribute("dur1",dur1);
session.setAttribute("dur2",dur2);
session.setAttribute("dur3",dur3);

session.setAttribute("jinfo1",jinfo1);
session.setAttribute("jinfo2",jinfo2);
session.setAttribute("jinfo3",jinfo3);

response.sendRedirect("c3-page6.jsp");

%>    