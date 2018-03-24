<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script type="text/javascript">

if (${Searchlist.resultCode == 1}) {
	alert('검색 키워드를 설정해주세요');
	location.href = "<%=request.getContextPath()%>/kat_main.do";
}

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

<div id="asideSize">

	<!-- 컨텐츠 메뉴 (지역선택,메뉴선택,키워드,검색,초기화) -->
	<form id="content_form"
		action="<%=request.getContextPath()%>/kat/SearchList/SearchInfo.do"
		method="post">
		<div id="content_menu">
			<input type="text" value="지역선택" class="select_area" id="choice"
				onclick="area_hide()" name="select_area" readonly> <input
				type="text" value="메뉴선택" class="select_menu" id="choice_1"
				onclick="menu_hide() " name="select_menu" readonly> <input
				type="search" placeholder=" 메뉴 키워드 입력" class="menu_keyword"
				onclick="key_hide()" name="select_key"> <input type="submit"
				value="검색" id="search_data">
			<!--  <input type="reset" value="초기화" id="searchreset"> -->



			<!-- 지역선택 컨텐츠 -->
			<div id="area" style="display: none">
				<ul id="area_step2">
					<li id="seoul" onclick="area_select('서울')">서울</li>
					<li id="gyeonggi" onclick="area_select('경기')">경기</li>
					<li id="incheon" onclick="area_select('인천')">인천</li>
					<li id="gangwon" onclick="area_select('강원')">강원</li>
					<li id="jeju" onclick="area_select('제주')">제주</li>
					<li id="busan" onclick="area_select('부산')">부산</li>
					<li id="chungnam" onclick="area_select('충남')">충남</li>
					<li id="chungbuk" onclick="area_select('충북')">충북</li>
					<li id="jeonnam" onclick="area_select('전남')">전남</li>
					<li id="gyeongbuk" onclick="area_select('경북')">경북</li>
					<li id="gyeongnam" onclick="area_select('경남')">경남</li>
					<li id="jeonbuk" onclick="area_select('전북')">전북</li>
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




	<c:if test="${Searchlist.getShopInfoList().size() != 0}">
		<table class="main_table">
			<tr>
				<td><c:forEach var="search" items="${Searchlist.getShopInfoList()}" varStatus="status">
						<ul id="photolist">
							<li id="photoinfo"><span id="namefont">${status.count}.${search.menu_name}</span><br> <br> 
							                   <span id="infoFont"><span id="shopfontsize">
							                   <img class="shoppin" src="<%=request.getContextPath()%>/uploadfile/icon/pin.png"></span>
									관광지위치 : ${search.address1}</span><br> <br> 
									<span id="infoFont">
									<span id="shopfontsize">
									<img class="shopicon" src="<%=request.getContextPath()%>/uploadfile/icon/icon.png">
									</span>
									상품 분류 : <c:if test="${search.menu_catagory == null}">
									[상품 예약하기] 누르시면 관광지의 정보를 볼 수 있습니다.
									</c:if> 
									<c:if test="${search.menu_catagory != null}">
									${search.menu_catagory}
									</c:if> </span><br> <br>
									
								<ul id="miniMenu">
									<li><a
										href="<%=request.getContextPath()%>/kat/seatInfoLsit/reservation.do?SearchName=${search.user_id}">매장
											예약하기</a></li>
								</ul> <br></li>
								
						</ul>
					</c:forEach></td>
			</tr>
			<tr>
				<td><c:forEach var="i" begin="1"
						end="${Searchlist.getPageNumber()}" step="1">
						<a
							href="<c:url value="/kat/SearchList/SearchInfo.do?page=${i}"/>">[${i}]</a>
					</c:forEach></td>
			</tr>
		</table>
	</c:if>

	<c:if test="${Searchlist.getShopInfoList().size() == 0}">
		<table class="main_table">
			<tr>
				<td>
					<ul id="photolist">
						<li id="photoinfo"><span id="namefont"> 검색한 결과가 없습니다.</span><br>
							<br> <span id="infoFont"><span id="shopfontsize"><img
									class="shoppin"
									src="<%=request.getContextPath()%>/uploadfile/icon/pin.png"></span>
								관광지위치 : 검색한 결과가 없습니다.</span><br> <br> <span id="infoFont"><span
								id="shopfontsize"><img class="shopicon"
									src="<%=request.getContextPath()%>/uploadfile/icon/icon.png"></span>
								관광지 분류 : 검색한 결과가 없습니다.</span><br> <br>
							<ul id="miniMenu">
								<li><a
									href="<%=request.getContextPath()%>/kat_main.do?">메인으로
										가기</a></li>
							</ul> <br></li>
					</ul>
				</td>
			</tr>
		</table>
	</c:if>
</div>