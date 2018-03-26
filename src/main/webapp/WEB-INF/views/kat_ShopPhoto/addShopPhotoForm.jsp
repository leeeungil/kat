<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="asideSize_shoppoto">
	<form
		action="<%=request.getContextPath()%>/kat/shopPhotoForm/shopPhotoAdd.do"
		method="post" name="addform" enctype="multipart/form-data">
		<div id="Add" class="Tabs">
			<div id="add_search_border_shop">
				<div id="add_search_header_shop"> <img class="shop_png" src="<%=request.getContextPath()%>/uploadfile/icon/shop.png"> 업체사진 등록</div>
				<ul>
					<li id="add_seat">업체 사진등록</li>
					<li class="filebox bs3-primary preview-image"><input
						class="upload-name" value="파일을 선택해주세요!" disabled="disabled"
						style="width: 200px;"> <label for="input_file">파일
							업로드</label> <input type="file" id="input_file" class="upload-hidden"
						name="shopPhotoFile"></li>
				</ul>
				<ul id="btnstyle">
					<li><input type="submit" id="Registration" name="seatbtn"
						value="등록"></li>
					<li><input type="reset" id="reset" name="resetbtn"
						onclick="location.href='<%=request.getContextPath()%>/kat/seatForm/seatAdd.do'"
						value="취소"></li>
				</ul>
			</div>
		</div>
	</form>
	<div class="container">
		<div class="shop_size_photo" style="max-width: 350px">
			<c:forEach var="shop" items="${ShopPhotoList.getPhotoInfoList()}">
				<img class="shopPhoto"
					src="<%=request.getContextPath()%>/uploadfile/shopphoto/${shop.file_shopphoto}">
			</c:forEach>
			<button class="shopbutton" onclick="plusDivs(-1)">&#10094;</button>
			<button class="shopbutton" onclick="plusDivs(1)">&#10095;</button>
		</div>
	</div>
	
	<div id="shopSize">
		<%-- <div class="shopall_shop" style="max-width: 250px; height: 200px;">
			<c:forEach var="shop" items="${ShopPhotoList.getPhotoInfoList()}">
				<img class="shopSlides"
					src="<%=request.getContextPath()%>/uploadfile/shopphoto/${shop.file_shopphoto}">
			</c:forEach>
		</div> --%>
		<table class="List_photo">
			<tr>
				<td><span id="shopfont_size">등록된 사진</span></td>
				<td></td>
			</tr>

			<c:forEach var="shop" items="${ShopDeleteList.getPhotoInfoList()}">
				<tr class="listInfo" id="btnstyleSeat">
					<td><img alt="이미지 없음" id="shopSize_photo"
						src="<%=request.getContextPath()%>/uploadfile/shopphoto/${shop.file_shopphoto}"></td>
					<td><input type="submit" name="de" value="삭제하기"
						onclick="location.href='<%=request.getContextPath()%>/kat/shopForm/shopDelete.do?no=${shop.photo_no}&shopphoto=${shop.file_shopphoto}'"></td>
				</tr>
			</c:forEach>

			<!-- 페이징 -->
			<tr>
				<td colspan="2" id="pagecenter"><c:forEach var="i" begin="1"
						end="${ShopDeleteList.getPageNumber()}" step="1">
						<a
							href="<c:url value="/kat/shopPhotoForm/shopPhotoAdd.do?page=${i}"/>">[${i}]</a>
					</c:forEach></td>
			</tr>
		</table>
	</div>
</div>


<script>
	/*사진 넘기기*/
	var slideIndex = 1;
	showDivs(slideIndex);

	function plusDivs(n) {
		showDivs(slideIndex += n);
	}

	function showDivs(n) {
		var i;
		var x = document.getElementsByClassName("shopPhoto");
		if (n > x.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = x.length
		}
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		x[slideIndex - 1].style.display = "block";
	}

	/* 슬아이드 */
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("shopSlides");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
		x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 2000); // Change image every 2 seconds
	}
</script>
