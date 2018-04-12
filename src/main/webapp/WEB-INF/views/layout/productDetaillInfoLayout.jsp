<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행상품</title>
<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader2.jsp" flush="true"></jsp:include> 
	<jsp:include page="/WEB-INF/views/product/productInfo.jsp" flush="true"></jsp:include> 
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp" flush="false"></jsp:include>
</body>
</html>