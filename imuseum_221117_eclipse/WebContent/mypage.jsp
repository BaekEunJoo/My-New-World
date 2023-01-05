<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "resources/common/style.jspf" %>
<link rel="stylesheet" type="text/css" href="resources/css/mypageNav.css">
<link rel="stylesheet" type="text/css" href="resources/css/mypage.css">
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="main.css">  -->
<meta charset="UTF-8">
<title>마이페이지 메인</title>
</head>
<body>
	<%@include file = "resources/common/MemberMenu.jspf" %>
	<%@include file = "resources/common/main.jspf" %>
	<%@include file ="resources/common/mypageNav.jspf" %>
	<div class="body container">
		<div class="body1 bg-light mb-5">
			<div class="welcome row">
				<div class="message col p-6" style="line-height: 58px; height: 58px; width: 95%; max-width: 760px; vertical-align: center; text-align: center">
				<div class="owner text-center"><b>백은주</b>님<br>안녕하세요.<br></div>
				  <button type="button" class="btn btn-secondary">나의 회원등급</button><br>
				  <button type="button" class="btn btn-secondary">개인정보 수정</button>
				</div>
				<div class="mainGrade col lg p-3 m-2" style="width: 100%; text-align: center">
					<img src="images/mainGrade.PNG" alt="회원등급" style="width: 95%; max-width: 760px; vertical-align: center">
				</div>
				<div class="mainInfo col p-6" style="line-height: 65px; text-align: left; width: 65px; height: 65px;">
					<div class="border-bottom m-3">나의 티켓&nbsp;&nbsp;&nbsp;&nbsp;0</div>
					<div class="border-bottom m-3">상품 주문/배송&nbsp;&nbsp;&nbsp;&nbsp;0</div>
					<div class="border-bottom m-3">나의 문의&nbsp;&nbsp;&nbsp;&nbsp;0</div>
				</div>
			</div>
		</div>
		<div class="body2 row" style="bs-gap: 5rem;">
			<div class="ticket col">
				<div class="ticketTitle">
					<img src="images/ticket.JPG" alt="최근 예매 내역" class="body2Img" style="width:10%">
					<h4><b>최근 예매 내역 ></b></h4>
					<h6>회원님께서 최근 전시 또는 프로그램 티켓을 예매하신 내역입니다.</h6>
				</div>
				<div class="orderContent text-center">
					최근 예매 내역이 없습니다.<br>빠른 시일 내에 다시 만나요.
				</div>
			</div>
			<div class="order col">
				<div class="orderTitle">
					<img src="images/order.JPG" alt="최근 주문 내역" class="body2Img" style="width:10%">
					<h4><b>최근 주문 내역 ></b></h4>
					<h6>회원님께서 최근 상품을 구매하신 내역입니다.</h6>
				</div>
				<div class="ticketContent text-center">
					최근 주문 내역이 없습니다.
				</div>
			</div>
		</div>
	</div>
<!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
 -->
 <%@include file ="resources/common/footer.jspf" %>
 </body>
</html>