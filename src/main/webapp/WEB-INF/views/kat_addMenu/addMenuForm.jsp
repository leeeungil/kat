<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
function checkform() {
	if ($("#product_name").val() == "") {
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
	<form action="<%=request.getContextPath()%>/kat/menuForm/productAdd.do" method="post" name="addform" enctype="multipart/form-data" onsubmit="return checkform();">
		<div id="Add" class="Tabs">
			<div id="add_search_border_menu">
				<div id="add_search_header">
					<img class="menu_png" src="<%=request.getContextPath()%>/uploadfile/icon/menu.png"> 상품정보 등록</div>
				<ul><li id="add_seat">여행상품 이름
				</li><li class="textstyle">
					<input type="text" id="product_name" name="product_name">
				</li></ul>
				<ul><li id="add_seat">여행상품 가격
				</li><li class="textstyle">
					<input type="number" id="menuprice" name="cost" min="0" max="1000000" value="0">
				</li></ul>
				<ul>
					<li id="add_seat">여행상품 종류</li>
					<li><input type="radio" id="product_type" name="product_type" value="1" class="default"> 투어 &nbsp;</li>
					<li><input type="radio" id="product_type" name="product_type" value="2" class="companybtn"> 티켓 &nbsp;</li>
					<li><input type="radio" id="product_type" name="product_type" value="3" class="Universitybtn"> 셔틀 &nbsp;</li>
					<li><input type="radio" id="product_type" name="product_type" value="4" class="Universitybtn"> 기타 &nbsp;</li>
				</ul>
				<ul>
					<li id="add_seat">여행상품 대륙 선택</li>
					<li><input type="radio" id="continent" name="continent" value="아시아" class="default"> 아시아 &nbsp;</li>
					<li><input type="radio" id="continent" name="continent" value="유럽" class="companybtn"> 유럽 &nbsp;</li>
					<li><input type="radio" id="continent" name="continent" value="남미" class="Universitybtn"> 남미 &nbsp;</li>
					<li><input type="radio" id="continent" name="continent" value="북미" class="Universitybtn"> 북미 &nbsp;</li>
				</ul>
				<ul>
					<li id="add_seat">여행상품 국가 선택</li>
					<li><input type="radio" id="country" name="country" value="일본" class="companybtn"> 일본&nbsp;</li>
					<li><input type="radio" id="country" name="country" value="중국" class="Universitybtn"> 중국 &nbsp;</li>
					<li><input type="radio" id="country" name="country" value="말레이시아" class="Universitybtn"> 말레이시아 &nbsp;</li>
					<li><input type="radio" id="country" name="country" value="독일" class="default"> 독일 &nbsp;</li>
					<li><input type="radio" id="country" name="country" value="스페인" class="companybtn"> 스페인&nbsp;</li>
					<li><input type="radio" id="country" name="country" value="프랑스" class="Universitybtn"> 프랑스 &nbsp;</li>
					<li><input type="radio" id="country" name="country" value="체코" class="Universitybtn"> 체코 &nbsp;</li>
					<li><input type="radio" id="country" name="country" value="브라질" class="default">브라질 &nbsp;</li>
					<li><input type="radio" id="country" name="country" value="아르헨티나" class="companybtn"> 아르헨티나&nbsp;</li>
					<li><input type="radio" id="country" name="country" value="칠레" class="Universitybtn"> 칠레 &nbsp;</li>
					<li><input type="radio" id="country" name="country" value="온두라스" class="Universitybtn"> 온두라스 &nbsp;</li>
					<li><input type="radio" id="country" name="country" value="미국" class="default"> 미국 &nbsp;</li>
					<li><input type="radio" id="country" name="country" value="캐나다" class="companybtn"> 캐나다&nbsp;</li>
				</ul>
				<ul>
					<li id="add_seat">여행상품 도시 선택</li>
					<li><input type="radio" id="city" name="city" value="1" class="default"> 한국(서울) &nbsp;</li>
					<li><input type="radio" id="city" name="city" value="2" class="companybtn"> 한국(부산)&nbsp;</li>
					<li><input type="radio" id="city" name="city" value="3" class="Universitybtn"> 한국(인천) &nbsp;</li>
				</ul>
				<ul>
					<li id="add_seat">여행상품 사진등록</li>
					<li class="filebox bs3-primary preview-image">
					<input class="upload-name" value="파일을 선택해주세요!" disabled="disabled" style="width: 200px;"> <label for="input_file">파일 업로드</label> 
						<input type="file" id="input_file" class="upload-hidden" name="multipart_product_file">
					</li>
				</ul>
				<ul id="btnstyle">
					<li><input type="submit" id="Registration" name="seatbtn" value="등록"></li>
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
						<td>${menu.product_name}</td>
						<td>${menu.cost} 원</td>
						<td><img alt="이미지 없음" id="seatSize"
							src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.menu_photo_file}"></td>
						<td><input type="submit" name="ch" value="수정하기"
							onclick="location.href='<%=request.getContextPath()%>/kat/menuForm/infoUpdate.do?no=${menu.product_no}'">&nbsp;&nbsp;<input
							type="submit" name="de" value="삭제하기"
							onclick="location.href='<%=request.getContextPath()%>/kat/menuForm/menuDelete.do?no=${menu.product_no}&menuphoto=${menu.file_menuphoto}'"></td>
					</tr>
				</c:forEach>

				<!-- 페이징 -->
				<tr>
					<td colspan="6" id="pagecenter"><c:forEach var="i" begin="1"
							end="${MenuListInfo.getPageNumber()}" step="1">
							<a href="<c:url value="/kat/menuForm/productAdd.do?page=${i}"/>">[${i}]</a>
						</c:forEach></td>
				</tr>
			</table>
		</div>
	</div>
</div> 