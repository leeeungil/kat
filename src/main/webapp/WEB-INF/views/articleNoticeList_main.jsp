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
	href="<%=request.getContextPath()%>/css/home_main.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/articleNoticeList_css.css">
	
<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-2.2.1.js"></script>
<script src="<%=request.getContextPath()%>/script/master_script.js"></script>		
		
</head>
<body>

     <jsp:include page="/WEB-INF/views/kat_main/katHeader.jsp"
		flush="false"></jsp:include>
	<main>
	
	<jsp:include page="/WEB-INF/views/kat_customer/articleNoticeList.jsp"
		flush="false"></jsp:include>
	
	</main>
    <div>
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
			flush="false"></jsp:include>
     </div>
</body>
</html>
