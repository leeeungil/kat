<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<%=request.getContextPath()%>/script/jquery/jquery-ui.js"></script>
<style>
.product_top_wrap * {
	transition: all 0.3s ease;
}
.product_top_wrap {
	width: 100%;
	height: 1030px;
}
.area {
    width: 1100px;
    height: calc(100% - 40px);
    margin: auto;
}
.product_wrap {
	width: 23%;
    margin: 11px 11px;
    background-color: white;
    height: 308px;
    float: left;
    box-shadow: #e9ecef 0px 0px 1px 1px;
    border-bottom-right-radius: 16px;
    cursor: pointer;
    transition: all 0.2s ease-out;
}
.product_wrap:hover {
	box-shadow: #0e0e0e 0px 0px 10px 1px;
}
.main_photo_zone {
	height: 60%;
    width: 100%;
    position: relative;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
}
.main_photo_zone > img {
	width: 100%;
    height: 100%;
}
.product_title {
    width: 240px;
    margin: 3px auto;
    height: 60px;
}
.product_title > thead font{
    font-size: 11px;
    padding: 3px 3px 3px 3px;
}
.tour_color {
    color: #ffffff;
    background: #0084fe;
}
.shuttle_color {
    color: #ffffff;
    background: #ffa500;
}
.ticket_color {
    color: #ffffff;
    background: #29a600;
}
.snap_color {
    color: #ffffff;
    background: #ff0000;
}
.product_title > tbody font{
	font-weight: 800;
    font-size: 16px;
    letter-spacing: -1px;
}
.blank {
	height: calc(100% - 272px);
}
.product_cost{
    width: 240px;
    margin: 0px auto;
    text-align: right;
    margin-right: 13px;
    font-size: 12px;
    color: #6c6c6c;
}

