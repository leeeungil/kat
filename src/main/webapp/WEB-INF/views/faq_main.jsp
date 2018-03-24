<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAQ</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/hader_menu_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main_css.css">	
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/faq_css.css">
	
<!-- 스크립트 가져오기 -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=pAi1TcLMae9TERK30O86&submodules=geocoder"></script>
<script src="https://code.jquery.com/jquery-1.11.2.js"></script>
<script src="<%=request.getContextPath()%>/script/faq.js"></script>	


</head>
<body>

     <jsp:include page="/WEB-INF/views/kat_main/katHader.jsp"
		flush="false"></jsp:include>
	<main>
	<div class="totalView">
		<jsp:include page="/WEB-INF/views/kat_customer/faq.jsp"
			flush="false"></jsp:include>
	</div>
	</main>
    
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
			flush="false"></jsp:include>
	
</body>
</html>