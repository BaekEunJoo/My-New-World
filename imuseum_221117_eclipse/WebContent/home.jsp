<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
	<%@include file = "resources/common/style.jspf" %>
    <meta charset="utf-8">
<title>시작페이지</title>
<script
	src="resources/common/js/memberValidation.js"></script>
</head>

<body>    

<c:choose>
	<c:when test="${empty member }">
		<%@include file = "resources/common/guestMenu.jspf" %>	
	</c:when>	
	<c:when test="${not empty member }">
		<c:if test="${member.admin eq 'ADMIN' }">
			<%@include file = "resources/common/adminMenu.jspf" %>
		</c:if>
		<c:if test="${member.admin eq 'NORMAL' }">
			<%@include file = "resources/common/MemberMenu.jspf" %>
		</c:if>
	</c:when>
</c:choose>

<%@include file = "resources/common/main.jspf" %>

<!-- 모달창 -->
<%@include file = "resources/common/MemberModal.jspf" %>

<%@include file ="resources/common/footer.jspf" %>
</body>
</html>



