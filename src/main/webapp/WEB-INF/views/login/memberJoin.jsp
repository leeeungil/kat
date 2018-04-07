<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
</script>
<!-- css 가져오기 -->
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/login/selectJoinType.css">
<style>
.join_form_wrap {
    min-height: calc(100vh - 130px);
	width: 100%;
    height: 100%;
}
</style>
<div class='join_form_wrap'>
	<div class='join_form'>
		<form name="kat_joinchk" onsubmit="return checkBox(this)" method="post" action="<%=request.getContextPath()%>/kat/join/joinForm.do">
			
		</form>
	</div>
</div>
katHeader