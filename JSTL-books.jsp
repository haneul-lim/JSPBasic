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

<sql:setDataSource var="mariadb" url="${url}" driver="${drv}" user="${usr}" password="${pwd}" />

<sql:update dataSource="${mariadb}" var="cnt">
	insert into books values (?,?,?,?)
	<sql:param value="${param.bookid}" />
	<sql:param value="${param.bookname}" />
	<sql:param value="${param.publish}" />
	<sql:param value="${param.price}" />
</sql:update>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서등록 처리결과</title>
</head>
<body>
<h1>도서등록 처리결과</h1>
<p><c:if test="${cnt gt 0}">도서 등록 완료!</c:if></p>

<p><a href="books2.jsp">등록된 도서 조회</a></p>

</body>
</html>