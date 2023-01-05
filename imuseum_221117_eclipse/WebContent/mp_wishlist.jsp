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
<title>위시리스트</title>
<style>
	.body {
		position : fixed;
		width : 70%;
		margin-left : 220px;
		margin-top : 50px;
	}
	.body > h6 { font-weight: bold;}
	.btn {
		width:100px;
		height:40px;
		margin-left:20px;
		background-color: black;
	}
	.count:after {
		content: "";
		display: block;
		width: 100%;
		border-bottom: 2px solid black;
		margin-top : 10px;
	}
</style>
</head>
<%@include file = "resources/common/mp_wishlistModal.jspf" %>
<body>
	<%@include file = "resources/common/MemberMenu.jspf" %>
	<%@include file = "resources/common/main.jspf" %>
	<%@include file ="resources/common/mypageNav.jspf" %>
	
		<div class="body container">
			<h6>위시리스트</h6>
			<p><i class="bi bi-exclamation-circle"></i> 위시리스트는 최대 200개까지 저장됩니다.</p>
			<!-- 모달 버튼 -->
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<button type="button" class="btn btn-dark me-md-2 bg-dark">전체선택</button>
				<button type="button" id="btn" class="btn btn-dark bg-dark">삭제</button>
			</div>
			
			<div class="count">
				<p>총 0개의 상품</p>
			</div>
			<!-- 목록 -->
			<div class="list">
				<table class="table" width="100%">
					<colgroup>
						<col style="width: 20%;">
						<col style="width: 20%;">
						<col style="width: 20%;">
						<col style="width: 20%;">
						<col style="width: 20%;">
					</colgroup>
					<tbody>
						<tr>
							<th>
							  	<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"><br>
							  	<img alt="sample" src="images/sample.png" style="width:100%"><br>
							  	<div class="pTitle">[Collabo] 마리메꼬 노트 (레드/화이트)</div>
							  	<div class="pPrice">3,300원</div>
							</th>
							<th>
							  	<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"><br>
							  	<img alt="sample" src="images/sample.png" style="width:100%"><br>
							  	<div class="pTitle">[Collabo] 마리메꼬 노트 (레드/화이트)</div>
							  	<div class="pPrice">3,300원</div>
							</th>
							<th>
							  	<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"><br>
							  	<img alt="sample" src="images/sample.png" style="width:100%"><br>
							  	<div class="pTitle">[Collabo] 마리메꼬 노트 (레드/화이트)</div>
							  	<div class="pPrice">3,300원</div>
							</th>
							<th>
							  	<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"><br>
							  	<img alt="sample" src="images/sample.png" style="width:100%"><br>
							  	<div class="pTitle">[Collabo] 마리메꼬 노트 (레드/화이트)</div>
							  	<div class="pPrice">3,300원</div>
							</th>
							<th>
							  	<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"><br>
							  	<img alt="sample" src="images/sample.png" style="width:100%"><br>
							  	<div class="pTitle">[Collabo] 마리메꼬 노트 (레드/화이트)</div>
							  	<div class="pPrice">3,300원</div>
							</th>
						</tr>
					</tbody>
				</table>
				<!-- 위시리스트에 상품 없을때 -->
				<!-- <div class="noP text-center mt-5">
					위시리스트에 담은 상품이 없습니다.
				</div> -->
			</div>
			
		</div>
</body>

<script>
	//if로 상품선택 안되어있을때, 선택되어있을때 뜨는 모달창 다름
	$('#btn').click(function(e){
		e.preventDefault();
		$('#modal').modal("show");
	});
</script>
</html>