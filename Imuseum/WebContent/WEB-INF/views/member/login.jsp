<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>ㅎㅇ</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="<c:url value ='/resources/js/bootstrap.js'/>"></script>
<div id="container">
	<div class="logo">
        <a href="#"><img src="#"></a>
    </div>
	<form action="member/login.do" method="post">
            <div class="form-wrap">
                <div class="login-wrap">
                    <div id="lgn_btn">
	                   	<input type="text" name="id" class="input-field" placeholder=" 아이디" >
	                    <input type="password" name="password" class="input-field" placeholder=" 비밀번호" >
	                    <input type="submit" class="submit" value="로그인">
                	</div>
                </div>
                <div class="find_wrap" id="find_wrap">
	                <ul class="find_link">
						<li>
							<a href="#" class="find_text"> 아이디 찾기 </a>
						</li>
						<li class="bar">
							|
						</li>
						<li>
							<a href="#" class="find_text"> 비밀 번호 찾기 </a>
						</li>
						<li class="bar">
							|
						</li>
						<li>
							<a href="#" class="find_text"> 회원 가입 </a>
						</li>
					</ul>
				</div>

             </div>	 
	</form>
</div>	