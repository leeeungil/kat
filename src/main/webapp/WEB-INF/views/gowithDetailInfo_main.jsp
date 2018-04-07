<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/gowithInfo.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/commentWrite.css">

<body>
   <jsp:include page="/WEB-INF/views/kat_main/katHeader2.jsp" flush="false"></jsp:include>
   <jsp:include page="/WEB-INF/views/kat_customer/goWithInfo.jsp" flush="false"></jsp:include>
   <jsp:include page="/WEB-INF/views/kat_customer/commentWrite.jsp" flush="false"></jsp:include>
   <jsp:include page="/WEB-INF/views/kat_customer/commentList.jsp" flush="false"></jsp:include>
</body>