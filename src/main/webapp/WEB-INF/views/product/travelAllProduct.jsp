<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<%=request.getContextPath()%>/script/jquery/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/script/product/productList.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datapicker/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productList.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productCard.css">
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
	
	<%-- $(document).on("mouseenter", "figure", function(e) {
		var productNo = $(this).children("input").val();
		$.ajax({
			url:'<%=request.getContextPath()%>/product/chkFavoriteProduct',
			type: 'post',
			dataType: 'json',
			success: function(data){
				$.each(data, function(index, i) {
					if(productNo==i) {
						$(this).attr("class")
					} else {
						alert("dd")
					}
				});
				
				/* if(data=='0') {
					$(this).children("figcaption").children("p").children("a").children(".fa-star-o").removeClass("fa-star-o").addClass("fa-star")
				} else {
					alert("ddss")
				} */
			}
		})
	}) --%>
	
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
			$(".product_wrap").css("transform", "scale(0.0)");
			setTimeout(function() {
				location.href='<%=request.getContextPath()%>/product/findProductDetailInfo?productNo='+productNo;
			}, 200);
		}
	});
	
	$(".fa-gift").parents("li").css("background","#196cf8")
	$(".fa-gift").css("color","#ffffff")
	$(".fa-gift").children("span").css("color","#ffffff")
	
})
</script>
<style>
.fa-star {
	color: #ff0000;
}
</style>
<!-- 메인 부분 -->
<div class="product_top_wrap">
	<jsp:include page="/WEB-INF/views/product/product_sub_menu.jsp" flush="false"></jsp:include>
	<div class='area area_wrap'>
		<div class='product_wrap'>
 		<c:forEach var='product' items='${ProductAllList}'>
			<figure class='effect-winston'>
 			<input type='hidden' class='product_no' name='product_no' value='${product.product_no}'>
				<img src='<%=request.getContextPath()%>${product.product_main_photo}'/>
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
						<a href="#"><i class=''>${product.cost} / 1인</i></a>
						<a href="#"><i class='fa fa-fw fa-envelope-o'></i></a>
						<a href="#"><i class='fa fa-fw fa-star-o'></i></a>
					</p>
				</figcaption>			
			</figure>
		</c:forEach>
		</div>
	</div>
</div>
