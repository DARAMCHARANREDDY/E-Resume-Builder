<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String resume_id=request.getParameter("resume");
	out.println(resume_id);
	if(resume_id.equals("resume1"))
	{
		response.sendRedirect("page2.jsp");
	}
	else if(resume_id.equals("resume2"))
	{
		response.sendRedirect("2-page1.html");
	}
	//else if(resume_id.equals("resume3"))
	//{
		//response.sendRedirect("page2.jsp");
	//}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>