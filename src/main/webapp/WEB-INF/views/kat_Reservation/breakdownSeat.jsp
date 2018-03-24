<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="breakdownSize">

	<div id="Add" class="Tabs">
		<div id="breakdown_list">
			<div id="seat_breakdown"><img class="re_png" src="<%=request.getContextPath()%>/uploadfile/icon/reserved.png">&nbsp;&nbsp;&nbsp; 예약내역
				&nbsp;&nbsp;/&nbsp;&nbsp;  예약내역 총 개수 : ${Breakdown.pageTotalCount} <span id="seat_r">  예약내역은 10개 단위로 볼 수 있습니다.</span></div>
			<table class="List_breakdown">
				<tr>
					<td>좌석 인원수</td>
					<td>좌석 사진</td>
					<td>예약자 아이디</td>
					<td>예약자 전화번호</td>
					<td>예약날짜</td>
				</tr>

				<c:forEach var="breakdown" items="${Breakdown.getShopInfoList()}">
					<tr class="listInfo" id="btnstyleSeat">
						<td>${breakdown.file_seat} 명</td>
						<td><img alt="이미지 없음" id="seatSize"
							src="<%=request.getContextPath()%>/uploadfile/memberphoto/${breakdown.file_seatphoto}"></td>
						<td>${breakdown.reservation_id}</td>
						<td>${breakdown.reservation_phone}</td>
						<td><fmt:formatDate pattern="yyyy년 MM월 dd일 HH시mm분" value="${breakdown.reservation_time}"/></td>
					</tr>
				</c:forEach>

				<!-- 페이징 -->
				<tr>
					<td colspan="6" id="pagecenter"><c:forEach var="i" begin="1"
							end="${Breakdown.getPageNumber()}" step="1">
							<a href="<c:url value="/shopInfoSeat/breakdown.do?page=${i}"/>">[${i}]</a>
						</c:forEach></td>
				</tr>
			</table>
		</div>
	</div>
</div>