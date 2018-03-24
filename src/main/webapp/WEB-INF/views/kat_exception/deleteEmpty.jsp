<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삭제 실패</title>

<script type="text/javascript">
	alert('현재 예약된 상태입니다. 삭제 하실 수 없습니다.');
	location.href = "<%=request.getContextPath()%>/kat/seatForm/seatAdd.do";
</script>

</head>
<body>
</body>
</html>