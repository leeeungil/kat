<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- 메인 부분 -->
<div id="main">
	<section>
		<article id="article_main">
			<div class="service">
				<div class="wrap_div">
					<ul class="total_Ul">
						<li class="total_Li">
							<div><font></font></div>
						</li>
					</ul>
					<ul class="siteTotal">
						<li class="sitem1">
							<div class="wrap">
								<a href="<%=request.getContextPath()%>/kat_main.do">
									<img class="siteImage" src="<%=request.getContextPath()%>/img/hotelroom-2205447_640.jpg">
			                    </a>
							</div>
						</li>
						<li class="sitem1">
							<a href="<%=request.getContextPath()%>/kat_main.do">
								<img class="siteImage" src="<%=request.getContextPath()%>/img/costa-rica-shuttle-service-1619362_640.jpg">
							</a>
						</li>
						<li class="sitem1">
							<a href="<%=request.getContextPath()%>/kat/tourMain/tour.do">
								<img class="siteImage" src="<%=request.getContextPath()%>/img/city-3142651_640.jpg">
							</a>
						</li>
						<li class="sitem1">
							<a href="<%=request.getContextPath()%>/kat_main.do">
								<img class="siteImage" src="<%=request.getContextPath()%>/img/admission-2974645_640.jpg">
							</a>
						</li>
					</ul>
				</div>
			</div>
           
			<!-- Traveler Review -->
			<div class="ReviewBox"	>
				<ul class="review1" id="review1"><li>후기</li></ul>
				<ul id="content-slider3" class="content-slider3">
					<li style="text-align:center; margin-left:51px;">
						<c:forEach var="review" items="${ListInfoReview.getMainreviewList()}" varStatus="status">
						<div class="a1">
							<span>${review.review_title}</span>
							<div class="map_i">
							</div>
							<div class="review_i">
								<table>
									<tbody><tr>
										<td style="font-size: 12px; text-align: right;"><fmt:formatDate pattern="yyyy-MM-dd" value="${review.regdate}"/></td>
									</tr>
									<tr>
										<td style="font-size: 14px; text-align: left;">${review.user_id}</td>
										<td style="font-size: 14px; text-align: left;">${review.review_point}</td>
									</tr>
									<tr>
										<td style="font-size: 12px; text-align: left;">${review.review_content}</td>
									</tr></tbody>
								</table>
							</div>
						</div>
						</c:forEach>
					</li>
				</ul>
			</div>
		</article>
	</section>
</div>

<script type="text/javascript">
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("mainSlider");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
		x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 4000);
	}
	
	/* 메인 통합 검색 */
	/* 대륙 선택 */
	function continent_select(continent) {
		var objDiv1 = continent;
		var area_style = document.getElementById("continent");
		
		document.getElementById("continent").value = objDiv1;
		area_style.style.color = "#fff";
		area_style.style.backgroundColor = "#16bab4";
	}
	/* 국가 선택 */
	function country_select(country) {
		var objDiv1 = country;
		var area_style1 = document.getElementById("country");
		
		document.getElementById("country").value = objDiv1;
		area_style1.style.color = "#fff";
	    area_style1.style.backgroundColor = "#16bab4";
	}
	/* 도시 선택 */
	function city_select(city) {
		var objDiv1 = city;
		var area_style1 = document.getElementById("city");
		
		document.getElementById("city").value = objDiv1;
		area_style1.style.color = "#fff";
	    area_style1.style.backgroundColor = "#16bab4";
	}
	/* 상품 선택 */
	function product_select(product) {
		var objDiv1 = product;
		var area_style1 = document.getElementById("product");
		
		document.getElementById("product").value = objDiv1;
		area_style1.style.color = "#fff";
	    area_style1.style.backgroundColor = "#16bab4";
	}

	/* 메뉴 / 지역 / 키워드 히든처리 */
	function main_choice_menu(select_type) {
		var type = select_type;
		var continentDiv = document.getElementById("continent");
		var countryDiv = document.getElementById("country");
		var cityDiv = document.getElementById("city");
		var productDiv = document.getElementById("product");
		
		if(type==1){
			countryDiv.style.display = "none";
			cityDiv.style.display = "none";
			productDiv.style.display = "none";
			
			if(continentDiv.style.display == "block"){
				continentDiv.style.display = "none";
			} else {
				continentDiv.style.display = "block";
			}
		} else if(type==2){
			continentDiv.style.display = "none";
			cityDiv.style.display = "none";
			productDiv.style.display = "none";
			
			if(countryDiv.style.display == "block"){
				countryDiv.style.display = "none";
			} else {
				countryDiv.style.display = "block";
			}
		} else if(type==3){
			continentDiv.style.display = "none";
			countryDiv.style.display = "none";
			productDiv.style.display = "none";
			
			if(cityDiv.style.display == "block"){
				cityDiv.style.display = "none";
			} else {
				cityDiv.style.display = "block";
			}
		} else if(type==4){
			continentDiv.style.display = "none";
			countryDiv.style.display = "none";
			cityDiv.style.display = "none";
			
			if(productDiv.style.display == "block"){
				productDiv.style.display = "none";
			} else {
				productDiv.style.display = "block";
			}
		}
	}

	$(document).ready(function() {
		$("#content-slider").lightSlider({
			loop : true,
			keyPress : true
		});

	});

	$(document).ready(function() {
		$("#content-slider2").lightSlider({
			loop : true,
			keyPress : true
		});

	});
</script> 