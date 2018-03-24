<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.kat.seat.model.SeatInfoListView"%>
<%
	SeatInfoListView seatInfoListView = (SeatInfoListView) request.getAttribute("SeatListInfo");
%>


<c:if test="${user_id == null}">
	<script type="text/javascript">
	alert('로그인 후 이용가능 합니다.');
	location.href = "<%=request.getContextPath()%>/kat_main.do";
</script>
</c:if>

<div id="asideSize_ps">
	<div id="asideSize_add">
		<div id="redips-drag_r">
			<div id="tbl1html"></div>
		</div>
	</div>
</div>


<div id="re_size">
	<div id="Add" class="Tabs">
		<div id="seat_list">
			<div id="add_search_header_re">예약가능 좌석 리스트</div>
			<table class="List_menu_rsize">
				<tr>
					<td>좌석 인원수</td>
					<td>좌석 사진</td>
					<td>예약 가능상태</td>
					<td></td>
				</tr>
				<c:forEach var="seat" items="${SeatListInfo.getSeatInfoList()}"
					varStatus="status">
					<tr class="listInfo" id="btnstyle_reservation">
						<td>${seat.file_seat}명</td>
						<td><img alt="이미지 없음" id="seatSize"
							src="<%=request.getContextPath()%>/uploadfile/memberphoto/${seat.file_seatphoto}"></td>
						<c:if test="${seat.seat_status == '예약불가'}">
							<td id="colorchose"><span id="result${status.index}"
								style="color: red;">${seat.seat_status}</span></td>
						</c:if>
						<c:if test="${seat.seat_status == '예약가능'}">
							<td><span id="result${status.index}"
								style="color: #000000; font-weight: bold;">${seat.seat_status}</span>
							</td>
						</c:if>
						<td><button type="button" name="ch"
								value="${seat.seat_status}"
								onclick="checkseat(${status.index} , ${seat.file_no});"
								id="seatchk${status.index}" class="chk_seat">예약하기</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>

<%-- <div id="asideSeatSize_re">
	<div class="shopall" style="max-width: 300px">
		<c:forEach var="shop" items="${ShopPhotoList.getPhotoInfoList()}">
			<img class="shopSlides"
				src="<%=request.getContextPath()%>/uploadfile/shopphoto/${shop.file_shopphoto}"
				style="width: 300px; height: 250px;">
		</c:forEach>
	</div>
</div> --%>


<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">

function checkseat(num , num2) {
	
	if (document.getElementById('seatchk'+num).value  == '예약불가') {
		alert("예약가능한 상태를 확인해주세요");
		location.reload()
	}
	
	if (document.getElementById('seatchk'+num).value  == '예약가능') {
		alert("예약 페이지로 이동합니다.");
		location.href = "<%=request.getContextPath()%>/shopInfoSeat/ReservationInfo.do?shop="+num2
	}
}


/* var myIndex = 0;
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
} */


// 예약가능 상태 ajax 처리

$(window).ready(function(){
	
	 setInterval(function(){

		 $.ajax({
		        url:'<%=request.getContextPath()%>/shopInfoSeat/AjaxController.do',
		        data: 'shop=${ShopPhotoList.user_id}',
		        success:function(data){
	           
		    		$("#seat_list").html(data);
		        
		        }
		    });
		 
	 }, 1000);
});


		$(document).ready(function() {
			$.ajax('<%=request.getContextPath()%>/uploadfile/position/${SeatListPhotoUser}', {
				success : function(data) {
					$('#tbl1html').append(data);
				}
			});
		});


</script>