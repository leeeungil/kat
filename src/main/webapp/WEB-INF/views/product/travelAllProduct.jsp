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
    box-shadow: #979797 0px 0px 1px 1px;
    border-radius: 10px;
    cursor: pointer;
    transition: all 0.2s ease-out;
}
.product_wrap:hover {
	box-shadow: #0e0e0e 0px 0px 10px 1px;
    transform: scale(1.03);
}
.main_photo_zone {
	height: 60%;
    width: 100%;
    position: relative;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
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
    background-color: #265c8d;
    box-shadow: #727272 0px 1px 3px 0px;
}
.product_choice_btn{
	width: 1100px;
	height: 100%;
	margin: auto;
}
.product_choice_btn > table {
    height: 100%;
    width: 100%;
    text-align: center;
    color: #ffffff;
    cursor: pointer;
}
.product_choice_btn > table > tbody > tr > td:hover {
	background-color: #0084fe;
}
.total_btn {
	background-color: #0084fe;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$(".product_choice_btn > table > tbody > tr > td").on("click",function(){
		$(".product_choice_btn > table > tbody > tr > td").css("background-color","#265c8d");
		$(this).css("background-color","#0084fe");
	})
	
	$(document).on("click","#total_btn",function(){
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
	$(document).on("click","#tour_btn",function(){
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
	$(document).on("click","#shuttle_btn",function(){
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
	$(document).on("click","#ticket_btn",function(){
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
	$(document).on("click","#snap_btn",function(){
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
})
</script>
<!-- 메인 부분 -->
<div class="product_top_wrap">
	<div class="product_choice_wrap">
		<div class="product_choice_btn">
			<table>
				<tbody><tr>
					<td id="total_btn" class="total_btn">전체</td>
					<td id="tour_btn" class="tour_btn">투어</td>
					<td id="shuttle_btn" class="shuttle_btn">셔틀</td>
					<td id="ticket_btn" class="ticket_btn">티켓</td>
					<td id="snap_btn" class="snap_btn">스냅</td>
				</tr></tbody>
			</table>
		</div>
	</div>
	<div class="area area_wrap">
		<c:forEach var="product" items="${ProductAllList}">
			<div class="product_wrap product_${product.product_type}">
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
			<div class="product_wrap product_${product.product_type}">
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
			<div class="product_wrap product_${product.product_type}">
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
