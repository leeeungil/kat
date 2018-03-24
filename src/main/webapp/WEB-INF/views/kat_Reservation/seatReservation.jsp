<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="asideSize_open">
	<div id="Add" class="Tabs">
		<div id="seatReservation_list">
			<div id="add_search_header"> <img class="unlock_png" src="<%=request.getContextPath()%>/uploadfile/icon/unlock.png">
				 등록된 총 좌석수 : ${SeatListInfo.pageTotalCount}
				&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;<span id="seat_r"> 좌석을
					예약가능 상태를 설정해주셔야 예약이 가능합니다.</span>
			</div>
			<span id="seat_r"> [ 고객의 예약이 처리되면 알람이 울립니다. ]</span>
			<table class="List_menu" style="margin-top: 10px;">
				<tr>
					<td>좌석 인원수</td>
					<td>좌석 사진</td>
					<td>예약 가능상태</td>
					<td>현재 예약된 아이디</td>
					<td>※ 좌석 예약 관리</td>
				</tr>

				<c:forEach var="seat" items="${SeatListInfo.getSeatInfoList()}">
					<tr class="listInfo" id="btnstyleSeat">
						<td>${seat.file_seat}명</td>
						<td><img alt="이미지 없음" id="seatSize"
							src="<%=request.getContextPath()%>/uploadfile/memberphoto/${seat.file_seatphoto}"></td>
						
						<c:if test="${seat.seat_status == '예약가능'}">
						<td style="color: #16bab4; font-weight: 600;">${seat.seat_status}</td>
						</c:if>
						<c:if test="${seat.seat_status == '예약불가'}">
						<td style="color: red; font-weight: 600;">${seat.seat_status}</td>
						</c:if>
						
						
						<c:if test="${seat.reservation_id != '비어있음'}">
							<td style="color: #1DDB16; font-weight: 600;">${seat.reservation_id}</td>
						</c:if>
						<c:if test="${seat.reservation_id == '비어있음'}">
							<td>${seat.reservation_id}</td>
						</c:if>

						<td><input type="submit" name="ch" value="좌석 예약오픈"
							onclick="location.href='<%=request.getContextPath()%>/kat/seat/reservation.do?no=${seat.file_no}&status=open'">&nbsp;&nbsp;<input
							type="submit" name="de" value="좌석 예약닫기"
							onclick="location.href='<%=request.getContextPath()%>/kat/seat/reservation.do?no=${seat.file_no}&status=close'"></td>
					</tr>
				</c:forEach>

				<!-- 페이징 -->
				<tr>
					<td colspan="6" id="pagecenter"><c:forEach var="i" begin="1"
							end="${SeatListInfo.getPageNumber()}" step="1">
							<a
								href="<c:url value="/kat/seat/reservationList.do?page=${i}"/>">[${i}]</a>
						</c:forEach></td>
				</tr>
			</table>
		</div>
	</div>
</div>


<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">

$(window).ready(function(){
	
	var p = ${cp};
	
	 setInterval(function(){
		 

		 $.ajax({
		        url:'<%=request.getContextPath()%>/kat/seat/AjaxreservationList.do',
		        data: 'page=' + p,
		        success:function(data){
	           
		    		$(".Tabs").html(data);
		        
		        }
		    });
		 
	 }, 2000);
});

</script>
