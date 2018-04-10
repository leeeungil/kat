<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
$(document).ready(function() {
	$(".fa.fa-gift").parent("li").css("background-color","#ffffff")
});
</script>
<style>
</style>
<!-- Navigation header -->
<div id="sidebar">
	<ul>
		<li>
		  	<a href="<%=request.getContextPath()%>/kat/productForm/productAdd.do">
				<font>상품 등록</font>
			</a>
		</li>
		<li>
		  	<a href="<%=request.getContextPath()%>/product/findUserIdProduct">
				<font>상품 수정</font> 
			</a>
		</li>
	</ul>
</div>
