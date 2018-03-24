<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매장사진 등록</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/shopPhoto_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/common_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/adminMenu_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main_css.css">

<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="<%=request.getContextPath()%>/script/addSeat_script.js"></script>
<script src="<%=request.getContextPath()%>/script/admin_script.js"></script>
<script src="<%=request.getContextPath()%>/script/sidebar.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHader.jsp"
		flush="false"></jsp:include>
	<main>
	<div class="totalView_shopfoot">
		<jsp:include page="/WEB-INF/views/kat_common/adminMenu.jsp"
			flush="false"></jsp:include>
		<jsp:include
			page="/WEB-INF/views/kat_ShopPhoto/addShopPhotoForm.jsp"
			flush="false"></jsp:include>
	</div>
	</main>
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
		flush="false"></jsp:include>
</body>
</html>