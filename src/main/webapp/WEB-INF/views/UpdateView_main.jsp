<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>My Page</title>

<!--  css 가져오기  -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/mypageViewForm_css.css">

</head>

<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader.jsp"
		flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_mypage/mypageView.jsp"
		flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
		flush="false"></jsp:include>
</body>


</html>