<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String emailorphone =(String)session.getAttribute("currentuser");
//out.print(emailorphone);
session.invalidate();
response.sendRedirect("login_page_1.jsp");
%>
</body>
</html>