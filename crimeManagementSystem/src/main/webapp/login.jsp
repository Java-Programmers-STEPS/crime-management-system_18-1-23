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
	String emailorphone = request.getParameter("emailorphone");
	String password = request.getParameter("password");

	session.setAttribute("currentuser", emailorphone);
	out.print(password);

	if (emailorphone.equals("admin@gmail.com") && password.equals("Admin123@")) {

		response.sendRedirect("admin_home_page.jsp");

	} else if (emailorphone.equals("officer@gmail.com") && password.equals("Officer123@")) {

		response.sendRedirect("officer_home_page.jsp");

	} else {
		response.sendRedirect("login_page_1.jsp");

	}
	%>
</body>
</html>