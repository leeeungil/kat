<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>

<!-- css 가져오기 -->

<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/hader_menu_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/master_css.css">	
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/masterNoticeWrite_css.css">
	
<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-2.2.1.js"></script>
<script src="<%=request.getContextPath()%>/script/master_script.js"></script>		
		
</head>
<body>

     <jsp:include page="/WEB-INF/views/kat_main/katHader.jsp"
		flush="false"></jsp:include>
	<main>
	<div class="totalView">
		<jsp:include page="/WEB-INF/views/kat_master/masterMenu.jsp"
			flush="false"></jsp:include>
		<jsp:include page="/WEB-INF/views/kat_master/masterNoticeWrite.jsp"
			flush="false"></jsp:include>
	</div>
	</main>
  
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
			flush="false"></jsp:include>
  
</body>

</html>