/* 선택지 */
.travelProductTop{
    color: #2d99fd!important;
    border-color: #0084fe!important;
}
.product_choice_wrap {
    height: 40px;
    background: #000000;
    opacity: 0.7;
}
.product_choice_btn{
	width: 500px;
	height: 100%;
	margin: auto;
}
.cl-effect-12 {
	position: relative;
}
.cl-effect-12::before, .cl-effect-12::after {
	position: absolute;
    top: 50%;
    left: 50%;
    width: 78px;
    height: 78px;
    border: 2px solid rgba(0, 0, 0, 0.71);
    border-radius: 50%;
    content: '';
    opacity: 0;
    -webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
    -moz-transition: -moz-transform 0.3s, opacity 0.3s;
    transition: transform 0.3s, opacity 0.3s;
    -webkit-transform: translateX(-50%) translateY(-50%) scale(0.2);
    -moz-transform: translateX(-50%) translateY(-50%) scale(0.2);
    transform: translateX(-50%) translateY(-50%) scale(0.2);
}
.cl-effect-12::after {
	width: 85px;
    height: 85px;
    border-width: 6px;
    -webkit-transform: translateX(-50%) translateY(-50%) scale(0.8);
    -moz-transform: translateX(-50%) translateY(-50%) scale(0.8);
    transform: translateX(-50%) translateY(-50%) scale(0.8);
}
.cl-effect-12:hover::before, .cl-effect-12:hover::after, .cl-effect-12:focus::before, .cl-effect-12:focus::after {
    opacity: 1;
    -webkit-transform: translateX(-50%) translateY(-50%) scale(1.5);
    -moz-transform: translateX(-50%) translateY(-50%) scale(1.5);
    transform: translateX(-50%) translateY(-50%) scale(1.5);
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
</style>
<script type="text/javascript">
$(document).ready(function(){
	$(".product_choice_btn > div").on("click",function(){
		$(".product_choice_btn > div").css("background-color","#000000");
	})
	
	$(document).on("click",".total_btn",function(){
		$(this).css("background-color","#3f3f3f");
		$(".product_1").show();
		$(".product_2").show();
		$(".product_3").show();
		$(".product_4").show();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".product_1").css("transform", "scale(1.0)");
			$(".product_2").css("transform", "scale(1.0)");
			$(".product_3").css("transform", "scale(1.0)");
			$(".product_4").css("transform", "scale(1.0)");
		}, 300);
	})
	$(document).on("click",".tour_btn",function(){
		$(this).css("background-color","#0084fe");
		$(".product_1").show();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".product_1").css("transform", "scale(1.0)");
			$(".product_2").hide();
			$(".product_3").hide();
			$(".product_4").hide();
		}, 300);
	})
	$(document).on("click",".shuttle_btn",function(){
		$(this).css("background-color","#ffa500");
		$(".product_2").show();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".product_1").hide();
			$(".product_2").css("transform", "scale(1.0)");
			$(".product_3").hide();
			$(".product_4").hide();
		}, 300);
	})
	$(document).on("click",".ticket_btn",function(){
		$(this).css("background-color","#29a600");
		$(".product_3").show();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".product_1").hide();
			$(".product_2").hide();
			$(".product_3").css("transform", "scale(1.0)");
			$(".product_4").hide();
		}, 300);
	})
	$(document).on("click",".snap_btn",function(){
		$(this).css("background-color","#ff0000");
		$(".product_4").show();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".product_1").hide();
			$(".product_2").hide();
			$(".product_3").hide();
			$(".product_4").css("transform", "scale(1.0)");
		}, 300);
	})
	
	$(".product_choice_btn > div").on("click",function(){
		$.ajax({
			url:'<%=request.getContextPath()%>/product/findTravelProductOfType',
			type: 'post',
			dataType: 'text',
			data:{ "productType": $(this).attr("id") }
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
			$.ajax({
				url:'<%=request.getContextPath()%>/product/findProductDetailInfo',
				type: 'post',
				dataType: 'json',
				data:{ "productNo": productNo },
				success: function(data){
					$(".product_wrap").remove();
					alert(data.product_no)
				}
			})
		}, 300);
	})
})
</script>
<!-- 메인 부분 -->
<div class="product_top_wrap">
	<div class="product_choice_wrap">
		<div class="product_choice_btn">
			<div id="0" class="total_btn">전체</div>
			<div id="1" class="tour_btn">투어</div>
			<div id="2" class="shuttle_btn">셔틀</div>
			<div id="3" class="ticket_btn">티켓</div>
			<div id="4" class="snap_btn">스냅</div>
		</div>
	</div>
	<div class="area area_wrap">
		<c:forEach var="product" items="${ProductAllList}">
			<div class="product_wrap product_${product.product_type}  cl-effect-12">
				<input type="hidden" class="product_no" name="product_no" value="${product.product_no}">
				<div class="main_photo_zone" style='background-image: url(<%=request.getContextPath()%>${product.product_main_photo})'></div>
				<table class="product_title">
					<thead><tr>
						<td>
							<c:choose>
								<c:when test="${product.product_type eq '1' }">
									<font class="tour_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '2' }">
									<font class="shuttle_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '3' }">
									<font class="ticket_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '4' }">
									<font class="snap_color">${product.country} > ${product.city}</font>
								</c:when>
							</c:choose>
						</td>
					</tr></thead>
					<tbody><tr>
						<td>
							<font>${product.product_title}</font>
						</td>
					</tr></tbody>
				</table>
				<div class="blank">
				
				</div>
				<div class="product_cost">
					${product.cost} / 1인
				</div>
			</div>
		</c:forEach>
		<c:forEach var="product" items="${ProductAllList}">
			<div class="product_wrap product_${product.product_type}  cl-effect-12">
				<div class="main_photo_zone" style='background-image: url(<%=request.getContextPath()%>${product.product_main_photo})'></div>
				<table class="product_title">
					<thead><tr>
						<td>
							<c:choose>
								<c:when test="${product.product_type eq '1' }">
									<font class="tour_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '2' }">
									<font class="shuttle_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '3' }">
									<font class="ticket_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '4' }">
									<font class="snap_color">${product.country} > ${product.city}</font>
								</c:when>
							</c:choose>
						</td>
					</tr></thead>
					<tbody><tr>
						<td>
							<font>${product.product_title}</font>
						</td>
					</tr></tbody>
				</table>
				<div class="blank">
				
				</div>
				<div class="product_cost">
					${product.cost} / 1인
				</div>
			</div>
		</c:forEach>
		<c:forEach var="product" items="${ProductAllList}">
			<div class="product_wrap product_${product.product_type}  cl-effect-12">
				<div class="main_photo_zone" style='background-image: url(<%=request.getContextPath()%>${product.product_main_photo})'></div>
				<table class="product_title">
					<thead><tr>
						<td>
							<c:choose>
								<c:when test="${product.product_type eq '1' }">
									<font class="tour_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '2' }">
									<font class="shuttle_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '3' }">
									<font class="ticket_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '4' }">
									<font class="snap_color">${product.country} > ${product.city}</font>
								</c:when>
							</c:choose>
						</td>
					</tr></thead>
					<tbody><tr>
						<td>
							<font>${product.product_title}</font>
						</td>
					</tr></tbody>
				</table>
				<div class="blank">
				
				</div>
				<div class="product_cost">
					${product.cost} / 1인
				</div>
			</div>
		</c:forEach>
	</div>
</div>
