<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="asideSize_me">
	<form action="<%=request.getContextPath()%>/kat/menuForm/MenuUpdate.do?no=${MenuInfoUpdate.menu_no}&menuphoto=${MenuInfoUpdate.file_menuphoto}"
		method="post" name="addform" enctype="multipart/form-data">
		<div id="Add" class="Tabs">
			<div id="add_search_border">
				<div id="add_search_header">※ 상품정보 수정</div>
				<ul>
					<li id="add_seat">※ 상품이름 수정</li>
					<li class="textstyle"><input type="text" id="menuname"
						name="menu_name"></li>
				</ul>
				<ul>
					<li id="add_seat">※ 상품가격 수정</li>
					<li class="textstyle"><input type="number" id="menuprice"
						name="menu_price" min="0" max="1000000" value="0"></li>
				</ul>
				<ul>
					<li id="add_seat">※ 상품종류 수정</li>
					<li><input type="radio" id="category" name="menu_catagory"
						value="투어" class="default"> 투어 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_catagory"
						value="가이드" class="companybtn"> 가이드 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_catagory"
						value="셔틀" class="Universitybtn"> 셔틀 &nbsp;</li>
					<li><input type="radio" id="category" name="menu_catagory"
						value="기타" class="Universitybtn"> 기타 &nbsp;</li>
				<ul>
					<li id="add_seat">※ 메뉴 사진수정</li>
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
			<div id="add_search_header">선택된 수정 메뉴</div>
			<table class="List_menu_up">
				<tr>
					<td></td>
					<td>상품 이름</td>
					<td>상품 금액</td>
					<td>상품 종류</td>
					<td>상품 사진</td>
				</tr>
				<tr class="listInfo" id="btnstyleSeat">
					<td><input type="checkbox" checked="checked"></td>
					<td>${MenuInfoUpdate.menu_name}</td>
					<td>${MenuInfoUpdate.menu_price} 원</td>
					<td>${MenuInfoUpdate.menu_catagory}</td>
					<td><img alt="이미지 없음" id="seatSize"
						src="<%=request.getContextPath()%>/uploadfile/menuphoto/${MenuInfoUpdate.file_menuphoto}"></td>
				</tr>
			</table>
		</div>
	</div>


</div>