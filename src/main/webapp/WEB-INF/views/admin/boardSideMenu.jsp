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
<style>
#sidebar{
	position: fixed;
    width: calc(100%/7);
    height: 100%;
    background-color: #151719;
    min-width: 129px; 
}
#sidebar.active{
  left:0px;
}
#sidebar ul li{
  color:rgba(230,230,230,0.9);
  list-style:none;
  padding:15px 10px;
  border-bottom:1px solid rgba(100,100,100,0.3);
}
#sidebar .toggle-btn{
  position:absolute;
  left:230px;
  top:20px;
}
#sidebar .toggle-btn span{
  display:block;
  width:30px;
  height:5px;
  background: #151719;
  margin:5px 0px;
}
</style>
