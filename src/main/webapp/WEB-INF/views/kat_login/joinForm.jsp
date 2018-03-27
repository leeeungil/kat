<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
//ajax 이메일 인증 시작 ==========================
$(document).ready(function() {
	$("#emailcertification").click(function() {
	    var emailpass = $("#ajaxemail_1").val();
		var test = $("#kat_email").val().trim();
		if (test != null && test != '') {
			if (emailpass == 'Y') {
				$.ajax({
					url : '<%=request.getContextPath()%>/emailver.do',
					type : 'post',
					dataType : 'text',
					data : {
						emailver : test
					},
					success : function(data) {
						alert("인증코드 전송완료");

						$("#email_sendcode_1").val(data);
					}

				});
				$("#kk_emailver").attr("disabled", true);
				$("#kk_emailver").val("전송 완료");
				
			} else {
				alert("이메일 중복확인 후 이용해주세요.");
			}

		 }

	});
});

function okok(){
	var sendcode= document.getElementById("email_sendcode_1").value;
	var usercode = document.getElementById("user_sendcode").value;
	if(sendcode==usercode){
		alert("인증이 성공하였습니다.");
		$("#email_sendcode_2").val("y");
	}else{
		alert("인증에 실패하셨습니다.");
	}
}

function emailfocus(){
	$("#email_sendcode_2").val("n");
}


// ajax 이메일 인증 끝 ==========================
	
/* ajax id 중복체크	 */
	$(document).ready(function() {
	$("#ajaxid").click(function() {
		
		var test = $("#kat_id").val().trim();
		if (test != null && test != '') 
			
				$.ajax({
					url : '<%=request.getContextPath()%>/ajaxidchk.do',
					type : 'post',
					dataType : 'text',
					data : {
						checkAjaxId : test
					},
					success : function(data) {

						if (data == 0) {
							$("#idspan").text("사용가능한 아이디입니다.").css('color','black');
							 $("#ajaxid_1").val('Y');
						}

						else {
							$("#idspan").text("중복된 아이디입니다.").css('color','red');
							$("#ajaxid_1").val('N');
						}
					}
				});

		});
	});
	
