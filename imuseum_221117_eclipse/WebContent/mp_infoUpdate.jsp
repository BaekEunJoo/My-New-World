<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	.body > h6:after, form:after {
	   content: '';
	   width: 100%;
	   display: block;
	   margin-top: 20px;
	   padding-bottom:0;
	   border-top: 3px solid #000;
	}
	.defaultInfo:after, .plusInfo > h6:after {
	   content: '';
	   width: 100%;
	   display: block;
	   margin-top: 20px;
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
		<form action="">
		<table>
			<thead>
				<tr>
					<td class="defaultInfo"><h6 class="mt-1">기본 회원 정보</h6></td>
				</tr>
			</thead>
			<tbody>
				<tr class="mb-3">
					<td>아이디</td>
					<td class="ms-5"><strong>test</strong></td>
				</tr>
				<tr class="mb-3">
					<td>비밀번호</td>
					<td class="ms-5"><strong>********</strong></td>
				</tr>
				<tr class="mb-3">
					<td></td>
					<td class="ms-5"><input type="password" placeholder="새 비밀번호를 입력하세요"></td>
				</tr>
				<tr class="mb-3">
					<td></td>
					<td class="ms-5"><input type="password" placeholder="새 비밀번호를 재입력하세요"></td>
				</tr>
				<tr class="mb-3">
					<td>내/외국인</td>
					<td class="ms-5"><strong>내국인</strong></td>
				</tr>
				<tr class="mb-3">
					<td>이름</td>
					<td class="ms-5"><strong>홍길동</strong></td>
				</tr>
				<tr class="mb-3">
					<td>생년월일</td>
					<td class="ms-5"><strong>1998.04.03</strong></td>
				</tr>
				<tr class="mb-3">
					<td>휴대폰번호</td>
					<td class="ms-5">
						<select>
							<option>010</option>
							<option>011</option>
							<option>016</option>
							<option>017/option>
						</select>-
						<input type="number">-
						<input type="number">
					</td>
				</tr>
				<tr class="mb-3">
					<td>이메일</td>
					<td class="ms-5"><strong>test@naver.com</strong></td>
				</tr>
				<tr class="mb-3">
					<td></td>
					<td class="ms-5">
						<input type="text">@
						<input type="text">
						<select>
							<option>naver.com</option>
							<option>hanmail.net</option>
							<option>gmail.com</option>
							<option>직접입력</option>
						</select>
					</td>
				</tr>
			</tbody>
		</table>
		</form>
		<!-- <div class="plusInfo">
			<h6 class="mt-3">추가 회원 정보</h6>
		</div>-->
		<div class="text-center mt-5">
			<button type="submit" class="btn btn-secondary px-5">취소</button>
			<button type="submit" class="btn btn-secondary px-5">저장</button>
		</div> 
		
	</div>
</body>
</html>