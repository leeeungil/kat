<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!--  Style Sheet (bootstrap) -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- font-awesome (css icon) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<!-- JQuery  -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<!-- BootStrap -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA5s4pJbjRg6BepnRE74YzFPctKGD7yyQo&libraries=places&callback=initAutocomplete" async defer></script>

<!--매장사진-->

<div id="mainSize">
	<div id="on_company_name">
		<span id="shop_name"><img class="store"
			src="<%=request.getContextPath()%>/uploadfile/icon/store.png"
			style="height: 40px; width: 40px; position: relative; top: 10px; margin-right: 20px;">${InfoShopAddress.business_name}</span>
	</div>

	<c:if test="${ShopPhotoList.getPhotoInfoList().size() != 0}">
		<div class="shopall_re" style="max-width: 500px">
			<c:forEach var="shop" items="${ShopPhotoList.getPhotoInfoList()}">
				<img class="shopSlides"
					src="<%=request.getContextPath()%>/uploadfile/shopphoto/${shop.file_shopphoto}"
					style="width: 500px; height: 400px;">
			</c:forEach>
		</div>
	</c:if>

	<c:if test="${ShopPhotoList.getPhotoInfoList().size() == 0}">
		<div class="shopall_re" style="max-width: 500px">
			<img class="shopSlides"
				src="<%=request.getContextPath()%>/uploadfile/memberphoto/nophoto.png"
				style="width: 500px; height: 400px;">
		</div>
	</c:if>

	<div id="roleInfo">
		<h4>예약시 필독사항안내</h4>
		<p>저희 OnTable은 테이블 예약 후 부재를 방지하기 위해 예약금을 받고있습니다.</p>
		<br>
		<h4>예약금 환불 규정</h4>
		<p>예약 취소가 불가능 하오니 신중을 기해 예약 해주시기 바랍니다.</p>
		<p>
	<span style="color: #FF5A5A;">예약시 15분 동안 오시지 않을시 사업자가 예약가능으로
				변경될 수 있음</span>을 알려드립니다.
	</p>
		<p>이용해주셔서 감사합니다.</p>
	</div>
	<span id="mapsize"><img class="placeholder"
		src="<%=request.getContextPath()%>/uploadfile/icon/placeholder.png"
		style="height: 40px; width: 40px; position: relative; top: 10px; margin-right: 20px;">관광지</span>
	<!-- 모달창을 띄울 버튼 -->
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
	data-target="#myModal" onClick="resize()">위치 검색</button>
	<!-- 모달창 -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!--Modal content-->
			<div class="modal-content" style="width: 730px; height: 750px;">
				<!-- 주소찾기 -->
				<div class="modal-header" style="">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">
						<i class="fa fa-map-o" style="font-size: 24px"></i>주소찾기
					</h4>
				</div>
				<div class="modal-body" style="height: 84%; padding: 10px;">
					<!-- 구글 맵 검색input -->
					<input id="pac-input" class="controls" type="text"
						placeholder="주소 검색">
					<!-- 구글 맵 --> 
					<div id="map"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

<br><br>

<span id="mapsize"><img class="review"
	src="<%=request.getContextPath()%>/uploadfile/icon/review.png"
	style="height: 40px; width: 40px; position: relative; top: 10px; margin-right: 20px;">리뷰글</span>
<div id="reviewList">
	<table id="reviewListTable">
		<tr class="cent_boder">
		<td class="centered1">번호</td>
			<td class="centered2">내용</td>
			<td class="centered3">평점</td>
			<td class="centered4">작성자</td>
			<td class="centered5">작성일</td>
		</tr>
		<c:forEach var="review" items="${ListInfoReview.getReviewList()}"
			varStatus="status">
			<tr>
				<td class="centered">${status.count}</td>
				<td>${review.review_content}</td>
				<td>${review.review_point}</td>
				<td>${review.user_id}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd"
						value="${review.regdate}" /></td>
			</tr>
		</c:forEach>

		<!-- 페이징 -->

		<tr>
			<td style="border: none;"></td>
			<td align="center" style="border: none;"><c:forEach var="i"
					begin="1" end="${ListInfoReview.getPageNumber()}" step="1">
					<a href="<c:url value="/kat/seatInfoLsit/reservation.do?SearchName=${SearchName}&page=${i}"/>">[${i}]</a>
				</c:forEach></td>
		</tr>
	</table>
