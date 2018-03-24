<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="mainSize_reing">
	<div id="Add" class="Tabs">
		<div id="seat_list_reing">
			<div id="add_search_header_re"> 예약 진행중인 좌석 </div>
			<table class="List_menu_size_ing">
				<tr>
					<td>좌석 인원수</td>
					<td>좌석 사진</td>
					<td>결제 하기</td>
				</tr>
				<tr class="listInfo" id="btnstyleSeat">
					<td>${seatInfo.file_seat}명</td>
					<td><img alt="이미지 없음" id="seatSize"
						src="<%=request.getContextPath()%>/uploadfile/memberphoto/${seatInfo.file_seatphoto}"></td>
					<td><button type="button" name="ch" value="1"
							onclick="payment( '${seatInfo.user_id}' , ${seatInfo.file_no});"
							id="pay" class="paychk">결제하기</button></td>
				</tr>
			</table>
		</div>
	</div>
</div>


<div id="map_kat_re">
	<div id="agree_align">
		<span id="join_size_1">예약시 주의사항</span><br> <br> <span
			id="agree">kat 예약 주의사항</span>

		<table id="info_re">
			<tr>
				<td>예약시 환불은 불가능하오니 참고하시기 바랍니다.<br></td>
			</tr>
			<tr>
				<td>매장에서 예약금액 외 금액만 결재하시면 됩니다.</td>
			</tr>
			<tr>
				<td>이용해주셔서 감사합니다.</td>
			</tr>
		</table>

	</div>
</div>


<script type="text/javascript">

function payment(num , num2) {
	
    var windowW = 500; // 창의 가로 길이
    var windowH = 500; // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW) / 2);
    var top = Math.ceil((window.screen.height - windowH) / 2);
    var url = "<%=request.getContextPath()%>/shopPayment/payment.do?chk="+num+"&chk2="+num2;
    
		window.open(url, "get", "top=" + top + ", left=" + left + ", height=" + windowH + ", width=" + windowW);
	}
	
	
function routemain() {

	location.href = "<%=request.getContextPath()%>/kat_main.do";
	
}

function routback() {

	location.href = "<%=request.getContextPath()%>/shopInfoSeat/seatRegister.do?shop=${seatInfo.user_id}";
	
}

function routnormality() {

	location.href = "<%=request.getContextPath()%>/shopInfoSeat/ReservationSucess.do?seat=${seatInfo.file_no}";
	
}
	
	
	
</script>