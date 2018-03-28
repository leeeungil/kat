<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 정보확인</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/join_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/reSucess_css.css">

<!-- 스크립트 가져오기 -->
<script src="<%=request.getContextPath()%>/script/join_script.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader.jsp"
		flush="false"></jsp:include>
	<main>
	<div class="totalView_resu">
		<jsp:include
			page="/WEB-INF/views/kat_sucess/reservationSucess.jsp"
			flush="false"></jsp:include>
	</div>
	</main>
	<jsp:include page="/WEB-INF/views/kat_main/katFooter2.jsp"
		flush="false"></jsp:include>
</body>
</html>