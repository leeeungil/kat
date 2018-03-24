<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">

if (${idchk2} == 1) {
	alert('아이디가 없습니다. 확인후 다시 이용해주세요');
	location.href = "<%=request.getContextPath()%>/kat_main.do";
} 

if (${idchk2} == 2) {
	alert('비밀번호가 일치하지 않습니다. 확인후 다시 이용해주세요');
	location.href = "<%=request.getContextPath()%>/kat_main.do"
}

if (${idchk2} == 3) {
	alert('일반회원 입니다. 확인후 다시 로그인해주세요');
	location.href = "<%=request.getContextPath()%>/kat_main.do"
}

</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 사업자 로그인 체크 </title>

</head>
<body>
</body>
</html>