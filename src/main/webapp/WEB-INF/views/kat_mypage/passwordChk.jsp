<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

if (${idchk} == 2) {
	alert('비밀번호가 일치하지 않습니다. 확인후 다시 이용해주세요');
}

</script>

<div id="passwordForm">

	<div id="passwordDiv">

		<p>본인인증</p>
		<br>
		<hr>
		<br>

		<form method="post"
			action="<%=request.getContextPath()%>/kat/mypage/pwchk2.do">

			<ul>

				<li id="litext">본인인증을 위해 비밀번호를 재입력해주세요.</li>
				<br>
				<li class="style_user_pass"><input type="password"
					name="user_pass"> <input type="submit" value="확인"></li>
			</ul>
			<br> <br>
			<hr>
		</form>
	</div>
</div>


