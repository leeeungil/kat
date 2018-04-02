<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your trip 세계에 오신걸 환영합니다.</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/home_main.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/login_css.css">

<!-- 스크립트 가져오기 -->
</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader.jsp" flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_main/katMain.jsp" flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_main/katFooter2.jsp" flush="false"></jsp:include>
</body>
</html>