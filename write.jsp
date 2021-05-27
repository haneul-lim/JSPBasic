<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<c:if test="${empty sessionScope.userid}" >
	<script>alert('로그인 하세요!');
		location.href='/login.jsp'
	</script>
</c:if>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>세미프로젝트 V1-게시판</title>
		<link rel="stylesheet" href="/css/base.css">
		<style>
			#boardfrm { width:600px; margin: 0 auto;
				padding-top: 50px; }
			#boardfrm div { margin-bottom: 10px; }
			#boardfrm div label { font-weight: bold;
				display:inline-block; width: 120px; 
				text-align: right; }
			#contents { display: inline-block;
				width: 450px; height: 150px; }
			/* div:nth-child(3) > label { vertical-align: top; } */
			.dragup { vertical-align: top; }
		</style>
	</head>
<body>
	<div id="wrap">
	<%@ include file="/layout/header.jsp" %>
	<div id="container">
		<h1>게시판 - 글쓰기</h1>
		<form name="boardfrm" id="boardfrm">
			<div><label>제목</label>
				<input type="text" name="title" /></div>
			<div><label>작성자</label>
				<input type="text" name="userid" 
				readonly value="${sessionScope.userid}" /></div>
			<div><label class="dragup">본문</label>
				<textarea name="contents" id="contents"></textarea></div>	
			<div><label></label>
				<button type="button" id="writebtn">입력완료</button>
				<button type="reset">다시입력</button>
			</div>
		</form>
	</div>
	</div>
	
	<script>
        	var writebtn = document.getElementById('writebtn');
        	writebtn.addEventListener('click', writeok);
        	
        	function writeok() {
        		var frm = document.getElementById('boardfrm');
        		if(frm.title.value == '') {
        			alert('제목을 작성하세요!');
        			frm.title.focus();
        		} else if (frm.contents.value == '') {
        			alert('본문을 작성하세요!');
        			frm.contents.focus();
        		} else {
        			frm.method = "post";
        			frm.action = 'writeok.jsp';
        			frm.submit();
        		}
        	}
        </script>
	
</body>
</html> 