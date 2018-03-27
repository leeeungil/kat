<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		if (${idchk} == 1) {
			alert('아이디가 없습니다. 확인후 다시 이용해주세요');
			location.href = "<%=request.getContextPath()%>/kat_main.do";
		} else if (${idchk} == 2) {
			alert('비밀번호가 일치하지 않습니다. 확인후 다시 이용해주세요');
			location.href = "<%=request.getContextPath()%>/kat_main.do"
		}
	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title> 일반 로그인 체크 </title>
</head>
<body>
</body>
</html>