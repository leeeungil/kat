<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>My Page</title>

<!--  css 가져오기  -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/mypageViewForm_css.css">

</head>

<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHader.jsp"
		flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_mypage/mypageView.jsp"
		flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
		flush="false"></jsp:include>
</body>


</html>