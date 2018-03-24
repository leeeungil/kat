<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의하기</title>

<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="<%=request.getContextPath()%>/script/inquire_script.js"></script>



<!-- css 가져오기 -->

<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/hader_main_css.css">
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/home_main_css.css">	

</head>

<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHader.jsp"
		flush="false"></jsp:include>
	<main>
	<div class="totalView">
	<jsp:include page="/WEB-INF/views/kat_customer/articleUpdateList.jsp" 
	    flush="false"></jsp:include>
    </div>
    </main>
   <div style="padding-top:800px;">
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp"
			flush="false"></jsp:include>
	</div>
</body>
</html>