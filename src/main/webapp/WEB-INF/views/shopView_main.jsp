<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관광지 정보 확인</title>

<!-- css 가져오기 -->

<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main_css.css?ver=1">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/shopView_css.css?ver=1">	



</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHader.jsp"
		flush="false"></jsp:include>
	
	<div class="totalView_recview">
		<jsp:include page="/WEB-INF/views/kat_shopView/shopView.jsp"
			flush="false"></jsp:include>
	</div>

	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
		flush="false"></jsp:include>
</body>
</html>