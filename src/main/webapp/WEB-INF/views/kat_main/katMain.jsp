<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- script 가져오기 -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js?ver=1"></script>
<script src="<%=request.getContextPath()%>/script/lightslider.js?ver=1"></script>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding|Quattrocento" rel="stylesheet">


<!-- 메인 부분 -->

<div id="main">
	<section>
		<article id="article_main">
			<!-- 메인 슬라이드 쇼 -->
			<div class="main_slideshow">
				<img class="Slides" src="<%=request.getContextPath()%>/img/bagan-1137015_1280.jpg" style="width: 1680px; height: 700px;"> 
				<img class="Slides" src="<%=request.getContextPath()%>/img/church-3024768_1280.jpg" style="width: 1690px; height: 700px;"> 
				<img class="Slides" src="<%=request.getContextPath()%>/img/mickey-mause-832112_1280.jpg" style="width: 1690px; height: 700px;"> 
				<img class="Slides" src="<%=request.getContextPath()%>/img/london-3078109_1280.jpg" style="width: 1690px; height: 700px;"> 
				<img class="Slides" src="<%=request.getContextPath()%>/img/girl-2619983_1280.jpg" style="width: 1690px; height: 700px;">
			</div>
			<!-- 컨텐츠 메뉴 (지역선택,메뉴선택,키워드,검색,초기화) -->
			<form id="content_form"
				action="<%=request.getContextPath()%>/kat/SearchList/SearchInfo.do"
				method="post">
				<div id="content_menu">
					<input type="text" placeholder="CITY" class="select_area"
						id="choice" onclick="area_hide()" name="select_area" readonly
						style="font-size: 26px;"> <input type="text"
						placeholder="ITEM" class="select_menu" id="choice_1"
						onclick="menu_hide() " name="select_menu" readonly
						style="font-size: 26px;"> <input type="search"
						placeholder=" KEYWORD" class="menu_keyword" onclick="key_hide()"
						name="select_key" style="font-size: 26px;"> <input
						type="submit" placeholder="Search" id="search_data"
						style="font-size: 26px;">
					<div id="choice" style="text-align: right;"></div>

					<!-- <input type="reset" value="초기화" id="searchreset"> -->


					<!-- 지역선택 컨텐츠 -->
					<div id="area" style="display: none">
						<ul id="area_step2">
							<li id="seoul" onclick="area_select('서울')">서울</li>
							<li id="gyeonggi" onclick="area_select('경기')">경기도</li>
							<li id="jeju" onclick="area_select('제주')">제주</li>
							<li id="busan" onclick="area_select('부산')">부산</li>
							<li id="chungnam" onclick="area_select('충남')">충청남도</li>
							<li id="chungbuk" onclick="area_select('충북')">충청북도</li>
							<li id="jeonnam" onclick="area_select('전남')">전라남도</li>
							<li id="gyeongbuk" onclick="area_select('경북')">경상북도</li>
							<li id="gyeongnam" onclick="area_select('경남')">경상남도</li>
							<li id="jeonbuk" onclick="area_select('전북')">전라북도</li>
							<li id="ulsan" onclick="area_select('울산')">울산</li>
							<li id="daejeon" onclick="area_select('대전')">대전</li>
							<li id="daegu" onclick="area_select('대구')">대구</li>
					</ul>
					</div>

					<!-- 메뉴 선택 컨텐츠 -->
					<div id="menu" style="display: none">
						<ul id="menu_step2">
							<li id="B" onclick="menu_select('셔틀')">셔틀</li>
							<li id="W" onclick="menu_select('투어')">투어</li>
							<li id="K" onclick="menu_select('가이드')">가이드</li>
							<li id="E" onclick="menu_select('기타')">기타</li>
						</ul>
					</div>
				</div>
			</form>

			<div id="ma1" style="margin-top:250px; text-align:center; background-color:#D8D8D8; font-size:30px;"></div>
			<div class="service">
               <div class="sitem1">
                    <a href="<%=request.getContextPath()%>/kat_main.do"><img src="<%=request.getContextPath()%>/img/hotelroom-2205447_640.jpg" style="width:310px; height:250px; border-radius:10px;"></a>
                    <div>
                       <br>
                        <p>&nbsp;&nbsp;숙박</p><br>
                    </div>
                </div>
               <div class="sitem1">
                    <a href="<%=request.getContextPath()%>/kat_main.do"><img src="<%=request.getContextPath()%>/img/costa-rica-shuttle-service-1619362_640.jpg" style="width:310px; height:250px; border-radius:10px;"></a>
                    <div>
                      <br>
                        <p>&nbsp;&nbsp;셔틀</p><br>
                   </div>
                </div>
                <div class="sitem1">
                    <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img src="<%=request.getContextPath()%>/img/city-3142651_640.jpg" style="width:310px; height:250px; border-radius:10px;"></a>
                   <div>
                       <br>
                       <p>&nbsp;&nbsp;투어</p><br>
                    </div>
                </div>
                <div class="sitem1">
               <a href="<%=request.getContextPath()%>/kat_main.do"><img src="<%=request.getContextPath()%>/img/admission-2974645_640.jpg" style="width:310px; height:250px; border-radius:10px;"></a>
                    <div>
                       <br>
                        <p>&nbsp;&nbsp;티켓</p><br>
                   </div>
               </div>
                
                </div>
             
           
			<!-- Traveler Review -->

			<div class="ReviewBox" style="margin-top: 150px;">
				<div class="review">
					<span id="review1">후기</span>
					<ul id="content-slider3" class="content-slider3">
						<li style="text-align:center; margin-left:51px;">
						<c:forEach var="review" items="${ListInfoReview.getMainreviewList()}" varStatus="status">
							<div class="a1">
								<span>${review.review_title}</span>
								<div class="map_i">
									<%-- <img src="<%=request.getContextPath()%>/img/map_i.PNG"><span>대한민국</span> --%>
							</div>
								<div class="review_i">
									<table>
										<tr>
											<td style="font-size: 12px; text-align: right;"><fmt:formatDate pattern="yyyy-MM-dd" value="${review.regdate}"/></td>
										</tr>
										<tr>
											<td style="font-size: 14px; text-align: left;">${review.user_id}</td>
											<td style="font-size: 14px; text-align: left;">${review.review_point}</td>
										</tr>
										<tr>
											<td style="font-size: 12px; text-align: left;">${review.review_content}</td>
										</tr>
										
									</table>
								
								</div>
							</div>
							</c:forEach>
						</li>
					</ul>
				</div>
			</div>
		</article>
	</section>
