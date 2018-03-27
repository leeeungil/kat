<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약시간 체크</title>

<script type="text/javascript">
	alert('예약된지 15분이 경과 되지 않았습니다.');
	location.href = "<%=request.getContextPath()%>/kat/seat/reservationList.do";
</script>

</head>
<body>
</body>
</html>