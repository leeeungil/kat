<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your trip 세계에 오신걸 환영합니다.</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/login_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/house_main.css">	

<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="<%=request.getContextPath()%>/script/login_script.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader2.jsp"
		flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_house/guestHouse.jsp"
		flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_main/katFooter2.jsp"
		flush="false"></jsp:include>
</body>
</html>