/* ajax email 중복체크  */
	$(document).ready(function() {
		$("#ajaxemail").click(function() {
			
			var test = $("#kat_email").val().trim();
			if (test != null && test != '') 
				
					$.ajax({
						url : '<%=request.getContextPath()%>/ajaxemailchk.do',
															type : 'post',
															dataType : 'text',
															data : {
																checkAjaxEmail : test
															},
															success : function(
																	data) {
																emailspan
																if (data == 0) {
																	$(
																			"#emailspan")
																			.text(
																					"사용가능한 이메일입니다.")
																			.css(
																					'color',
																					'black');
																	$(
																			"#ajaxemail_1")
																			.val(
																					'Y');
																}

																else {
																	$(
																			"#emailspan")
																			.text(
																					"중복된 이메일 이메일입니다.")
																			.css(
																					'color',
																					'red');
																	$(
																			"#ajaxemail_1")
																			.val(
																					'N');
																}
															}
														});

										});
					});

	function searchaddr() {

		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('address1').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('address2').focus();
					}
				}).open();
	}

	function checkform() {

		var id = document.addform.kat_id.value;

		var regx = /^[a-zA-Z0-9]*$/;

		var chk1 = /\d/;

		var kor = /^[가-힣]*$/;

		var nameke = /^[가-힣|a-zA-Z]*$/;

		var chk2 = /[a-z]/;

		var chk3 = /^[0-9]*$/;

		var chk4 = /^\d{2,3}-\d{3,4}-\d{4}$/;

		var right = 0;

		var a = 0;

		// 아이디 입력여부 검사

		if (addform.kat_id.value == "") {

			alert("아이디를 입력해주세요.")

			addform.kat_id.focus()

			return false;

		}

		// 아이디 유효성 검사 (영문소문자, 숫자만 허용)

		if (!regx.test(id)) {

			alert("아이디는 영어, 숫자만 입력가능합니다.");

			addform.kat_id.focus();

			return false;

		}

		// 아이디 길이 체크(5~12자 까지 허용)

		if (id.length<5 || id.length>12) {

			alert("아이디는 5~12자 입니다.");

			addform.kat_id.focus();

			return false;

		}

		// 이름 입력여부 검사

		var name = document.addform.kat_name.value;

		if (name.length == 0 || name == null) {

			alert("이름을 입력하십시오");

			addform.kat_name.focus();

			return false;

		}

		// 이름 형식 여부 검사

		if (!nameke.test(name)) {

			alert("이름은 한글, 영어만 입력가능합니다.");

			addform.kat_name.focus();

			return false;

		}

		// 패스워드 부분

		var pass = document.addform.kat_password1.value;

		// 비밀번호 입력여부 검사

		if (addform.kat_password1.value == "") {

			alert("비밀번호를 입력해주세요.")

			addform.kat_password1.focus()

			return false;

		}

		// 비밀번호 길이 체크 (6~15자까지 허용)

		if (pass.length<6 || pass.length>15) {

			alert("비밀번호는 6~15자 입니다.");

			addform.kat_password1.focus();

			return false;

		}

		// 비밀번호 형식 검사

		if (chk1.test(pass) && chk2.test(pass)) {

		} else {

			alert("비밀번호는 영어, 숫자 조합입니다.");

			addform.kat_password1.focus();

			return false;

		}

		// 비밀번호 동일 여부 검사

		if (document.addform.kat_password1.value != document.addform.kat_password2.value) {

			alert("비밀번호가 일치하지 않습니다")

			document.addform.kat_password2.value = ""

			document.addform.kat_password2.focus()

			return false;

		}

		// 전화번호 입력여부 검사

		var tel = document.addform.kat_phone.value;

		if (tel.length == 0 || tel == null) {

			alert("전화번호를 입력하십시오");

			addform.kat_phone.focus();

			return false;

		}

		// 전화번호 형식 검사

		if (!chk4.test(tel)) {

			alert("전화번호의 형식은 010-1234-5678입니다");

			addform.kat_phone.focus();

			return false;

		}

		// 이메일 입력여부 검사

		var email = document.addform.kat_email.value;

		if (email.length == 0 || email == null) {

			alert("이메일을 입력하십시오");

			addform.kat_email.focus();

			return false;

		}

		var emailyn = document.getElementById("email_sendcode_2").value.trim();
		if (emailyn == "n") {
			alert("이메일인증을 해주세요.");
			return false;
		}

		if ($("#ajaxid_1").val() == 'N') {

			alert('ID체크를 해주세요.')

			return false;
		}

		// 매장명 입력여부 검사

		var BusinessValue = document.addform.category.value;

		if (BusinessValue == ('business')) {

			var businessname = document.addform.business_name.value;

			if (addform.business_name.value == "") {

				alert("매장명을 입력하십시오");

				addform.business_name.focus();

				return false;

			}

			// 매장명 형식 여부 검사

			/* if (!nameke.test(businessname)) {

			 alert("매장명은 한글, 영어만 입력가능합니다.");

			 addform.business_name.focus();

			 return false;

			} */

			if (addform.postcode.value == "") {

				alert("우편번호를 입력하십시오");

				addform.postcode.focus();

				return false;

			}

			if (addform.address2.value == "") {

				alert("상세주소를 입력하십시오");

				addform.address2.focus();

				return false;

			}

			var businesstel = document.addform.business_phone.value;

			// 매장번호 입력여부 검사

			if (addform.business_phone.value == "") {

				alert("매장전화번호를 입력하십시오");

				addform.business_phone.focus();

				return false;

			}

			// 전화번호 형식 검사

			if (!chk4.test(businesstel)) {

				alert("매장전화번호는 형식은 010-1234-5678입니다");

				addform.business_phone.focus();

				return false;

			}

			var businessnum = document.addform.business_num.value;

			// 사업자 등록번호 입력 여부 검사

			if (addform.business_num.value == "") {

				alert("사업자 등록번호를 입력하십시오");

				addform.business_num.focus();

				return false;

			}

			if (!chk3.test(businessnum)) {

				alert("사업자 등록번호는 숫자만입력가능합니다");

				addform.business_num.focus();

				return false;

			}

		}

		return true;

	}
</script>


