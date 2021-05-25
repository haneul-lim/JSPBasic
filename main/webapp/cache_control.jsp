<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cache Control</title>
</head>
<body>
<h1>Cache Control</h1>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expire", 0);

%>


<!-- 
cache
웹 자원을 효율적으로 사용하기 위해
웹에서 요청한 자원을 클라이언트의 저장소에 저장해 두고
똑같은 자원을 다시 요청하는 경우 
재차 내려받지 않고 앞서 저장소에 저장된 자원을 사용하는 방식
이러한 목적으로 저장소에 저장된 자원을 cache라 함 

 -->

</body>
</html>