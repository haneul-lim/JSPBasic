<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.Date" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>구구단 프로그램</title>
</head>
<body>
	<h1>구구단 - 24단</h1>
<%
for(int i = 1; i <= 24; ++i) {
	out.println("24 * " + i + " = " + 24*i);
	
}
%>


<%-- 이것은 JSP 주석입니다 --%>	
</body>
</html>