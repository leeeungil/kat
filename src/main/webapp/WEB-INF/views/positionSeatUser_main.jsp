<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약가능 좌석확인</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/seatPosition_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/adminMenu_css.css">

<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="<%=request.getContextPath()%>/script/seatPosition_script.js"></script>
<script src="<%=request.getContextPath()%>/script/redips-drag-min.js"></script>
<script src="<%=request.getContextPath()%>/script/sidebar.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader.jsp"
		flush="false"></jsp:include>
	<main>
	<div class="totalView">
		<jsp:include page="/WEB-INF/views/kat_common/adminMenu.jsp"
			flush="false"></jsp:include>
		<jsp:include
			page="/WEB-INF/views/kat_seatPosition/seatPositionUser.jsp"
			flush="false"></jsp:include>
	</div>
	</main>
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
		flush="false"></jsp:include>
</body>
</html>