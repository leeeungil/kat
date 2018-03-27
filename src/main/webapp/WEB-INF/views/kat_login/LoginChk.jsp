<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>

<script type="text/javascript">

	alert('로그인이 필요한 페이지 입니다.');
	location.href = "<%=request.getContextPath()%>/kat_main.do"

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 로그인 체크 </title>

</head>
<body>
</body>
</html>