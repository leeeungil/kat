<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 정보입력</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/joinForm_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main_css.css">

<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="<%=request.getContextPath()%>/script/join_script.js"></script>


</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHader.jsp"
		flush="false"></jsp:include>
	<main>
	<div class="totalView">
		<jsp:include page="/WEB-INF/views/kat_login/joinForm.jsp"
			flush="false"></jsp:include>
	</div>
	</main>
</body>
</html>