<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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