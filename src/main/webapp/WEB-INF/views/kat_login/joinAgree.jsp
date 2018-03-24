<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="join_kat">
	<div id="agree_align">
	<span id="join_size_1"><img class="member_png" src="<%=request.getContextPath()%>/uploadfile/icon/member.png"> 회원가입</span><br><br>
	<span id="agree">On Table 약관동의</span>
		<form name="kat_joinchk" onsubmit="return checkBox(this)"
			method="post"
			action="<%=request.getContextPath()%>/kat/join/joinForm.do">
			<table id="tabe_align">
				<tr>
					<td><br> <br> <textarea rows="20" cols="120"
							id="join_agreeinfo" readonly style="resize: none">
                            
    회원가입
    
 - 아이디 , 비밀번호 , 이름 , 이메일, (사업자일 경우) 사업장주소, 사업장전화번호, 사업장등록번호가 필요합니다.  
                            </textarea><br> <br> <input type="checkbox"
						name="agree" id="joinchk"> 개인정보 수집 및 이용에 동의합니다.<br> <br>
						<input type="submit" value="동의"> &nbsp;&nbsp; <input
						type="button" value="동의하지 않습니다"
						onclick="location.href='<%=request.getContextPath()%>/kat_main.do'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>