</div>
</div>
<div id="asideSize">
	<!-- 가격및 메뉴정보-->
	<table id="priceInfo">
		<tr>
			<td class="line1" colspan="3"><img class="shopmenu"
				src="<%=request.getContextPath()%>/uploadfile/icon/shopmenu.png"
				style="height: 40px; width: 40px; position: relative; top: 5px; margin-right: 20px; margin-left: 10px;">
				가격정보</td>
		</tr>
		<tr>
			<td class="line4"></td>
			<td class="line2">상품명</td>
			<td class="line2">가격</td>
		</tr>
		<c:forEach var="menu" items="${MenuListInfo.getMenuInfoList()}">
			<tr id="table_h">
				<td><img alt="이미지 없음" id="menu_size"
					src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}"
					style="padding-bottom: 5px; padding-top: 5px;"></td>
				<td>${menu.menu_name}</td>
				<td>${menu.menu_price}원</td>
			</tr>
		</c:forEach>
	</table>
	<a id="reservationBtn"
		href="<%=request.getContextPath()%>/shopInfoSeat/seatRegister.do?shop=${ShopPhotoList.user_id}">예약하기</a>
	<a id="reservationBtn_1"
		href="<%=request.getContextPath()%>/customer/board/writelist.do">문의하기</a>
	<!-- 로그인한 사용자만 글쓰기 버튼을 활성화 -->
<c:if test="${sessionScope.user_id != null}">
		<div id="reviewWriteBtn">
		<a id="review_btn"
				href="<c:url value="/kat/reviewWriteForm/write.do?SearchName=${SearchName}"/>">리뷰쓰기</a>
		</div>
	</c:if>
	<c:if test="${sessionScope.user_id == null}">
		<div id="reviewWriteBtn">
			<a id="review_btn" onclick="loginchk()">리뷰쓰기</a>
		</div>
	</c:if>
</div>

<script>
/***** Google Map Init *****/

function initAutocomplete() {
 var map = new google.maps.Map(document.getElementById('map'), {
   center: {lat: 37.946295, lng: 126.000023},
   zoom: 8,
   mapTypeId: google.maps.MapTypeId.ROADMAP
 });
 // Create the search box and link it to the UI element.
 var input = document.getElementById('pac-input');
 var searchBox = new google.maps.places.SearchBox(input);
 map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

 // Bias the SearchBox results towards current map's viewport.
 map.addListener('bounds_changed', function() {
   searchBox.setBounds(map.getBounds());
 });

 var markers = [];
 // [START region_getplaces]
 // Listen for the event fired when the user selects a prediction and retrieve
 // more details for that place.
 searchBox.addListener('places_changed', function() {
   var places = searchBox.getPlaces();
   if (places.length == 0) {
     return;
   }
   // Clear out the old markers.
   markers.forEach(function(marker) {
   marker.setMap(null);
   });

   markers = [];
   // For each place, get the icon, name and location.
   var bounds = new google.maps.LatLngBounds();
   places.forEach(function(place) {
     var icon = {
       url: place.icon,
      size: new google.maps.Size(71, 71),
       origin: new google.maps.Point(0, 0),
       anchor: new google.maps.Point(17, 34),
       scaledSize: new google.maps.Size(25, 25)
    };
     // Create a marker for each place.
     markers.push(new google.maps.Marker({
       map: map,
       icon: icon,
       title: place.name,
       position: place.geometry.location
     }));

     if (place.geometry.viewport) {
       // Only geocodes have viewport.
       bounds.union(place.geometry.viewport);
     } else {
       bounds.extend(place.geometry.location);
     }
   });
   map.fitBounds(bounds);
 });
}
	//모달창이 띄어질 경우 구글 맵 리사이즈
function resize(){
	$('#myModal').on('shown.bs.modal', function(){
	google.maps.event.trigger(map, "resize");
	});
}

	/* 슬라이드 */
	var myIndex = 0;
	carousel();
	function carousel() {
		var i;
		var x = document.getElementsByClassName("shopSlides");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
	x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 2000); // Change image every 2 seconds
	}
	
	
	function loginchk(){
		alert("로그인후 이용가능 합니다.");
		location.href = "<%=request.getContextPath()%>/ontable_main.do";

	}
</script>
