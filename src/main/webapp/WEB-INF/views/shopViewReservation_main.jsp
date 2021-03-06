<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>좌석 예약</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/shopView_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/seatadd_css.css">
	<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/seatPosition_css.css">

</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader.jsp"
		flush="false"></jsp:include>
	<main>
	<div class="totalView">
		<jsp:include
			page="/WEB-INF/views/kat_shopView/ReservationView.jsp"
			flush="false"></jsp:include>
	</div>
	</main>
</body>
</html>