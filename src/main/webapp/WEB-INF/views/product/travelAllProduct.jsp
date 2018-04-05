<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<%=request.getContextPath()%>/script/jquery/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/script/product/productList.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datapicker/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productList.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productInfo.css">
<script type="text/javascript">
$(document).ready(function(){
	$(document).ready(function(){
		$(".product_wrap").hide();
		$(".area").append("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
		setTimeout(function() {
			$(".loading_wrap").remove();
			$(".product_wrap").show();
		}, 1000)
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
</script>
<!-- 메인 부분 -->
<div class="product_top_wrap">
	<jsp:include page="/WEB-INF/views/product/product_sub_menu.jsp" flush="false"></jsp:include>
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
	</div>
</div>
