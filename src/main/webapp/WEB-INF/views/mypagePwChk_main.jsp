<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내 정보 관리</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/passwordChk.css">


</head>
<body>
	<jsp:include page="/WEB-INF/views/kat_main/katHeader2.jsp" flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_mypage/passwordChk.jsp" flush="false"></jsp:include>
	<jsp:include page="/WEB-INF/views/kat_main/katFooter.jsp" flush="false"></jsp:include>
</body>
</html>