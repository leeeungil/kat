<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- css 가져오기 -->
    <link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main.css?=1">
	<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/katMyPage_css.css?=1">

	<jsp:include page="/WEB-INF/views/kat_main/katHader.jsp"
		flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_mypage/katMyPage.jsp"
		flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
		flush="false"></jsp:include>