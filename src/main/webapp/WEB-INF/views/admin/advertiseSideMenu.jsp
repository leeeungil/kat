<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
$(document).ready(function() {
	$(document).on("mouseenter",".menu_btn",function(){
		$(this).removeClass('menu_btn').addClass('menu_btn_down');
		$(this).next("ul").removeClass('menu_sub').addClass('menu_sub_on');
	})
	$(document).on("mouseleave",".menu_sub_on",function(){
		$(this).removeClass('menu_sub_on').addClass('menu_sub')
		$(this).prev("ul").removeClass('menu_btn_down').addClass('menu_btn');
	})
	
	$(".fa.fa-home").parent("li").css("background-color","#ffffff")
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
  </ul>
   <ul>
    <li>
    	<a href="<%=request.getContextPath()%>/kat/productForm/productAdd.do">
			<font>상품 등록</font>
		</a>
    </li>
  </ul>
</div>
