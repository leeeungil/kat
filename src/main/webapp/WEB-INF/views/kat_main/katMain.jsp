<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/card/four_card.css">
<script>
	$(function(){
		$(".card-img-top").lazyload();
	});
</script>
<style>
.main_sub_title {
	font-weight: 700;
    font-size: 28px;
    letter-spacing: -0.6px;
    color: #484848;
    margin-top: 20px;
}
.main_sub_title > font {
    font-size: 22px;
    color: #767676;
    font-weight: 400;
    margin-left: 2em;
}
.power_travel_product_section,
.popular_shuttle_section,
.popular_snap_section {
	background-color: #a8a8a8;
}
.travel_info > div > a > img {
	height: 300px
}
section {
	padding-bottom: 10px;	
}
@media (min-width: 1200px) {
	.col-lg-2 {
	    width: 20%;
    }
}
.user_profile_photo {
	width: 55px;
	height: 55px;
	margin: auto;
	border-radius:  100%;
	position: absolute;
	left: calc((100% - 50px)/2);
	margin-top: -36px;
	background-color: #333333;
    background-size: cover;
    box-shadow: black 0 0 8px 1px;
    transition: all 0.1s cubic-bezier(0.4, 0, 1, 1);
}
.user_profile_photo:hover {
	transform: scale(2)	
}
.card-body {
	padding: 0 5px;
}
</style>
<!-- 메인 부분 -->
<section class='popular_room_section'>
<div class="container">
	<div class="row">
		<label class='main_sub_title'>Popular Rooms</label>
	</div>
	<div class="row">
	<c:forEach var='productMap' items='${productAllList.popularRoomList}'>
		<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item popular_room">
			<input type='hidden' name='product_no' class='${productMap.product_no}' value='${productMap.product_no}'>
			<div class="card h-100">
				<a>
					<img class="card-img-top" data-original="<%=request.getContextPath()%>${productMap.product_main_photo}">
				</a>
				<div class="card-body">
					<span class='user_profile_photo' style='background-image: url(<%=request.getContextPath()%>${productMap.product_main_photo})'></span>
					<c:choose>
						<c:when test="${productMap.product_type eq '1' }">
							<h6 class="card-sub-title tour_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Tour</font></h6>
						</c:when>
						<c:when test="${productMap.product_type eq '2' }">
							<h6 class="card-sub-title shuttle_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Shuttle</font></h6>
						</c:when>
						<c:when test="${productMap.product_type eq '3' }">
							<h6 class="card-sub-title ticket_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Ticket</font></h6>
						</c:when>
						<c:when test="${productMap.product_type eq '4' }">
							<h6 class="card-sub-title snap_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Snap</font></h6>
						</c:when>
					</c:choose>
					
					<h4 class="card-title">
						<a href="#" title='${productMap.product_title}'>${productMap.product_title}</a>
					</h4>
					<p class="card-text">₩ ${productMap.cost} Per Person</p>
				</div>
			</div>
		</div>
	</c:forEach>
	</div>
</div> 
</section>
<section class='power_travel_product_section'>
<div class="container">	
	<div class="row">
		<label class='main_sub_title'><i class="fa fa-thumbs-o-up" style="color: red"></i>Power Travel Product</label> 
	</div>
	<div class="row">
		<c:forEach var='productMap' items='${productAllList.powerTravelProductList}'>
		<div class="col-lg-4 col-md-4 col-sm-4 portfolio-item power_travel_product">
			<input type='hidden' name='product_no' class='${productMap.product_no}' value='${productMap.product_no}'>
			<div class="card h-100">
				<a href="#">
					<img class="card-img-top" data-original="<%=request.getContextPath()%>${productMap.product_main_photo}">
				</a>
				<div class="card-body">
					<c:choose>
						<c:when test="${productMap.product_type eq '1' }">
							<h6 class="card-sub-title tour_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Tour</font></h6>
						</c:when>
						<c:when test="${productMap.product_type eq '2' }">
							<h6 class="card-sub-title shuttle_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Shuttle</font></h6>
						</c:when>
						<c:when test="${productMap.product_type eq '3' }">
							<h6 class="card-sub-title ticket_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Ticket</font></h6>
						</c:when>
						<c:when test="${productMap.product_type eq '4' }">
							<h6 class="card-sub-title snap_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Snap</font></h6>
						</c:when>
					</c:choose>
					
					<h4 class="card-title">
						<a href="#" title='${productMap.product_title}'>${productMap.product_title}</a>
					</h4>
					<p class="card-text"> ₩ ${productMap.cost} Per Person</p> 
				</div>
			</div>
		</div>
	</c:forEach>
	</div>
