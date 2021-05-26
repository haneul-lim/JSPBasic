<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:set var="url">jdbc:mariadb://bigdata.czzbjaoksklg.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<sql:setDataSource var="mariadb" 
url="${url}" driver="${drv}" 
user="${usr}" password="${pwd}" />

<sql:query dataSource="${mariadb}" var="rs">
	select * from EMPLOYEES
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employees2</title>
</head>
<body>

<c:forEach var="row" items="${rs.rows}">
	<p>${row.employee_id} ${row.first_name} ${row.last_name}</p>
	<p>${row.email} ${row.phone_number} ${row.hire_date} ${row.job_id}</p>
	<p>${row.salary} ${row.commission_pct} ${row.manager_id} ${row.department_id}</p>
	<hr>
</c:forEach>

</body>
</html>