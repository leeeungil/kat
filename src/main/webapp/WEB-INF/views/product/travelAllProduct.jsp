<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<%=request.getContextPath()%>/script/jquery/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/script/product/productList.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datapicker/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productList.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productCard.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/card/four_card.css">
<script type="text/javascript">
$(function(){
	$(".card-img-top").lazyload();
});

$(document).ready(function(){
	$(document).ready(function(){
		$(".row").hide();
		$(".container").append("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
		setTimeout(function() {
			$(".loading_wrap").remove();
			$(".row").show();
		}, 1000)
	})
	
	$(document).on("click",".area > .product_wrap > figure", function(e){
		var productNo = $(this).children("input").val();
		if(e.target.className === "fa fa-fw fa-star-o"){
			if('<%=request.getSession(false).getAttribute("user_id") %>' == 'null') {
				alert("Please login")
			} else {
				$.ajax({
					url:'<%=request.getContextPath()%>/product/addfavoriteProduct?productNo='+productNo,
					type: 'get',
					dataType: 'text',
					success: function(htmlCode){
						$(e.target).removeClass("fa-star-o").addClass("fa-star")
					}
				})
			}
		} else if(e.target.className === "fa fa-fw fa-star"){
			if('<%=request.getSession(false).getAttribute("user_id") %>' != 'null') {
				$.ajax({
					url:'<%=request.getContextPath()%>/product/delfavoriteProduct?productNo='+productNo,
					type: 'get',
					dataType: 'text',
					success: function(htmlCode){
						$(e.target).removeClass("fa-star").addClass("fa-star-o")
					}
				})
			} else {
				alert("Please login")
			}
		} else if(e.target.className == "fa fa-fw fa-envelope-o") {
			alert('문의하기 서비스 예정')
		} else if(e.target.className == "product_fig") {
			window.open('<%=request.getContextPath()%>/product/findProductDetailInfo?productNo='+productNo);
		}
	});
	
	$(document).on("click", ".portfolio-item", function() {
		var productNo = $(this).children("input[name=product_no]").val();
		window.open('<%=request.getContextPath()%>/product/findProductDetailInfo?productNo='+productNo);
	})
	
	$(".top_menu_wrap > .tabs > nav > ul > li:nth-child(2)").css("background", "#767676");
	$(".top_menu_wrap > .tabs > nav > ul > li:nth-child(2)").css("border-bottom", "1px solid #767676");
	$(".top_menu_wrap > .tabs > nav > ul > li:nth-child(2) > a").css("color", "#ffffff");
})
</script>
<!-- 메인 부분 -->
<jsp:include page="/WEB-INF/views/product/product_sub_menu.jsp" flush="false"></jsp:include>
<div class="container">
	<div class="row">
	<c:forEach var='product' items='${ProductAllList}'>
		<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
			<input type='hidden' name='product_no' class='${product.product_no}' value='${product.product_no}'>
			<div class="card h-100">
				<a href="#">
					<img class="card-img-top" src="<%=request.getContextPath()%>${product.product_main_photo}" alt="">
				</a>
				<div class="card-body">
					<c:choose>
						<c:when test="${product.product_type eq '1' }">
							<h6 class="card-sub-title tour_color">${product.country} > ${product.city}<font class='product_type_name'>Tour</font></h6>
						</c:when>
						<c:when test="${product.product_type eq '2' }">
							<h6 class="card-sub-title shuttle_color">${product.country} > ${product.city}<font class='product_type_name'>Shuttle</font></h6>
						</c:when>
						<c:when test="${product.product_type eq '3' }">
							<h6 class="card-sub-title ticket_color">${product.country} > ${product.city}<font class='product_type_name'>Ticket</font></h6>
						</c:when>
						<c:when test="${product.product_type eq '4' }">
							<h6 class="card-sub-title snap_color">${product.country} > ${product.city}<font class='product_type_name'>Snap</font></h6>
						</c:when>
					</c:choose>
					
					<h4 class="card-title">
						<a href="#" title='${product.product_title}'>${product.product_title}</a>
					</h4>
					<p class="card-text">₩ ${product.cost}</p>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
</div>
