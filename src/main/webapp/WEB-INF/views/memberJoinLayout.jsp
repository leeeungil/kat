<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 타입 선택</title>

<!-- 스크립트 가져오기 -->
<script src="<%=request.getContextPath()%>/script/join_script.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader2.jsp" flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/login/memberJoin.jsp" flush="false"></jsp:include>
</body>
</html>