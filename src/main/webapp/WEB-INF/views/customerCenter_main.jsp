<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객센터</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/customerCenter_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main_css.css">


<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=pAi1TcLMae9TERK30O86&submodules=geocoder"></script>
<script src="https://code.jquery.com/jquery-2.2.1.js"></script>
<script
	src="<%=request.getContextPath()%>/script/customerCenter_script.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHader.jsp"
		flush="false"></jsp:include>
	<jsp:include
		page="/WEB-INF/views/kat_customerCenter/customerCenter_main.jsp"
		flush="false"></jsp:include>
	<jsp:include
		page="/WEB-INF/views/kat_customerCenter/customerCenter_footer.jsp"
		flush="false"></jsp:include>
</body>
</html>