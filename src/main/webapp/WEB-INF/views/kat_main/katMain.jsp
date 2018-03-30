<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- script 가져오기 -->
<script src="<%=request.getContextPath()%>/script/lightslider.js"></script>

<!-- 메인 부분 -->
<div id="main">
	<section>
		<article id="article_main">
			<!-- 컨텐츠 메뉴 ( 대륙, 국가, 도시, 상품, 검색, 초기화 ) -->
			<form class='content_form' id="content_form" action="<%=request.getContextPath()%>/kat/SearchList/SearchInfo.do" method="post">
				<div class='content_menu' id="content_menu"> 
					<input type="text" value="대륙" class="main_select select_continent" id="continent_select" onclick="main_choice_menu(1)" name="select_continent" readonly>
					<input type="text" value="국가" class="main_select select_country" id="country_select" onclick="main_choice_menu(2)" name="select_country" readonly>
					<input type="text" value="도시" class="main_select select_city" id="city_select" onclick="main_choice_menu(3) " name="select_city" readonly>
					<input type="text" value="상품" class="main_select select_product" id="product_select" onclick="main_choice_menu(4) " name="select_product" readonly>
					<!-- <input type="search" placeholder=" KEYWORD" class="menu_keyword" onclick="key_hide()" name="select_key" style="font-size: 26px;"> -->
					<input type="submit" value="검색" class='main_select search_data' id="search_data">
					
					<!-- <input type="reset" value="초기화" id="searchreset"> -->

					<!-- 메뉴 선택 컨텐츠 -->
					<div id="continent" style="display: none">
						<ul id="menu_step2">
							<li id="B" onclick="continent_select('셔틀')">셔틀</li>
							<li id="W" onclick="continent_select('투어')">투어</li>
							<li id="K" onclick="continent_select('가이드')">가이드</li>
							<li id="E" onclick="continent_select('기타')">기타</li>
						</ul>
					</div>
					<!-- 메뉴 선택 컨텐츠 -->
					<div id="country" style="display: none">
						<ul id="menu_step2">
							<li id="B" onclick="country_select('셔틀')">셔틀</li>
							<li id="W" onclick="country_select('투어')">투어</li>
							<li id="K" onclick="country_select('가이드')">가이드</li>
							<li id="E" onclick="country_select('기타')">기타</li>
						</ul>
					</div>
					<!-- 지역선택 컨텐츠 -->
					<div id="city" style="display: none">
						<ul id="area_step2">
							<li id="seoul" onclick="city_select('서울')">서울</li>
							<li id="gyeonggi" onclick="city_select('경기')">경기도</li>
							<li id="jeju" onclick="city_select('제주')">제주</li>
							<li id="busan" onclick="city_select('부산')">부산</li>
							<li id="chungnam" onclick="city_select('충남')">충청남도</li>
							<li id="chungbuk" onclick="city_select('충북')">충청북도</li>
							<li id="jeonnam" onclick="city_select('전남')">전라남도</li>
							<li id="gyeongbuk" onclick="city_select('경북')">경상북도</li>
							<li id="gyeongnam" onclick="city_select('경남')">경상남도</li>
							<li id="jeonbuk" onclick="city_select('전북')">전라북도</li>
							<li id="ulsan" onclick="city_select('울산')">울산</li>
							<li id="daejeon" onclick="city_select('대전')">대전</li>
							<li id="daegu" onclick="city_select('대구')">대구</li>
						</ul>
					</div>

					<!-- 메뉴 선택 컨텐츠 -->
					<div id="product" style="display: none">
						<ul id="menu_step2">
							<li id="B" onclick="product_select('셔틀')">셔틀</li>
							<li id="W" onclick="product_select('투어')">투어</li>
							<li id="K" onclick="product_select('가이드')">가이드</li>
							<li id="E" onclick="product_select('기타')">기타</li>
						</ul>
					</div>
				</div>
			</form>
			
			<!-- 메인 슬라이드 쇼 -->
			<div class="main_slideshow">
				<img class="mainSlider" src="<%=request.getContextPath()%>/img/mainSlider/1.jpg"> 
				<img class="mainSlider" src="<%=request.getContextPath()%>/img/mainSlider/2.jpg"> 
				<img class="mainSlider" src="<%=request.getContextPath()%>/img/mainSlider/3.jpg"> 
				<img class="mainSlider" src="<%=request.getContextPath()%>/img/mainSlider/4.jpg"> 
				<img class="mainSlider" src="<%=request.getContextPath()%>/img/mainSlider/5.jpg">
			</div>
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