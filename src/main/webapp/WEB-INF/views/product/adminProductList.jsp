<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
$(document).ready(function() {
	<%-- $.ajax({
		url: '<%=request.getContextPath()%>/product/findUserIdProduct',
		type: 'post',
		dataType: 'json',
		beforeSend: function() {
			$("#article_main").append("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
		},
		success: function(data) {
			alert("Loading Success")
		}
	}) --%>
	$(document).on("mouseenter", ".product_list_table > tbody > tr", function() {
		$(this).addClass("hover_tr");
	}).on("mouseleave", ".product_list_table > tbody > tr", function() {
		$(this).removeClass("hover_tr");
	})
	$(document).on("click", ".info_td > a", function() {
		var targetModal = $(this).attr("data-modal");
		var product_no = $(this).parents("td").attr("name")
		$("#"+targetModal).addClass("md-show");
		$.ajax({
			url: '<%=request.getContextPath()%>/product/findUserProfile',
			type: 'post',
			data: { "product_no": product_no},
			dataType: 'json',
			success: function(productModel) {
				var contextPath = '<%=request.getContextPath()%>'
				var mainPhoto = contextPath + productModel.product_main_photo; 
				$("#"+targetModal +" > .md-content > h3").html(productModel.product_title)
				$("#"+targetModal +" #user_profile").val(productModel.user_profile)
				$("#"+targetModal +" .md-content").css("background-image",'url('+mainPhoto+')')
			}
		})
	})
}) 
</script>
<style> 
.product_list_table {
    width: 96%;
    margin: auto;
	margin-top: 1%;
}
.hover_tr {
    cursor: pointer;
    box-shadow: #000000 0px 0px 22px 2px;
	transform: scale(1.03, 1.23);
	transition: transform 0.3s cubic-bezier(0, 0.5, 0.59, 0.85);
	-ms-transition: transform 0.3s cubic-bezier(0, 0.5, 0.59, 0.85);
	-o-transition: transform 0.3s cubic-bezier(0, 0.5, 0.59, 0.85);
	-webkit-transition: transform 0.3s cubic-bezier(0, 0.5, 0.59, 0.85);
}
.product_list_table > thead > tr { 
    border-bottom: 1px solid #a4a4a4;
    height: 60px;
    text-align: center;
}
.product_list_table > thead > tr > td { 
	font-size: 20px;
    font-weight: 800;
    background: #151719;
    color: white;
    padding: 5px;
}
.product_list_table > tbody > tr {
    border-bottom: 3px solid #ffffff;
    text-align: center;
    line-height: 1.4;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
	height: 200px;
}
.product_list_table > tbody > tr > td {
    background-color: #00000078;
    font-weight: 800;
    transition: unset;
    font-size: 17px;
    color: white;
}
.product_list_table > tbody > tr > td:nth-child(1) { 
	min-width: 40px;
	width: 1%;
}
.product_list_table > tbody > tr > td:nth-child(2) {
    width: 2%;
}
.product_list_table > tbody > tr > td:nth-child(3),
.product_list_table > tbody > tr > td:nth-child(4) {
	min-width: 64px;
    width: 4%;
}
.product_list_table > tbody > tr > td:nth-child(5) { width: 18% }
.product_list_table > tbody > tr > td:nth-child(6) {
    width: 8%;
    min-width: 60px;
}
.product_list_table > tbody > tr > td:nth-child(7) {
    width: 4%;
    min-width: 66px;
}
.product_list_table > tbody > tr > td:nth-child(8) {
    width: 8%;
    min-width: 100px;
	background-color: #000000b0;
}
.product_list_table > tbody > tr > td:nth-child(9) { width: 10% }
.product_list_table > tbody > tr > td:nth-child(10) { width: 5% }
.product_list_table > tbody > tr > td:nth-child(11) { width: 5% }

a {
	cursor: pointer;
}
p {
	text-decoration: none!important; 
}
.empty-effect {
    color: red;
    font-size: 15px;
    text-decoration: underline;
}
.none-empty-effect {
    color: #6ba2ff;
    font-size: 15px;
    text-decoration: underline;
}
.none-empty-effect:hover {
	color: #ffffff;
}
</style>
<!-- 메인 부분 -->
<div id="main">
	<section>
		<article id="article_main">
			<jsp:include page="/WEB-INF/views/modal/userProfileInfoModal_1.jsp" flush="false"></jsp:include>
			<table class='product_list_table'><thead><tr>
				<td>Product Number</td>
				<td>Product Type</td>
				<td>Country</td>
				<td>City</td>
				<td>Title</td>
				<td>Product Name</td>
				<td>Cost<p>(One Person)</p></td>
				<td>Input Info<p>(Complete %)</p></td>
				<td>Request Date</td>
				<td>Sales Status</td>
				<td>Sales Start Date</td>
			</tr></thead>
			<tbody>
			<c:forEach var='adminProduct' items='${adminProductList}'>
				<tr style='background-image:url(<%=request.getContextPath()%>${adminProduct.product_main_photo})'>
					<c:if test="${empty adminProduct}">
						<td colspan='11'>상품이 없습니다.</td>
					</c:if>
					<c:if test="${!empty adminProduct}">
						<td name='${adminProduct.product_no}'>${adminProduct.product_no}</td>
						<td name='${adminProduct.product_type}'>${adminProduct.product_type_name}</td>
						<td name='${adminProduct.country_no}'>${adminProduct.country}</td>
						<td name='${adminProduct.city_no}'>${adminProduct.city}</td>
						<td>${adminProduct.product_title}</td>
						<td>${adminProduct.product_name}</td>
						<td>${adminProduct.cost}</td>
						<td class='info_td' name='${adminProduct.product_no}'>
							<c:choose>
								<c:when test="${1 eq adminProduct.delete_flag}">
									<c:if test="${empty adminProduct.user_profile}">
										<p class="empty-effect" data-modal="modal-1">User profile</a> 
									</c:if>
									<c:if test="${!empty adminProduct.user_profile}"> 
										<p class="none-empty-effect" data-modal="modal-1">User profile</a> 
									</c:if>
									<c:if test="${empty adminProduct.product_content}">
										<p class="empty-effect" data-modal="modal-2">Product content</a>
									</c:if>
									<c:if test="${!empty adminProduct.product_content}">
										<p class="none-empty-effect" data-modal="modal-2">Product content</a>
									</c:if>
									<c:if test="${empty adminProduct.product_info}">
										<p class="empty-effect" data-modal="modal-3">Product info</a>
									</c:if>
									<c:if test="${!empty adminProduct.product_info}">
										<p class="none-empty-effect" data-modal="modal-4">Product info</a>
									</c:if>
									<c:if test="${empty adminProduct.course}">
										<p class="empty-effect" data-modal="modal-5">Course</a>
									</c:if>
									<c:if test="${!empty adminProduct.course}">
										<p class="none-empty-effect" data-modal="modal-5">Course</a>
									</c:if>
								</c:when>
								<c:otherwise>
									<c:if test="${empty adminProduct.user_profile}">
										<a class="empty-effect" data-modal="modal-1">User profile</a> 
									</c:if>
									<c:if test="${!empty adminProduct.user_profile}"> 
										<a class="none-empty-effect" data-modal="modal-1">User profile</a> 
									</c:if>
									<p></p>
									<c:if test="${empty adminProduct.product_content}">
										<a class="empty-effect" data-modal="modal-2">Product content</a>
									</c:if>
									<c:if test="${!empty adminProduct.product_content}">
										<a class="none-empty-effect" data-modal="modal-2">Product content</a>
									</c:if>
									<p></p>
									<c:if test="${empty adminProduct.product_info}">
										<a class="empty-effect" data-modal="modal-3">Product info</a>
									</c:if>
									<c:if test="${!empty adminProduct.product_info}">
										<a class="none-empty-effect" data-modal="modal-4">Product info</a>
									</c:if>
									<p></p>
									<c:if test="${empty adminProduct.course}">
										<a class="empty-effect" data-modal="modal-5">Course</a>
									</c:if>
									<c:if test="${!empty adminProduct.course}">
										<a class="none-empty-effect" data-modal="modal-5">Course</a>
									</c:if>
								</c:otherwise>
							</c:choose>
						</td>
						<td>${adminProduct.create_date}</td>
						<td>
							<c:if test="${1 eq adminProduct.delete_flag}">
								End of sale
							</c:if>
							<c:if test="${1 ne adminProduct.delete_flag}">
								<c:if test="${0 eq adminProduct.use_flag}">
									Awaiting approval
								</c:if>
								<c:if test="${1 eq adminProduct.use_flag}">
									Sale
								</c:if>
							</c:if>
						</td> 
						<td>${adminProduct.sales_start_date}</td>
					</c:if>
				</tr>
			</c:forEach>
			</tbody></table>
		</article>
	</section>
</div>
