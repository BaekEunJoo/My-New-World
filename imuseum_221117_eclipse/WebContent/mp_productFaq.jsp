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
<title>상품문의</title>
<style>
	.body {
		position : fixed;
		width : 70%;
		margin-left : 220px;
		margin-top : 50px;
	}
	.body > h6 { font-weight: bold;}
	.body > h6:after {
		content: "";
		display: block;
		width: 100%;
		border-bottom: 2px solid black;
		margin-top : 10px;
	}
</style>
</head>
<body>
	<%@include file = "resources/common/MemberMenu.jspf" %>
	<%@include file = "resources/common/main.jspf" %>
	<%@include file ="resources/common/mypageNav.jspf" %>
	
		<div class="body container">
			<h6>상품문의</h6>
			<table class="table table-borderless text-center">
				<colgroup>
					<col style="width: 20%;">
					<col style="width: 50%;">
					<col style="width: 20%;">
					<col style="width: 10%;">
				</colgroup>
				<thead>
				  <tr>
				    <th>상품정보</th>
				    <th>문의내용</th>
				    <th>답변상태</th>
				    <th></th>
				  </tr>
				</thead>
				<tbody>
					<tr>
						<th>
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false">
						    	<img alt="sample" src="images/sample.png" style="width:100%">
						    	<b>[어쨌든, 사랑] 클립보드 5종 (이은혜,이미라,원수연,박은아,신일숙)</b>
					    	</a>
						</th>
						<th></th>
						<th></th>
						<th></th>
					</tr>
					
				</tbody>
				<!-- <tbody>
					<tr>
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					    하나의 item입니다. data-parent 설청과 href 설정만 제대로 하면 문제없이 작동합니다.
					    <div class="panel panel-default">
					    <div class="panel-heading" role="tab">
						    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false">
						    	[어쨌든, 사랑] 클립보드 5종 (이은혜,이미라,원수연,박은아,신일숙)
						    </a>
					    </div>
					    <div id="collapse1" class="panel-collapse collapse bg-info" role="tabpanel">
					       <div class="panel-body">
					         <table class="">
							     <tr>
									<td></td>				            
									<td></td>				            
									<td></td>				            
									<td></td>				            
							     </tr>
					         	<tr>
					         		<td rowspan="4">Q.상품문의내용~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``</td>
					         	</tr>
					         	<tr>
					         		<td rowspan="4">A.상품문의답변~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``</td>
					         	</tr>
					         </table>
					       </div>
					     </div>
					   </div>
					  </div>
					  </td>
					  <td>Mark</td>
					  <td>Otto</td>
					</tr>
				  <tr>
				    <th scope="row">2</th>
				    <td>Jacob</td>
				    <td>Thornton</td>
				    <td>@fat</td>
				  </tr>
				</tbody> -->
			</table>
			
		</div> <!-- body end -->
</body>
</html>