<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
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