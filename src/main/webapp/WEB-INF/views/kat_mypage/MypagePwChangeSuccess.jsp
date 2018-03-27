<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="pwchange_div_1">

	<div id="pwchange_div_2">
		<br>
		<br> <br>
		<hr>
		<br> <br>
		<p>비밀번호가 변경이 성공하였습니다.</p>
		<p>로그아웃이후 적용됩니다.</p>
		<br>
		<c:if test="${user_id != null}">
			<a href="<%=request.getContextPath()%>/kat/login/logout.do">
				로그아웃하기 </a>
		</c:if>
		<br>
		<br>
		<hr>
		<br>
		<br>
		<br>
		<br>
	</div>

</div>

