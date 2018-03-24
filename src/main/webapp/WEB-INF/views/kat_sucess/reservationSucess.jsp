<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="join_kat_resuecess">
	<div id="agree_align_re">
		<span id="join_size_1">예약정보</span><br> <br> <span id="agree">On
			Table 예약 내역</span>
		<table id="tabe_align_resucess">
			<tr>
				<td><br> <br>

					<div id="seat_list_resucess">
						<div id="add_search_header"><img class="userid"
			src="<%=request.getContextPath()%>/uploadfile/icon/userid.png" style="height: 40px; width: 40px; position: relative; top: 10px; margin-right: 20px;">  ${user_id} 님이 예약한 좌석</div>

						<table class="List_menu_resucess">
							<tr>
								<td>좌석 인원수</td>
								<td>좌석 사진</td>
								<td></td>
								<td>예약자</td>
								<td>예약한 시간</td>
							</tr>
							<tr class="listInfo" id="btnstyleSeat">
								<td>${Re_seatInfo.file_seat}명</td>
								<td><img alt="이미지 없음" id="seatSize"
									src="<%=request.getContextPath()%>/uploadfile/memberphoto/${Re_seatInfo.file_seatphoto}"></td>
								<td>
								<td>${Re_seatInfo.reservation_id}</td>
								<td><fmt:formatDate pattern="yyyy년 MM월 dd일 HH시mm분"
										value="${Re_time}" /></td>
							</tr>
						</table>
					</div> <br> <br> <input type="button" value="처음으로 돌아가기"
					onclick="location.href='<%=request.getContextPath()%>/kat_main.do'">
				</td>
			</tr>
		</table>
	</div>
</div>

<div id="re_kat">
	<div id="agree_align_resucees">
		<span id="join_size_1"><img class="megaphone"
			src="<%=request.getContextPath()%>/uploadfile/icon/megaphone.png" style="height: 40px; width: 40px; position: relative; top: 10px; margin-right: 20px;">안내문</span><br> <br> <span id="agree">kat 안내문</span>
		<table id="info_re">
			<tr>
				<td>예약내역은 가입하실때 입력하신 <span style="color: red;">메일</span>로 전송됩니다.<br></td>
			</tr>
			<tr>
				<td>내정보에서도 예약 내역을 확인하실 수 있습니다.</td>
			</tr>
		</table>
	</div>
</div>