<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마스터 로그인실패</title>

<script type="text/javascript">

	alert('마스터 로그인 실패');
	location.href = "<%=request.getContextPath()%>/kat_main.do";
	
</script>

</head>
<body>
</body>
</html>