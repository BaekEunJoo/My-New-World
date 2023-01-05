<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작페이지</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
	
<div id="container">
	<h1>게시판 프로그램 [index.jsp]</h1>
	<hr>
	<c:if test="${not empty member }">
		<a href="modifyFormMove.do">회원 정보 수정</a>	
		<a href="delete.do">회원 정보 삭제</a>
	</c:if>
</div>
	

	
</body>
</html>



