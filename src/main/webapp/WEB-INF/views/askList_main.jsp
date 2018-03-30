<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의하기</title>

<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="<%=request.getContextPath()%>/script/inquire_script.js"></script>



<!-- css 가져오기 -->

<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/hader_main_css.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/home_main.css">	
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/askList.css">
</head>

<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader.jsp" flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_customer/askList.jsp" flush="false"></jsp:include>
 	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp" flush="false"></jsp:include>
</body>
</html>