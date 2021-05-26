<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="url">jdbc:mariadb://bigdata.czzbjaoksklg.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>
<fmt:requestEncoding value="UTF-8" />

<c:set var="birth" value="${param.byear}-${param.bmonth}-${param.bday}" />
<c:set var="hp" value="${param.hp1}-${param.hp2}-${param.hp3}" />

<sql:setDataSource var="mariadb" url="${url}" driver="${drv}" user="${usr}" password="${pwd}" />

<sql:update dataSource="${mariadb}" var="cnt">
	insert into NMember (userid, passwd, name, birth, gender, email, hp) 
	values (?,?,?,?,?,?,?)
	<sql:param value="${param.userid}" />
	<sql:param value="${param.passwd}" />
	<sql:param value="${param.name}" />
	<sql:param value="${birth}" />
	<sql:param value="${param.gender}" />
	<sql:param value="${param.email}" />
	<sql:param value="${hp}" />
</sql:update>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리결과</title>
</head>
<body>
<h1>회원가입 처리결과</h1>
<p><c:if test="${cnt gt 0}">회원정보 등록 완료!</c:if></p>

<p><a href="member2.jsp">가입한 회원 조회</a></p>

</body>
</html>