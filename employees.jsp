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

<sql:setDataSource var="mariadb" 
url="${url}" driver="${drv}" 
user="${usr}" password="${pwd}" />

<sql:update dataSource="${mariadb}" var="cnt">
	insert into EMPLOYEES (employee_id, 
	first_name, last_name, email, phone_number, 
	hire_date, job_id, salary, commission_pct,
	manager_id, department_id) 
	values (?,?,?,?,?,?,?,?,?,?,?)
	<sql:param value="${param.employee_id}" />
	<sql:param value="${param.first_name}" />
	<sql:param value="${param.last_name}" />
	<sql:param value="${param.email}" />
	<sql:param value="${param.phone_number}" />
	<sql:param value="${param.hire_date}" />
	<sql:param value="${param.job_id}" />
	<sql:param value="${param.salary}" />
	<sql:param value="${param.commission_pct}" />
	<sql:param value="${param.manager_id}" />
	<sql:param value="${param.department_id}" />
</sql:update>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원등록 처리결과</title>
</head>
<body>
<h1>사원등록 처리결과</h1>
<p><c:if test="${cnt gt 0}">사원정보 등록 완료!</c:if></p>

<p><a href="employees2.jsp">가입한 사원 조회</a></p>

</body>
</html>