</div>
</section>
<section class='popular_tour_section'>
	<c:set var="popularTourList" value="${productAllList.popularTourList}" />
	<div class="container">
		<div class="row">
			<c:forEach var='productPrice' end='0' items='${popularTourList}'>
			<label class='main_sub_title'><i class="fa fa-plane"></i>Popular Tour <font>₩ ${productPrice.cost} Per Person ~ </font></label>
			</c:forEach>
		</div>
		<div class="row">
			<c:forEach var='productMap' items='${popularTourList}'>
			<div class="col-lg-2 col-md-4 col-sm-4 portfolio-item popular_tour">
				<input type='hidden' name='product_no' class='${productMap.product_no}' value='${productMap.product_no}'>
				<div class="card h-100">
					<a href="#">
						<img class="card-img-top" data-original="<%=request.getContextPath()%>${productMap.product_main_photo}">
					</a>
					<div class="card-body">
						<c:choose>
							<c:when test="${productMap.product_type eq '1' }">
								<h6 class="card-sub-title tour_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Tour</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '2' }">
								<h6 class="card-sub-title shuttle_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Shuttle</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '3' }">
								<h6 class="card-sub-title ticket_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Ticket</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '4' }">
								<h6 class="card-sub-title snap_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Snap</font></h6>
							</c:when>
						</c:choose>
						
						<h4 class="card-title">
							<a href="#" title='${productMap.product_title}'>${productMap.product_title}</a>
						</h4>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</section>
<section class='popular_shuttle_section'>
	<div class="container">		
		<div class="row">
			<c:forEach var='productPrice' end='0' items='${productAllList.popularShuttleList}'>
				<label class='main_sub_title'><i class='fa fa-bus'></i>Popular Shuttle <font>₩ ${productPrice.cost} Per Person ~ </font></label>
			</c:forEach>
		</div>
		<div class="row">
			<c:forEach var='productMap' items='${productAllList.popularShuttleList}'>
			<div class="col-lg-2 col-md-4 col-sm-4 portfolio-item popular_shuttle">
				<input type='hidden' name='product_no' class='${productMap.product_no}' value='${productMap.product_no}'>
				<div class="card h-100">
					<a href="#">
						<img class="card-img-top" data-original="<%=request.getContextPath()%>${productMap.product_main_photo}">
					</a>
					<div class="card-body">
						<c:choose>
							<c:when test="${productMap.product_type eq '1' }">
								<h6 class="card-sub-title tour_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Tour</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '2' }">
								<h6 class="card-sub-title shuttle_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Shuttle</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '3' }">
								<h6 class="card-sub-title ticket_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Ticket</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '4' }">
								<h6 class="card-sub-title snap_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Snap</font></h6>
							</c:when>
						</c:choose>
						
						<h4 class="card-title">
							<a href="#" title='${productMap.product_title}'>${productMap.product_title}</a>
						</h4>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</section>
