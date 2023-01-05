<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "resources/common/style.jspf" %>
<meta charset="UTF-8">
<title>FAQ</title>
<style>
	/* *{padding:0;margin: 0;} */
    ul li{list-style: none;}
    /* .clearfix:after{content: "";display: block;clear: both;} */
    /* h1{text-align: center;padding: 20px 0;} */
    .f_question1>ul>li,.f_answer1>ul>li{float: left;}
    .fnq{width: 100%;line-height:300%;margin: 0 auto;}
    .f_question1{position: relative}
    .f_answer1{background: #eee;display: none;}
    .f_answer1.on{display: block;}
    .f_question1>ul>li:nth-child(1){width: 7%;text-align: center;}
    .f_answer1>ul>li:nth-child(1){width: 7%;text-align: center;}
    .f_question1>ul>li:nth-child(2){width: 13%;text-align: center;}
    .f_question1>ul>li:nth-child(3){width:75%; }
    .f_question1>ul>li:nth-child(4){width:5%; }
    .f_q_link{width: 100%;height: 100%;position:absolute;top: 0;left: 0;}
    
    .input {
	  background-color: transparent;
	  border: none;
	  border-bottom: 1px solid #CCC;
	  color: #555;
	  box-sizing: border-box;
	  font-size: 18px;
	  height: 50px;
	  left: 50%;
	  margin: -25px 0 0 -100px;
	  padding: 10px 0px;
	  position: relative;
	  top: 50%;
	  width: 200px;
	
	  &:focus {
	    outline: none;    
	  }
	}
	.input:focus+.underline {
	  transform: scale(1);
	}
	form { float : right; }
	.nav-link:hover {
	   color:black;
	}
	.nav-link:focus:after {
	   content: '';
	   width: 100%;
	   display: block;
	   position: relative;
	   margin-top: 20px;
	   padding-bottom:0;
	   border-bottom: 3px solid #000;
	}
</style>
<script>
	$(function(){
	    var className =""  //변수를 선언한다.
	     $('.f_q_link').on({    //버튼을
	         click: function(){  //클릭했을때 
	              className=$(this).parent().next().attr('class').slice(-2); 
	              //보여줄 li의 class이름을 뒤에서 두자리(on)를 변수에 담는다.
	             if(className=='on'){  //만약 클래스명이 'on'이면
	                 $(this).parent().next().removeClass('on'); //class'on' 삭제
	                $(this).prev().children().eq(3).children()
	                .css({transform:'rotate(0deg)',transition:'all 0.4s',color:'#000'});
	                 //화살표 아이콘의 원래 css로 돌리기
	             }
	             else if(className!='on'){  //만약 클래스명이 'on'이 아니면
	                 $(this).parent().next().addClass('on');  //class'on' 추가
	                $(this).prev().children().eq(3).children()
	               .css({transform:'rotate(180deg)',transition:'all 0.4s',color:'#7070ea'});  
	                // 화살표 아이콘 css 수정
	             }
	          }
	      });
	  });
</script>
</head>
<body>
	<%@include file = "resources/common/guestMenu.jspf" %>
	<%@include file = "resources/common/main.jspf" %>
	<div class="body container">
		<form action="">
			<table>
				<tr>
					<td>
						<div class="my-3">
							<select class="form-select form-select-lg px-5 py-2" aria-label=".form-select-lg example">
							  <option value="제목">제목</option>
							  <option value="내용">내용</option>
							</select>
							<input type="text" name="searchKeyword" placeholder="검색어를 입력하세요" class="px-5 py-2">
							<input type="submit" value="검색" class="px-5 py-2">
						</div>
					</td>
				</tr>
			</table>
		</form>
		<table class="table table-borderless">
			<tr>
				<td>
					<hr>
					<ul class="nav justify-content-center text-secondary">
					  <li class="nav-item">
					    <a class="nav-link active text-secondary" aria-current="page" href="#">전체</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link text-secondary" href="#">전시/프로그램</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link text-secondary" href="#">관람/예약</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link text-secondary" href="#">뮤지엄샵/온라인 SHOP</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link text-secondary" href="#">위치/시설안내</a>
					  </li>
					</ul>
				</td>
			</tr>
		</table>
		
		<table class="table">
		  <tbody>
		    <tr>
		      <td scope="row">
			  	<ul class="fnq">
			        <li class="f_question1">
			            <ul class="clearfix">
			                <li></li>
			                <li>전시/프로그램</li>
			                <li>교육 프로그램은 어떻게 참여하나요?</li>
			                <li><i class="fa fa-angle-double-up"></i></li>
			            </ul>
			            <a href="#" class="f_q_link"></a>
			        </li>
			        <li class="f_answer1">
			            <ul class="clearfix">
			                <li></li>
			                <li>
			                	디뮤지엄의 교육 프로그램은 사전예약제로 운영됩니다.<br>
								디뮤지엄 홈페이지에 로그인 후, 'LEARN' 또는 'TICKET'메뉴에서 각 연령별로 제공되는 프로그램들을 확인해 보세요. <br>
								참여 하고자 하는 프로그램을 찾으셨다면, 미술관 홈페이지에서 바로 예매할 수 있습니다. <br>
								예매가 끝나면, 여러분의 모바일 앱으로 티켓이 전송됩니다. 이 티켓과 함께 예매 하신 교육 당일 미술관으로 오셔서 프로그램에 참여 하시면 됩니다! <br>
								(미술관 티켓 박스에서도 티켓을 교환 할 수 있으니 참고해주세요.)<br>
								교육 참여에 대해 더 궁금하신 점이 있으시다면, 문의하기 또는 디뮤지엄 교육팀 (02-6233-7217)으로 연락 주시면, 보다 상세한 안내를 받을 수 있습니다. 
			                </li>
			                <li></li>
			            </ul>
			        </li>
			    </ul>
			  </td>
		    </tr>
		    <tr>
		      <td scope="row">
			  	<ul class="fnq">
			        <li class="f_question1">
			            <ul class="clearfix">
			                <li></li>
			                <li>전시/프로그램</li>
			                <li>교육 프로그램은 어떻게 참여하나요?</li>
			                <li><i class="fa fa-angle-double-up"></i></li>
			            </ul>
			            <a href="#" class="f_q_link"></a>
			        </li>
			        <li class="f_answer1">
			            <ul class="clearfix">
			                <li></li>
			                <li>
			                	디뮤지엄의 교육 프로그램은 사전예약제로 운영됩니다.<br>
								디뮤지엄 홈페이지에 로그인 후, 'LEARN' 또는 'TICKET'메뉴에서 각 연령별로 제공되는 프로그램들을 확인해 보세요. <br>
								참여 하고자 하는 프로그램을 찾으셨다면, 미술관 홈페이지에서 바로 예매할 수 있습니다. <br>
								예매가 끝나면, 여러분의 모바일 앱으로 티켓이 전송됩니다. 이 티켓과 함께 예매 하신 교육 당일 미술관으로 오셔서 프로그램에 참여 하시면 됩니다! <br>
								(미술관 티켓 박스에서도 티켓을 교환 할 수 있으니 참고해주세요.)<br>
								교육 참여에 대해 더 궁금하신 점이 있으시다면, 문의하기 또는 디뮤지엄 교육팀 (02-6233-7217)으로 연락 주시면, 보다 상세한 안내를 받을 수 있습니다. 
			                </li>
			                <li></li>
			            </ul>
			        </li>
			    </ul>
			  </td>
		    </tr>
		    <tr>
		      <td scope="row">
			  	<ul class="fnq">
			        <li class="f_question1">
			            <ul class="clearfix">
			                <li></li>
			                <li>전시/프로그램</li>
			                <li>교육 프로그램은 어떻게 참여하나요?</li>
			                <li><i class="fa fa-angle-double-up"></i></li>
			            </ul>
			            <a href="#" class="f_q_link"></a>
			        </li>
			        <li class="f_answer1">
			            <ul class="clearfix">
			                <li></li>
			                <li>
			                	디뮤지엄의 교육 프로그램은 사전예약제로 운영됩니다.<br>
								디뮤지엄 홈페이지에 로그인 후, 'LEARN' 또는 'TICKET'메뉴에서 각 연령별로 제공되는 프로그램들을 확인해 보세요. <br>
								참여 하고자 하는 프로그램을 찾으셨다면, 미술관 홈페이지에서 바로 예매할 수 있습니다. <br>
								예매가 끝나면, 여러분의 모바일 앱으로 티켓이 전송됩니다. 이 티켓과 함께 예매 하신 교육 당일 미술관으로 오셔서 프로그램에 참여 하시면 됩니다! <br>
								(미술관 티켓 박스에서도 티켓을 교환 할 수 있으니 참고해주세요.)<br>
								교육 참여에 대해 더 궁금하신 점이 있으시다면, 문의하기 또는 디뮤지엄 교육팀 (02-6233-7217)으로 연락 주시면, 보다 상세한 안내를 받을 수 있습니다. 
			                </li>
			                <li></li>
			            </ul>
			        </li>
			    </ul>
			  </td>
		    </tr>
		    <tr>
		      <td scope="row">
			  	<ul class="fnq">
			        <li class="f_question1">
			            <ul class="clearfix">
			                <li></li>
			                <li>전시/프로그램</li>
			                <li>교육 프로그램은 어떻게 참여하나요?</li>
			                <li><i class="fa fa-angle-double-up"></i></li>
			            </ul>
			            <a href="#" class="f_q_link"></a>
			        </li>
			        <li class="f_answer1">
			            <ul class="clearfix">
			                <li></li>
			                <li>
			                	디뮤지엄의 교육 프로그램은 사전예약제로 운영됩니다.<br>
								디뮤지엄 홈페이지에 로그인 후, 'LEARN' 또는 'TICKET'메뉴에서 각 연령별로 제공되는 프로그램들을 확인해 보세요. <br>
								참여 하고자 하는 프로그램을 찾으셨다면, 미술관 홈페이지에서 바로 예매할 수 있습니다. <br>
								예매가 끝나면, 여러분의 모바일 앱으로 티켓이 전송됩니다. 이 티켓과 함께 예매 하신 교육 당일 미술관으로 오셔서 프로그램에 참여 하시면 됩니다! <br>
								(미술관 티켓 박스에서도 티켓을 교환 할 수 있으니 참고해주세요.)<br>
								교육 참여에 대해 더 궁금하신 점이 있으시다면, 문의하기 또는 디뮤지엄 교육팀 (02-6233-7217)으로 연락 주시면, 보다 상세한 안내를 받을 수 있습니다. 
			                </li>
			                <li></li>
			            </ul>
			        </li>
			    </ul>
			  </td>
		    </tr>
		  </tbody>
		</table>
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
		<!-- 회색 박스 -->			
		<div class="box row bg-light px-3 py-4 d-flex justify-content-center">
	    	<div class="align-middle mx-auto">
				FAQ를 이용하시면 궁금증을 더 빠르게 해결하실 수 있습니다.<br>원하는 답변을 얻지 못하셨나요?<br>문의하기를 이용해 보세요.
			</div>
			<button type="button" class="bg-dark btn btn-secondary mx-auto px-4">문의하기</button>
		</div>
		
	</div>
	
 	<%@include file ="resources/common/footer.jspf" %>
</body>
</html>