<div id="join_kat">
	<div id=join_center>
		<form method="post" name="addform"
			action="<%=request.getContextPath()%>/kat/join/joinFormInsert.do"
			onsubmit="return checkform();">
			<div id="Add" class="Tabs">
				<div id="add_search_border">
					<div id="add_search_header">
						<img class="member_png"
							src="<%=request.getContextPath()%>/uploadfile/icon/member.png">
						회원 가입 정보등록
					</div>
					<ul>
						<li id="add_search_li_border">등록여부 선택</li>
						<li><input type="radio" id="level2" name="level"
							value="2" class="businessbtn"> 사업자회원 &nbsp;</li>
						<li><input type="radio" id="level1" name="level"
							value="1" class="memberbtn" checked> 일반회원 &nbsp;</li>

					</ul>
					
					<ul>
						<li id="add_search_li_border">아이디</li>
						<li class="textstyle"><input type="text" id="kat_id"
							name="user_id"></li>
						<li class="textstyle"><input type="button" id="ajaxid"
							value="ID 중복체크"> <input type="hidden" id="ajaxid_1"
							value="N"></li>
					</ul>
					&nbsp;&nbsp;&nbsp;<span id="idspan"></span>
					<ul>
						<li id="add_search_li_border">이름</li>
						<li class="textstyle"><input type="text" id="kat_name"
							name="name"></li>
					</ul>
					<ul>
						<li id="add_search_li_border">비밀번호</li>
						<li class="textstyle"><input type="password"
							id="kat_password1" name="password"></li>
					</ul>
					<ul>
						<li id="add_search_li_border">비밀번호 확인</li>
						<li class="textstyle"><input type="password"
							id="kat_password2" name="kat_password2"></li>
					</ul>
					<ul>
						<li id="add_search_li_border">전화번호</li>
						<li class="textstyle"><input type="text" id="kat_phone"
							name="phone"></li>
						<li>ex) 010-1234-5678</li>
					</ul>
					<ul>
						<li id="add_search_li_border">이메일</li>
						<li class="textstyle"><input type="email" id="kat_email"
							name="email" onfocus="emailfocus()"></li>
						<li class="textstyle"><input type="button" value="이메일 확인"
							id="ajaxemail"><input type="hidden" id="ajaxemail_1"
							value="N"></li>
						<li class="textstyle"><input type="button" value="이메일인증"
							id="emailcertification"> <input type="hidden"
							id="email_sendcode_1" value="jr3110"> <input type="hidden"
							id="email_sendcode_2" value="n"></li>
					</ul>
					&nbsp;&nbsp;&nbsp;&nbsp;<span id="emailspan"></span>
					<ul>
						<li id="add_search_li_border">인증코드확인</li>
						<li class="textstyle"><input type="text" id="user_sendcode">
							<input type="button" value="확인" onclick="okok()"></li>
					</ul>
					
					
					<ul id="business_display1" style="display: none">
						<li id="add_search_li_border">매장 이름</li>
						<li class="textstyle"><input type="text" id="business_Name"
							name="company"></li>
					</ul>
					<ul id="business_display2" style="display: none">
						<li id="add_search_li_border">매장 주소</li>
						<li class="textstyle"><input type="text" id="postcode"
							name="postcode" placeholder="우편번호" readonly> <input
							type="button" onclick="searchaddr()" value="우편번호 찾기"
							id="kk_searchaddr"></li>
						<li class="textstyle"><input type="text" id="address1"
							name="address1" placeholder="주소" readonly> <br></li>
						<li class="textstyle"><input type="text" id="address2"
							name="address2" placeholder="상세주소"></li>
					</ul>
					<ul id="business_display3" style="display: none">
						<li id="add_search_li_border">매장 전화번호</li>
						<li class="textstyle"><input type="text" id="business_phone"
							name="business_phone"></li>
						<li>ex) 031-1234-5678</li>
					</ul>
					<ul id="business_display4" style="display: none">
						<li id="add_search_li_border">사업장등록 번호</li>
						<li class="textstyle"><input type="text" id="business_num"
							name="business_number"></li>
					</ul>
					<ul id="btnstyle">
						<li><input type="submit" id="Registration"
							name="Registrationbtn" value="등록"></li>
						<li><input type="reset" id="reset" name="resetbtn" value="취소"
							onclick="location.href='<%=request.getContextPath()%>/kat_main.do'"></li>
					</ul>
				</div>
			</div>
		</form>
	</div>
</div>