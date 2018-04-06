<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>동행 리스트</title>

<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/gowithList.css">	

<body>
   <jsp:include page="/WEB-INF/views/kat_main/katHeader.jsp" flush="false"></jsp:include>
   <jsp:include page="/WEB-INF/views/kat_customer/goWithUpdateList.jsp" flush="false"></jsp:include>
</body>