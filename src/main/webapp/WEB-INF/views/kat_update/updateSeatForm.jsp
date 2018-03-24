<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="#asideSize_seup">
	<form action="<%=request.getContextPath()%>/kat/seatForm/seatUpdate.do?no=${SeatInfoUpdate.file_no}&seatphoto=${SeatInfoUpdate.file_seatphoto}"
		method="post" name="addform" enctype="multipart/form-data">
		<div id="Add" class="Tabs">
			<div id="add_search_border_re">
				<div id="add_search_header">※ 좌석정보 수정</div>
				<ul>
					<li id="add_seat">※ 좌석인원수 수정</li>
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
					<li id="add_seat">※ 좌석 사진수정</li>
					<li class="filebox bs3-primary preview-image"><input
						class="upload-name" value="파일을 선택해주세요!" disabled="disabled"
						style="width: 200px;"> <label for="input_file">파일
							업로드</label> <input type="file" id="input_file" class="upload-hidden"
						name="seatPhotoFile"></li>
				</ul>
				<ul id="btnstyle">
					<li><input type="submit" id="Registration" name="seatbtn"
						value="수정"></li>
					<li><input type="reset" id="reset" name="resetbtn" value="취소"
						onclick="location.href='<%=request.getContextPath()%>/kat_main'"></li>
				</ul>
			</div>
		</div>
	</form>

	<div id="Add" class="Tabs">
		<div id="seat_list">
			<div id="add_search_header">선택된 수정 좌석</div>
			<table class="List_seat_up">
				<tr>
					<td></td>
					<td>좌석 인원수</td>
					<td>좌석 사진</td>
				</tr>
				<tr class="listInfo" id="btnstyleSeat">
					<td><input type="checkbox" checked="checked"></td>
					<td>${SeatInfoUpdate.file_seat}명</td>
					<td><img alt="이미지 없음" id="seatSize"
						src="<%=request.getContextPath()%>/uploadfile/memberphoto/${SeatInfoUpdate.file_seatphoto}"></td>
				</tr>
			</table>
		</div>
	</div>


</div>