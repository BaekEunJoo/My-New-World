<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="./jquery-3.4.1.min.js"></script>
<%@include file = "resources/common/style.jspf" %>
<script src="./bootstrapt/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/mypageNav.css">
<meta charset="UTF-8">
<title>개인정보 변경/탈퇴</title>
<style>
	.body {
		position : fixed;
		width : 70%;
		margin-left : 220px;
		margin-top : 50px;
	}
	.body > h6 { font-weight: bold;}
	.body > h6:after {
	   content: '';
	   width: 100%;
	   display: block;
	   margin-top: 20px;
	   padding-bottom:0;
	   border-bottom: 3px solid #000;
	}
	.info:after {
	   content: '';
	   width: 100%;
	   display: block;
	   margin-top: 20px;
	   padding-bottom:0;
	   border-bottom: 1px solid gray;
	}
</style>
</head>
<body>
	<%@include file = "resources/common/MemberMenu.jspf" %>
	<%@include file = "resources/common/main.jspf" %>
	<%@include file ="resources/common/mypageNav.jspf" %>
	
	<div class="body container">
		<h6>개인정보 변경/탈퇴</h6>
		<div class="info py-5">
			<div><h4>회원님의 개인정보를 소중하게 보호하려고 노력하고 있습니다.<br>비밀번호 확인 후 개인정보를 제공합니다.</h4></div>
			<br>
			<div>
				<form action="">
					<p>비밀번호</p>
					<input type="text" placeholder="비밀번호를 입력하세요" class="py-2 px-5 mb-5">
				</form>
			</div>
		</div>
		<div class="text-center ">
			<button type="submit" class="btn btn-secondary px-5">확인</button>
		</div>
		
	</div>
</body>
</html>