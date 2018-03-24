<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="asideSize_seatsucess">

	<div id="add_search_border">
		<div id="add_search_header">※ 수정이 완료 되었습니다.</div>
	</div>


	<div id="Add" class="Tabs">
		<div id="seat_list">
			<div id="add_search_header">※ 아래와 같이 좌석이 수정되었습니다.</div>
			<table class="List_menu">
				<tr>
					<td></td>
					<td>수정된 인원수</td>
					<td>수정된 좌석 사진</td>
				</tr>
				<tr class="listInfo" id="btnstyleSeat">
					<td><input type="checkbox" checked="checked"></td>	
					<td>${SeatUpdateSucess.file_seat}명</td>
					<td><img alt="이미지 없음" id="seatSize"
						src="<%=request.getContextPath()%>/uploadfile/memberphoto/${SeatUpdateSucess.file_seatphoto}"></td>
				</tr>
			</table>
		</div>
	</div>
</div>