<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/katUpdateMyPage_css.css">

<jsp:include page="/WEB-INF/views/kat_main/katHader.jsp"
	flush="false"></jsp:include>
<jsp:include
	page="/WEB-INF/views/kat_mypage/katUpdateMyPage.jsp"
	flush="false"></jsp:include>
<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
	flush="false"></jsp:include>