<section class='popular_ticket_section'>
	<div class="container">		
		<div class="row">
			<c:forEach var='productPrice' end='0' items='${productAllList.popularTicketList}'>
				<label class='main_sub_title'><i class='fa fa-ticket'></i>Popular Ticket <font>₩ ${productPrice.cost} Per Person ~ </font></label>
			</c:forEach>
		</div>
		<div class="row">
			<c:forEach var='productMap' items='${productAllList.popularTicketList}'>
			<div class="col-lg-2 col-md-4 col-sm-4 portfolio-item popular_ticket">
				<input type='hidden' name='product_no' class='${productMap.product_no}' value='${productMap.product_no}'>
				<div class="card h-100">
					<a href="#">
						<img class="card-img-top" data-original="<%=request.getContextPath()%>${productMap.product_main_photo}">
					</a>
					<div class="card-body">
						<c:choose>
							<c:when test="${productMap.product_type eq '1' }">
								<h6 class="card-sub-title tour_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Tour</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '2' }">
								<h6 class="card-sub-title shuttle_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Shuttle</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '3' }">
								<h6 class="card-sub-title ticket_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Ticket</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '4' }">
								<h6 class="card-sub-title snap_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Snap</font></h6>
							</c:when>
						</c:choose>
						
						<h4 class="card-title">
							<a href="#" title='${productMap.product_title}'>${productMap.product_title}</a>
						</h4>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</section>
<section class='popular_snap_section'>
	<div class="container">		
		<div class="row">
			<c:forEach var='productPrice' end='0' items='${productAllList.popularSnapList}'>
				<label class='main_sub_title'><i class='fa fa-camera'></i>Popular Snap <font>₩ ${productPrice.cost} Per Person ~ </font></label>
			</c:forEach>
		</div>
		<div class="row">
			<c:forEach var='productMap' items='${productAllList.popularSnapList}'>
			<div class="col-lg-2 col-md-4 col-sm-4 portfolio-item popular_snap">
				<input type='hidden' name='product_no' class='${productMap.product_no}' value='${productMap.product_no}'>
				<div class="card h-100">
					<a href="#">
						<img class="card-img-top" data-original="<%=request.getContextPath()%>${productMap.product_main_photo}">
					</a>
					<div class="card-body">
						<c:choose>
							<c:when test="${productMap.product_type eq '1' }">
								<h6 class="card-sub-title tour_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Tour</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '2' }">
								<h6 class="card-sub-title shuttle_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Shuttle</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '3' }">
								<h6 class="card-sub-title ticket_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Ticket</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '4' }">
								<h6 class="card-sub-title snap_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Snap</font></h6>
							</c:when>
						</c:choose>
						
						<h4 class="card-title">
							<a href="#" title='${productMap.product_title}'>${productMap.product_title}</a>
						</h4>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</section>
<section class='travel_info_section'>
	<div class="container">		
		<div class="row">
			<label class='main_sub_title'><i class='fa fa-info-circle'></i>Travel Information</label>
		</div>
		<div class="row">
			<c:forEach var='productMap' items='${productAllList.tourInfoList}'>
			<div class="col-lg-6 col-md-6 col-sm-6 portfolio-item travel_info">
				<input type='hidden' name='product_no' class='${productMap.product_no}' value='${productMap.product_no}'>
				<div class="card h-100">
					<a href="#"> 
						<img class="card-img-top" data-original="<%=request.getContextPath()%>${productMap.product_main_photo}">
					</a>
					<div class="card-body">
						<c:choose>
							<c:when test="${productMap.product_type eq '1' }">
								<h6 class="card-sub-title tour_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Tour</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '2' }">
								<h6 class="card-sub-title shuttle_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Shuttle</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '3' }">
								<h6 class="card-sub-title ticket_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Ticket</font></h6>
							</c:when>
							<c:when test="${productMap.product_type eq '4' }">
								<h6 class="card-sub-title snap_color">${productMap.country} > ${productMap.city}<font class='product_type_name'>Snap</font></h6>
							</c:when>
						</c:choose>
						
						<h4 class="card-title">
							<a href="#" title='${productMap.product_title}'>${productMap.product_title}</a>
						</h4>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</section>
