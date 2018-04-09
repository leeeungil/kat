<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/main/mainSimpleCard.css">
<%-- <script type="text/javascript">
$(document).ready(function() {
	$.ajax({
		url:'<%=request.getContextPath()%>/mainController/selectMainProductList',
		type: 'get',
		dataType: 'text',
		beforeSend: function() {
			$(".area").append("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
		}
	}).done(function(data) {
		
	}).fail(function() {
		alert("호출 실패")
	}).always(function() {
		
	})
})
</script> --%>
<script>
	$(function(){
		$(".thumbnail").lazyload();
	});
</script>
<!-- 메인 부분 -->
<div class="product_top_wrap">
	<div class='area area_wrap'>
		<div class='product_wrap'>
 		<c:forEach var='product' items='${ProductAllList}'>
 			<c:choose>
				<c:when test="${product.product_type eq '1' }">
					<figure class='effect-winston tour_color'>
				</c:when>
				<c:when test="${product.product_type eq '2' }">
					<figure class='effect-winston shuttle_color'>
				</c:when>
				<c:when test="${product.product_type eq '3' }">
					<figure class='effect-winston ticket_color'>
				</c:when>
				<c:when test="${product.product_type eq '4' }">
					<figure class='effect-winston snap_color'>
				</c:when>
			</c:choose> 
			<%-- <figure class='effect-winston' style='background-image: url(<%=request.getContextPath()%>${product.product_main_photo})'> --%>
 			<input type='hidden' class='product_no' name='product_no' value='${product.product_no}'>
				<img data-original='<%=request.getContextPath()%>${product.product_main_photo}' class='thumbnail'/>
				<figcaption class='product_fig'> 
					<c:choose>
						<c:when test="${product.product_type eq '1' }">
							<h2><font class='tour_color'>${product.country} > ${product.city}</font><br> <span>${product.product_title}</span></h2>
						</c:when>
						<c:when test="${product.product_type eq '2' }">
							<h2><font class='shuttle_color'>${product.country} > ${product.city}</font><br> <span>${product.product_title}</span></h2>
						</c:when>
						<c:when test="${product.product_type eq '3' }">
							<h2><font class='ticket_color'>${product.country} > ${product.city}</font><br> <span>${product.product_title}</span></h2>
						</c:when>
						<c:when test="${product.product_type eq '4' }">
							<h2><font class='snap_color'>${product.country} > ${product.city}</font><br> <span>${product.product_title}</span></h2>
						</c:when>
					</c:choose>
					<p>
						<a href="#"></a>
						<a href="#"><i class='fa fa-fw fa-envelope-o'></i></a>
						<a href="#"><i class='fa fa-fw fa-star-o'></i></a>
					</p>
				</figcaption>			
			</figure>
		</c:forEach>
		</div>
	</div>
</div>