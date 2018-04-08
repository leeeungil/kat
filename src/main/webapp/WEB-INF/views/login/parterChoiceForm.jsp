<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>

/*checkbox 약관 전체동의*/
$(document).ready(function(){
	$('.check-all').click(function(){
		$('.service_check').prop('checked',this.checked);
	});
	
	
	
});
function joinFormBlankChk() {
	if($('input[name=name]').val()=='') {
		alert('을 입력해주세요.')
		return false;
	} else if($('input[name=email]').val()=='') {
		alert('이메일을 입력해주세요.')
		return false;
	} else if($('input[name=password]').val()=='') {
		alert('비밀번호를 입력해주세요.')
		return false;
	} else if($('input[name=phone]').val()=='') {
		alert('전화번호를 입력해주세요.')
		return false;
	} else if($('input[name=password]').val()!=$('input[name=passReChk]').val()) {
		alert('비밀번호가 일치하지 않습니다.')
		return false;
	} else if(!$("#requirement1").checked()) {
		alert('약관에 동의해주세요.')
		return false;
	} else if(!$("#requirement2").checked()) {
		alert('약관에 동의해주세요.')
		return false;
	}
	return true;
}
	
</script>
<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/login/selectJoinType.css">
<style>
.join_form_wrap {
    min-height: calc(100vh - 130px);
	width: 100%;
    height: 100%;
}


</style>
<div class='join_form_wrap'>
	<div class='join_form'>
		<form name="kat_joinchk" onsubmit="return joinFormBlankChk()" method="post" action="<%=request.getContextPath()%>/kat/join/joinForm.do">
			<table>
				<tbody><tr>
					  <td><input type="hidden" name="member_type" value="1"></td>
				   </tr>
				   <tr>
				      <td>이름<br><input type="text" name="name" value=""></td>
				   </tr>
				    <tr>
				      <td><br>
				      <ul>
						<li id="add_search_li_border">이메일</li>
						<li class="textstyle">
							<input type="email" id="email" name="email" onfocus="emailfocus()">
						</li>
						<li class="textstyle">
							<input type="button" value="이메일 확인" id="ajaxemail">
							<input type="hidden" id="ajaxemail_1" value="N">
						</li>
						<li class="textstyle">
							<input type="button" value="이메일인증" id="emailcertification">
							<input type="hidden" id="email_sendcode_1" value="jr3110">
							<input type="hidden" id="email_sendcode_2" value="n">
						</li>
					</ul>
					</td>
				   </tr>
				   <tr>
				   <td><br>
				      <ul>
						<li id="add_search_li_border">인증코드확인</li>
						<li class="textstyle">
							<input type="text" id="user_sendcode">
							<input type="button" value="확인" onclick="okok()">
						</li>
					</ul>
				   </td>
				   </tr>
				   <tr>
				      <td>비밀번호<br><input type="text" name="password" value=""></td>
				   </tr>
				   <tr>
				      <td>비밀번호 확인<br><input type="text" name="passReChk" value=""></td>
				   </tr>
				   <tr>
				      <td>전화번호<br><input type="text" name="phone" value=""></td>
				   </tr>
				   <tr>
				      <td>약관 동의</td>
				   </tr>
				   <tr>
				      <td><input type="checkbox" class="check-all">아래 약관에 모두 동의합니다</td>
				   </tr>
				   <tr>
				      <td><input type="checkbox" id='requirement1' class="service_check"><a href="<%=request.getContextPath()%>/aaa/aaa/aaa.do">회원가입 및 운영약관(필수)</a></td>
				   </tr>
				   <tr>
				      <td><input type="checkbox" id='requirement2' class="service_check"><a href="<%=request.getContextPath()%>/aaa/aaa/aaa.do">개인정보 수집 및 이용(필수)</a></td>
				   </tr>
				   <tr>
				      <td><input type="checkbox" class="service_check"><a href="<%=request.getContextPath()%>/aaa/aaa/aaa.do">위치정보 이용약관(선택)</a></td>
			   </tr></tbody>
			</table>
			<div>
			<input type="submit" value="회원가입">
			</div>
		</form>
	</div>
</div>
katHeader