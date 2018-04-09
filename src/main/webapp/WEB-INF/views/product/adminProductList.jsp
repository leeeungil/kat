<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
$(document).ready(function() {
	<%-- $.ajax({
		url: '<%=request.getContextPath()%>/product/findUserIdProduct',
		type: 'post',
		dataType: 'json',
		beforeSend: function() {
			$(".area").append("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
		} 
		success: function(data) {
			alert("Loading Success")
		}
	}) --%>
}) 
</script>
<style>
.product_list_table {
	width: 100%;
}
.product_list_table > tbody > tr > td {
	border: 0px solid ;
}
.product_list_table > tbody > tr > td:nth-child(1) { width: 5% }
.product_list_table > tbody > tr > td:nth-child(2) { width: 5% }
.product_list_table > tbody > tr > td:nth-child(3),
.product_list_table > tbody > tr > td:nth-child(4) {
	min-width: 80px;
    text-align: center;
    width: 4%;
}
.product_list_table > tbody > tr > td:nth-child(5) { width: 5% }
.product_list_table > tbody > tr > td:nth-child(6) { width: 5% }
.product_list_table > tbody > tr > td:nth-child(7) { width: 5% }
.product_list_table > tbody > tr > td:nth-child(8) { width: 5% }
.product_list_table > tbody > tr > td:nth-child(9) { width: 5% }
.product_list_table > tbody > tr > td:nth-child(10) { width: 5% }
.product_list_table > tbody > tr > td:nth-child(11) { width: 5% }
</style>
<!-- 메인 부분 -->
<div id="main">
	<section>
		<article id="article_main">
			<table class='product_list_table'><thead><tr>
				<td colspan='11'>상품 전체 현황</td>
			</tr></thead>
			<tbody><tr>
				<td>Product Number</td>
				<td>Product Type</td>
				<td>Country</td>
				<td>City</td>
				<td>Title</td>
				<td>Product Name</td>
				<td>Cost</td>
				<td>Input Info</td>
				<td>Request Date</td>
				<td>Sales Status</td>
				<td>Sales Start Date</td>
			</tr>
			<c:forEach var='adminProduct' items='${adminProductList}'>
				<tr>
					<td name='${adminProduct.product_no}'>${adminProduct.product_no}</td>
					<td name='${adminProduct.product_type}'>${adminProduct.product_type_name}</td>
					<td name='${adminProduct.country_no}'>${adminProduct.country}</td>
					<td name='${adminProduct.city_no}'>${adminProduct.city}</td>
					<td>${adminProduct.product_title}</td>
					<td>${adminProduct.product_name}</td>
					<td>${adminProduct.cost}</td>
					<td>${adminProduct.cost}</td>
					<td>${adminProduct.create_date}</td>
					<td>${adminProduct.cost}</td>
					<td>${adminProduct.sales_start_date}</td>
				</tr>
			</c:forEach>
			</tbody></table>
		</article>
	</section>
</div>
