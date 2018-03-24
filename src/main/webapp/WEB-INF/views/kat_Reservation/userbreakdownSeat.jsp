<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="breakdownSize_user">

	<div id="Add" class="Tabs">
		<div id="breakdown_list">
			<div id="seat_breakdown"><img class="re_png" src="<%=request.getContextPath()%>/uploadfile/icon/reserved.png">&nbsp;&nbsp;&nbsp; 예약내역
				&nbsp;&nbsp;&nbsp; <span id="seat_r">  예약내역은 최근예약 100개만 볼 수 있습니다.</span></div>
			<table class="List_breakdown">
				<tr>
					<td>예약좌석 인원수</td>
					<td>예약한 매장이름</td>
					<td>예약한 매장 전화번호</td>
					<td>예약 시간</td>
				</tr>

				<c:forEach var="breakdown" items="${UserBreakdown.getShopInfoList()}">
					<tr class="listInfo" id="btnstyleSeat">
						<td>${breakdown.file_seat} 명</td>
						<td>${breakdown.shop_name}</td>
						<td>${breakdown.shop_phone}</td>
						<td><fmt:formatDate pattern="yyyy년 MM월 dd일 HH시mm분" value="${breakdown.shop_re_time}"/></td>
					</tr>
				</c:forEach>

				<!-- 페이징 -->
				<tr>
					<td colspan="6" id="pagecenter"><c:forEach var="i" begin="1"
							end="${UserBreakdown.getPageNumber()}" step="1">
							<c:if test="${i < 11}">
							<a href="<c:url value="/shopInfoSeat/userbreakdown.do?page=${i}"/>">[${i}]</a>
							</c:if>
						</c:forEach></td>
				</tr>
			</table>
		</div>
	</div>
</div>