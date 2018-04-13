<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 정보입력</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/joinForm_css.css">

<!-- 스크립트 가져오기 -->
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="<%=request.getContextPath()%>/script/join_script.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader2.jsp" flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_login/joinForm.jsp" flush="false"></jsp:include>  
</body>
</html>