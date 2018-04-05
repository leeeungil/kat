<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<%=request.getContextPath()%>/script/jquery/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/script/product/productList.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datapicker/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productList.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productInfo.css">
<script type="text/javascript">
$(document).ready(function(){
	$(".product_choice_btn > div").on("click",function(){
		$.ajax({
			url:'<%=request.getContextPath()%>/product/findTravelProductOfType',
			type: 'post',
			dataType: 'text',
			data:{ "productType": $(this).attr("id") },
			success: function(htmlCode){
				$(".product_choice_btn > div").css("background-color","#000000");
				$(".product_wrap").show();
				$(".product_wrap").css("transform", "scale(0.0)");
				setTimeout(function() {
					$(".product_wrap").remove();
					$(".area").html(htmlCode);
				}, 200);
			}
		})
	})
	
	/* product_no를 가지고 상품 detail가져오기 */
	$(document).on("click",".area > .product_wrap", function(){
		var productNo = $(this).children("input").val();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			location.href='<%=request.getContextPath()%>/product/findProductDetailInfo?productNo='+productNo;
		}, 200);
	})
})

$(document).ready(function(){
	$(document).on("click", "#select_date", function(){
	    $(this).datepicker();
	});
	$(document).on("click", ".product_relate_photo_table > tbody img", function(){
		var select_img_src = $(this).attr("src");
		if($(this).attr("class")=='blank_image') {
			alert('없는 이미지 입니다.')
		} else { 
			$(".product_relate_photo_table > thead img").attr("src", select_img_src)		
		}
	})

	$(document).on("click","#calc_cost",function(){
		$(".calc_result").show();
		var people = $("#people_number").val();
		var product_cost = $("#product_cost").attr("class");
		var htmlCostResult = "<div><font>경비 계산 결과</font></div>"
							 + "<div><font>"+people+" X "+product_cost+"</font><font class='second_line_font'>₩"+(people * product_cost)+"</font></div>"
							 + "<div class='non_border reserve_btn_wrap'><button class='calc_cost reserve_btn'>예약하기</button></div>";
	 	$(".calc_result").html(htmlCostResult)
	})
})
</script>
<!-- 메인 부분 -->
<div class="product_top_wrap">
	${htmlBefore}
	<div class="area area_wrap">
	${htmlAfter}
	</div>
</div>
