<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
function checkform() {

	if ($("#menuname").val() == "") {
		alert("상품을 입력해주세요.!");
		return false;
	} else if ($("#menuprice").val() == "") {
		alert("가격을 입력해주세요.!");
		return false;
	}
	
	return true;
}


</script>

<div id="asideSize_menu">
	<form action="<%=request.getContextPath()%>/kat/menuForm/menuAdd.do" 
		method="post" name="addform" enctype="multipart/form-data" onsubmit="return checkform();">
		<div id="Add" class="Tabs">
			<div id="add_search_border_menu">
				<div id="add_search_header"><img class="menu_png" src="<%=request.getContextPath()%>/uploadfile/icon/menu.png"> 상품정보 등록</div>
				<ul>
					<li id="add_seat">여행상품 이름</li>
					<li class="textstyle"><input type="text" id="menuname"
						name="menu_name"></li>
				</ul>
				<ul>
					<li id="add_seat">여행상품 가격</li>
					<li class="textstyle"><input type="number" id="menuprice"
						name="menu_price" min="0" max="1000000" value="0"></li>
				</ul>
				<ul>
					<li id="add_seat">여행상품 종류</li>
					<li><input type="radio" id="category" name="menu_catagory"
						value="투어" class="default"> 투어 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_catagory"
						value="가이드" class="companybtn"> 가이드 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_catagory"
						value="셔틀" class="Universitybtn"> 셔틀 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_catagory"
						value="기타" class="Universitybtn"> 기타 &nbsp;</li>
				</ul>
				<ul>
					<li id="add_seat">여행상품 대륙선택</li>
					<li><input type="radio" id="category" name="menu_loc"
						value="아시아" class="default"> 아시아 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_loc"
						value="유럽" class="companybtn"> 유럽 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_loc"
						value="남미" class="Universitybtn"> 남미 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_loc"
						value="북미" class="Universitybtn"> 북미 &nbsp;</li>
				</ul>
				<ul>
					<li id="add_seat">여행상품 국가선택</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="1" class="default"> 대한민국 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="2" class="companybtn"> 일본&nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="3" class="Universitybtn"> 중국 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="4" class="Universitybtn"> 태국 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="5" class="default"> 독일 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="6" class="companybtn"> 스페인&nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="7" class="Universitybtn"> 프랑스 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="8" class="Universitybtn"> 체코 &nbsp;</li>
					<li>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
					<input type="radio" id="category" name="menu_nation"
						value="9" class="default">브라질 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="10" class="companybtn"> 아르헨티나&nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="11" class="Universitybtn"> 칠레 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="12" class="Universitybtn"> 온두라스 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="13" class="default"> 미국 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_nation"
						value="14" class="companybtn"> 캐나다&nbsp;</li>
				</ul>
				<ul>
					<li id="add_seat">여행상품 사진등록</li>
					<li class="filebox bs3-primary preview-image"><input
						class="upload-name" value="파일을 선택해주세요!" disabled="disabled"
						style="width: 200px;"> <label for="input_file">파일
							업로드</label> <input type="file" id="input_file" class="upload-hidden"
						name="menuPhotoFile"></li>
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
			<div id="add_search_header"> 등록된 여행상품 리스트
				&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;  등록된 총 여행상품수 :
				${MenuListInfo.pageTotalCount}</div>
			<table class="List_menu">
				<tr>
					<td>여행상품 이름</td>
					<td>여행상품 금액</td>
					<td>여행상품 사진</td>
					<td></td>
				</tr>
				
				<c:forEach var="menu" items="${MenuListInfo.getMenuInfoList()}">
					<tr class="listInfo" id="btnstyleSeat">
						<td>${menu.menu_name}</td>
						<td>${menu.menu_price} 원</td>
						<td><img alt="이미지 없음" id="seatSize"
							src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}"></td>
						<td><input type="submit" name="ch" value="수정하기"
							onclick="location.href='<%=request.getContextPath()%>/kat/menuForm/infoUpdate.do?no=${menu.menu_no}'">&nbsp;&nbsp;<input
							type="submit" name="de" value="삭제하기"
							onclick="location.href='<%=request.getContextPath()%>/kat/menuForm/menuDelete.do?no=${menu.menu_no}&menuphoto=${menu.file_menuphoto}'"></td>
					</tr>
				</c:forEach>

				<!-- 페이징 -->
				<tr>
					<td colspan="6" id="pagecenter"><c:forEach var="i" begin="1"
							end="${MenuListInfo.getPageNumber()}" step="1">
							<a href="<c:url value="/kat/menuForm/menuAdd.do?page=${i}"/>">[${i}]</a>
						</c:forEach></td>
				</tr>
			</table>
		</div>
	</div>
</div> 