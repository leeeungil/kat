<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<%=request.getContextPath()%>/script/product/productList.js"></script>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productList.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productInfo.css">
<script type="text/javascript">
$(document).ready(function(){
	$(".product_choice_btn > div").on("click",function(){
		$(".product_wrap").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".area").html("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
		}, 200)
		var productType = $(this).attr("id");
		$(".product_choice_btn > div").css("background-color","#000000");
		if(productType == 0) {
			$(this).css("background-color","#3f3f3f!important");
		} else if(productType == 1) {
			$(this).css("background-color","#0084fe");
		} else if(productType == 2) {
			$(this).css("background-color","#ffa500");
		} else if(productType == 3) {
			$(this).css("background-color","#29a600");
		} else if(productType == 4) {
			$(this).css("background-color","#ff0000");
		}
		
		$.ajax({
			url:'<%=request.getContextPath()%>/product/findTravelProductOfType',
			type: 'post',
			dataType: 'text',
			data:{ "productType": productType },
			success: function(htmlCode){
				setTimeout(function() {
					$(".area").html(htmlCode);
					$(".product_wrap").css("transform", "scale(0.0)");
					setTimeout(function() {
						$(".product_wrap").css("transform", "scale(1.0)");
					}, 100);
				}, 1000);
			}
		})
	})
	
	$(".product_search_btn > img").on("click", function() {
		$("#search_product_sub").show();
		setTimeout(function() {
			$("#search_product_sub").css("width","222px")
			$("#search_product_sub").focus();
		}, 50);
	})
	
	$("#search_product_sub").on("change paste keyup", function() {
		var search_word = $(this).val();
		$(".product_wrap").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".area").html("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
		}, 400)
		$.ajax({
			url:'<%=request.getContextPath()%>/product/findTravelProductOfWord',
			type: 'post',
			dataType: 'text',
			data:{ "search_word": search_word },
			success: function(htmlCode){
				$(".product_wrap").css("transform", "scale(0.0)");
				setTimeout(function() {
					$(".area").html(htmlCode);
				}, 1000)
			}
		})
	});
})
</script>
<style>
.product_choice_wrap {
    height: 40px;
    background: #000000;
    opacity: 0.7;
}
.product_choice_btn{
	width: 1100px;
	height: 100%;
	margin: auto;
}
.product_choice_btn > div{
	width: 75px;
    height: 16px;
    float: left;
    text-align: center;
    color: #ffffff;
    font-size: 14px;
    padding: 12px;
    cursor: pointer;
}
.product_choice_btn > div:focus {
	background: #ffffff;
}
.total_btn {
	background-color: rgb(63, 63, 63);
}
.product_search_btn {
	float: right;
    width: 272px;
	padding: 4px;
    height: 78%;
    background-color: rgb(0, 0, 0);
}
.product_search_btn > img { 
	height: 20px;
    padding: 7px 3px;
	cursor: pointer;
	float: right;
}
.search_product_sub {
    height: 28px;
    border: 0px solid;
    float: right;
    margin-top: 2px;
    width: 0;
    display: none;
    padding-left: 11px;
}
.loading_wrap {
    padding: 32vh 44%;
    width: 100px;
    height: 100px;
    border: 0px solid;
    box-shadow: white 0 0 0 0;
}
.loading_wrap > img {
	width: 100px;
}
</style>
<!-- 메인 부분 -->
<div class="product_choice_wrap">
	<div class="product_choice_btn">
		<div id="0" class="total_btn">전체</div>
		<div id="1" class="tour_btn">투어</div>
		<div id="2" class="shuttle_btn">셔틀</div>
		<div id="3" class="ticket_btn">티켓</div>
		<div id="4" class="snap_btn">스냅</div>
		<a class="product_search_btn">
			<img src='<%=request.getContextPath() %>/img/search_white.png'>
			<input type='text' class='search_product_sub' id='search_product_sub' placeholder="검색어 입력 후 2초 대기"> 
		</a>
	</div>
</div>