</div>
<br>
<br>
<br>


<script type="text/javascript">
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("Slides");
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

	/* 지역선택 */

	function area_select(area) {
		var objDiv1 = area;
		var area_style = document.getElementById("choice");
		
		document.getElementById("choice").value = objDiv1;
		area_style.style.color = "#fff";
		area_style.style.backgroundColor = "#16bab4";
	}

	/* 메뉴 값 선택 */

	function menu_select(menu) {
		var objDiv1 = menu;
		var area_style1 = document.getElementById("choice_1");
		
		
		document.getElementById("choice_1").value = objDiv1;
		area_style1.style.color = "#fff";
	    area_style1.style.backgroundColor = "#16bab4";

	}

	/* 메뉴 / 지역 / 키워드 히든처리 */

	function area_hide() {
		var objDiv = document.getElementById("area");
		var objDiv1 = document.getElementById("menu");

		objDiv1.style.display = "none";

		if (objDiv.style.display == "block") {
			objDiv.style.display = "none";
		} else {
			objDiv.style.display = "block";
		}
	}

	function menu_hide() {
		var objDiv1 = document.getElementById("menu");
		var objDiv = document.getElementById("area");

		objDiv.style.display = "none";

		if (objDiv1.style.display == "block") {
			objDiv1.style.display = "none";
		} else {
			objDiv1.style.display = "block";
		}

	}

	function key_hide() {
		var objDiv1 = document.getElementById("menu");
		var objDiv = document.getElementById("area");

		objDiv1.style.display = "none";
		objDiv.style.display = "none";

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