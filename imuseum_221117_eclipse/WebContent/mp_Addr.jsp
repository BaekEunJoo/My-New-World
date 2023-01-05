<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="./jquery-3.4.1.min.js"></script>
<%@include file = "resources/common/style.jspf" %>
<script src="./bootstrapt/js/bootstrap.min.js"></script>
<script>
	const myModal = document.getElementById('myModal')
	const myInput = document.getElementById('myInput')
	
	myModal.addEventListener('shown.bs.modal', () => {
	  myInput.focus()
	})
</script>
<link rel="stylesheet" type="text/css" href="resources/css/mypageNav.css">
<meta charset="UTF-8">
<title>배송지 관리</title>
<style>
	.body {
		position : fixed;
		width : 70%;
		/* height : 100%; */
		margin-left : 220px;
		margin-top : 50px; 
	}
	.body > h6 { font-weight: bold;}
	#btn1, #btn2 { margin-left:20px; }
	.count:after {
		content: "";
		display: block;
		width: 100%;
		border-bottom: 2px solid black;
		margin-top : 10px;
	}
	.form-check:after {
		content: "";
		display: block;
		width: 100%;
		border-bottom: 1px solid gray;
		margin-top : 10px;
	}
	.page-item > a{
		color : black;
		border : none;
	}
</style>
</head>
	<%@include file = "resources/common/mp_AddrModal.jspf" %>
<body>
	<%@include file = "resources/common/MemberMenu.jspf" %>
	<%@include file = "resources/common/main.jspf" %>
	<%@include file ="resources/common/mypageNav.jspf" %>
		<div class="body container">
			<h6>배송지 관리</h6>
			<!-- 모달 버튼 -->
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<button type="button" id="btn1" class="btn-primary me-md-2 bg-dark">기본배송지로 설정</button>
				<button type="button" id="btn2" class="btn-primary bg-dark">배송지 추가</button>
			</div>
			
			<div class="count">
				<p>총 1건</p>
			</div>
			<!-- 배송지 정보 -->
			<div class="form-check">
			  <input class="form-check-input mx-2" style="position:relative; top:80px;" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
			  <label class="form-check-label" for="exampleRadios2"></label>
			  <div class="form-content" style="position:relative; left:100px;">
			  	<h4><b>수령인</b></h4>
			  	<p style="font-size:20px;">서울시어쩌고저쩌고주소</p>
			  	<h6 style="font-size:7px;">[우편번호]</h6>
			  	<p>010-1111-1111</p>
			  </div>
			</div>
			
			<!-- 페이징 처리 -->
			<nav aria-label="Page navigation example" class="mt-3">
			  <ul class="pagination justify-content-center">
			    <li class="page-item disabled">
			      <a class="page-link"><<</a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#">>></a>
			    </li>
			  </ul>
			</nav>
			
		</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$('#btn1').click(function(e){
		e.preventDefault();
		$('#modal1').modal("show");
	});
	$('#btn2').click(function(e){
		e.preventDefault();
		$('#modal2').modal("show");
	});
	
	 function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</body>
</html>