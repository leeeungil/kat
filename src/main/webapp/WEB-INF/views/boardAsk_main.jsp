<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAQ</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/boardAsk.css">
	
<!-- 스크립트 가져오기 -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=pAi1TcLMae9TERK30O86&submodules=geocoder"></script>
<script src="https://code.jquery.com/jquery-1.11.2.js"></script>
<script src="<%=request.getContextPath()%>/script/faq.js"></script>	

</head>
<body>
     <jsp:include page="/WEB-INF/views/kat_main/katHeader.jsp" flush="false"></jsp:include>
	 <jsp:include page="/WEB-INF/views/kat_customer/boardAsk.jsp" flush="false"></jsp:include>
     <jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp" flush="false"></jsp:include>
</body>
</html>