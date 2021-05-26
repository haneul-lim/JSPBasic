<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL-sql</title>
</head>
<body>
<h1>JSTL-sql</h1>
<h2>sql:setDataSource - 데이터베이스 연결정보 설정 </h2>
<h2>sql:update - insert,update,delete 질의문 실행 </h2>
<h2>sql:param - 질의문에 매개변수 전달 </h2>


<c:set var="url">jdbc:mariadb://bigdata.czzbjaoksklg.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<c:set var="name" value="혜교" />
<c:set var="kor" value="96" />
<c:set var="eng" value="65" />
<c:set var="mat" value="77" />

<c:set var="tot" value="${ kor + eng + mat }" />
<c:set var="avg" value="${ tot / 3 }" />
<c:out value="${tot}" />
<c:out value="${avg}" />

<c:choose>
	<c:when test="${avg ge 90}">
		<c:set var="grd" value="수" /></c:when>
	<c:when test="${avg ge 80}">
		<c:set var="grd" value="우" /></c:when>
	<c:when test="${avg ge 70}">
		<c:set var="grd" value="미" /></c:when>
	<c:when test="${avg ge 60}">
		<c:set var="grd" value="양" /></c:when>	
	<c:otherwise>
		<c:set var="grd" value="가" /></c:otherwise>		
</c:choose>

<sql:setDataSource var="mariadb" url="${url}" driver="${drv}" user="${usr}" password="${pwd}" />

<sql:update dataSource="${mariadb}" var="cnt">
	insert into sungjuk (name,kor,eng,mat,tot,mean,grd)
	values (?,?,?,?,?,?,?)
	<sql:param value="${name}" />
	<sql:param value="${kor}" />
	<sql:param value="${eng}" />
	<sql:param value="${mat}" />
	<sql:param value="${tot}" />
	<sql:param value="${avg}" />
	<sql:param value="${grd}" />
</sql:update>

<p>처리결과 : ${cnt}</p>
<p><c:if test="${cnt gt 0}">데이터입력 성공!!</c:if></p>




</body>
</html>