<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오류 페이지</title>

<script type="text/javascript">
	alert('예약 진행 오류로 인해 처음으로 돌아갑니다.');
	location.href = "<%=request.getContextPath()%>/kat_main.do";
</script>

</head>
<body>
</body>
</html>