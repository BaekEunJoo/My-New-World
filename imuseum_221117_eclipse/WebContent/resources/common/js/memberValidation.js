	function validateLogin(frm){
		console.log($(frm).serialize());
		$.ajax("member/login.do", {
			type:"post",
			data:$(frm).serialize(),
			dataType:"text",
			success: function(data){
				alert("로그인 성공");
				location.href="member/login.do"
			},
			error: function(){
				alert("실패\n아이디와 비밀번호를 확인해주세요.");
			}
		});
	}
	
	(function() {
		  "use strict";
		  window.addEventListener("load", function() {
		    var form = document.getElementById("needs-validation");
		    form.addEventListener("submit", function(event) {
		      if (form.checkValidity() == false) {
		        event.preventDefault();
		        event.stopPropagation();
		        form.classList.add("was-validated");
		      }
		      
		      // 서버 연동 처리
		    }, false);
		  }, false);
		}());	