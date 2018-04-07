<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="asideSize_add">
	<form action="<%=request.getContextPath()%>/kat/business/managePage.do"
		method="post" name="addform" enctype="multipart/form-data">
		<div id="Add" class="Tabs">
			<div id="add_search_border">
				<div id="add_search_header"><img class="seat_png" src="<%=request.getContextPath()%>/uploadfile/icon/seat.png">좌석정보 등록</div>
				<ul>
					<li id="add_seat">좌석인원수 등록</li>
					<li class="textstyle"><select id="seat_select"
						name="file_seat">
							<option value="1">1명</option>
							<option value="2">2명</option>
							<option value="3">3명</option>
							<option value="4">4명</option>
							<option value="5">5명</option>
							<option value="6">6명</option>
							<option value="7">7명</option>
							<option value="8">8명</option>
					</select></li>
				</ul>
				<ul>
					<li id="add_seat">좌석 사진등록</li>
					<li class="filebox bs3-primary preview-image"><input
						class="upload-name" value="파일을 선택해주세요!" disabled="disabled"
						style="width: 200px;"> <label for="input_file">파일
							업로드</label> <input type="file" id="input_file" class="upload-hidden"
						name="seatPhotoFile"></li>
				</ul>
				<ul id="btnstyle">
					<li><input type="submit" id="Registration" name="seatbtn"
						value="등록"></li>
					<li><input type="reset" id="reset" name="resetbtn" value="초기화"></li>
				</ul>
			</div>
		</div>
	</form>

	<div id="Add" class="Tabs">
		<div id="seat_list">
			<div id="add_search_header"> 등록된 좌석 리스트
				&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp; 등록된 총 좌석수 :
				${SeatListInfo.pageTotalCount}</div>
			<table class="List_menu">
				<tr>
					<td>좌석 인원수</td>
					<td>좌석 사진</td>
					<td></td>
				</tr>

				<c:forEach var="seat" items="${SeatListInfo.getSeatInfoList()}">
					<tr class="listInfo" id="btnstyleSeat">
						<td>${seat.file_seat}명</td>
						<td><img alt="이미지 없음" id="seatSize"
							src="<%=request.getContextPath()%>/uploadfile/memberphoto/${seat.file_seatphoto}"></td>
						<td><input type="submit" name="ch" value="수정하기"
							onclick="location.href='<%=request.getContextPath()%>/kat/seatForm/infoUpdate.do?no=${seat.file_no}'">&nbsp;&nbsp;<input
							type="submit" name="de" value="삭제하기"
							onclick="location.href='<%=request.getContextPath()%>/kat/seatForm/seatDelete.do?no=${seat.file_no}&seatphoto=${seat.file_seatphoto}'"></td>
					</tr>
				</c:forEach>

				<!-- 페이징 -->
				<tr>
					<td colspan="5" id="pagecenter"><c:forEach var="i" begin="1"
							end="${SeatListInfo.getPageNumber()}" step="1">
							<a href="<c:url value="/kat/business/managePage.do?page=${i}"/>">[${i}]</a>
						</c:forEach></td>
				</tr>
			</table>
		</div>
	</div>
</div>