<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello, World</title>
</head>
<body>
<h1>Hello, World!!</h1>
<%
	Date today = new Date();
	//out.println(today);
%>
<%=today %>
</body>
</html>