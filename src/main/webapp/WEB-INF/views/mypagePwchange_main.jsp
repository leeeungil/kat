<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/passwordChange_css.css">

<jsp:include page="/WEB-INF/views/kat_main/katHeader.jsp"
	flush="false"></jsp:include>
<jsp:include
	page="/WEB-INF/views/kat_mypage/passwordChange.jsp"
	flush="false"></jsp:include>
<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
	flush="false"></jsp:include>