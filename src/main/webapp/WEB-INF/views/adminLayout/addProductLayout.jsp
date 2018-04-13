<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사업자 메뉴 등록</title>

<!-- css 가져오기 -->

<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="<%=request.getContextPath()%>/script/addSeat_script.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader3.jsp" flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/admin/productSideMenu.jsp" flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/product/addProductForm.jsp" flush="true"></jsp:include>
</body>
</html>