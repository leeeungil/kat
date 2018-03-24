<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>잘못된 접근입니다</title>

<script type="text/javascript">
	alert('사업자는 예약하실 수 없습니다.');
	location.href = "<%=request.getContextPath()%>/kat_main.do";
</script>

</head>
<body>
</body>
</html>