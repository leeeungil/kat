<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	
	    if (${idchk1} == 2) {
		alert('기존 비밀번호가 일치하지 않습니다. 확인후 다시 이용해주세요');
		
	    }

	    </script>

<script type="text/javascript">
function checkform1() {
	
	var chk1 = /\d/;
	var chk2 = /[a-z]/;
	
	// 패스워드 부분
	var pass = document.pwform.kat_password1.value;
    var old_pw = document.pwform.user_pass.value;

    // 비밀번호 입력여부 검사
    if (pwform.user_pass.value == "") {
		alert("기존 비밀번호를 입력해주세요.")
		pwform.user_pass.focus()
		return false;
	}

	if (pwform.kat_password1.value == "") {
		alert("새 비밀번호를 입력해주세요.")
		pwform.kat_password1.focus()
		return false;
	}
	// 비밀번호 길이 체크 (6~15자까지 허용)
	if (pass.length<6 || pass.length>15) {
		alert("비밀번호는 6~15자 입니다.");
		pwform.kat_password1.focus();
		return false;
	}

	// 비밀번호 형식 검사
	if (chk1.test(pass) && chk2.test(pass)) {
	} else {
		alert("비밀번호는 영어, 숫자 조합입니다.");
		pwform.kat_password1.focus();
		return false;
	}

	// 비밀번호 동일 여부 검사
	if (document.pwform.kat_password1.value != document.pwform.kat_password2.value) {
		alert("새 비밀번호가 일치하지 않습니다")
		document.pwform.kat_password2.value = "";
		document.pwform.kat_password2.focus();
		return false;
	}
	
	
	
	
}

</script>
<style>
#passwordForm {
	padding-top: 80px;
}
</style>

<div id="pwForm_div1">

	<div id="pwForm_div2">
		<br>
		<p>비밀번호변경</p>
		<br> 
		<strong>${user_id}</strong>님의회원정보입니다. <br>
		<br>
		<hr>
		<br>

		<form method="post" name="pwform"
			action="<%=request.getContextPath()%>/kat/mypage/pwchange2.do"
			onsubmit="return checkform1();">

			<ul>
				<li class="style_change_user_pass">현재 비밀번호 &nbsp;<input
					type="password" name="user_pass"></li>
				<li class="style_change_user_pass">새 비밀번호 &nbsp;<input
					type="password" name="kat_password1"></li>
				<li class="style_change_user_pass">새 비밀번호 확인 &nbsp;<input
					type="password" name="kat_password2"></li>
				<li class="style_change_user_pass"><input type="submit"
					value="확인"></li>
			</ul>
			<br> <br>
			<hr>
			<br>
			<h5>
				안전한 비밀번호로 내정보를 보호하세요. <br>다른 아이디/사이트에서 사용한 적 없는 비밀번호, <br>이전에
				사용한적없는 비밀번호가 안전합니다.
			</h5>
			<br>
			<br>
		</form>
	</div>
</div>


