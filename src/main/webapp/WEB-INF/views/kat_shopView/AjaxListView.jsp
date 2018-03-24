<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
			<td><button type="button" name="ch" value="${seat.seat_status}"
					onclick="checkseat(${status.index} , ${seat.file_no});"
					id="seatchk${status.index}" class="chk_seat">예약하기</button></td>
		</tr>
	</c:forEach>
</table>