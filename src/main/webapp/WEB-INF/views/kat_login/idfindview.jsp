<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript">

$(document).ready(function() {
	$("#idfindbtn").click(function() {
	   /*  var emailpass = $("#ajaxemail_1").val(); */
		var test = $("#kat_email").val().trim();
		if (test != null && test != '') {
			
			/* if (emailpass == 'Y') { */ 
				$.ajax({ 
					url : '<%=request.getContextPath()%>/idfind.do',
					type : 'post',
					dataType : 'text',
					data : {
						idfind : test
						
					},					
					success : function(data) {
						
						
						if ( data != null){
						alert("이메일로 아이디를 전송하였습니다. 확인해주세요!");
						location.href = "<%=request.getContextPath()%>/kat_main.do";
						}

						/* $("#email_sendcode_1").val(data); */
					},
					error : function(data) {
						alert("이메일이 존재하지 않습니다.");
						
					}

				});
				$("#kk_emailver").attr("disabled", true);
				$("#kk_emailver").val("전송 완료");
				
			} else {
				alert("이메일을 입력해주세요.");
			}

		/*  } */

	});
});



</script>

<div id="idfinddiv_1">

	<div id="idfinddiv_2">

		<p>이메일 주소로 아이디 찾기</p>
		<br>
		<hr>
		<br>


			<ul>

				<h5>아이디는 가입시 등록한 메일주소로 알려드립니다.<br>가입할때 등록한 메일 주소를 입력하고,<br>확인 버튼을 클릭해주세요.</h5><br>
				
				<li class="style_user_idfind"><input type="email"
					name="kat_email" id="kat_email"> <input type="button" value="확인" id="idfindbtn"></li>
			</ul>
			<br> <br>
			<hr>

	</div>
</div>