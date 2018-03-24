<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<div id="mainSize">
	<div id="Add" class="Tabs">
		<div id="seat_list">
			<div id="add_search_header">※ 예약가능 좌석 리스트</div>
			<table class="List_menu">
				<thead>
					<tr>
						<td>좌석 인원수</td>
						<td>좌석 사진</td>
						<td>예약 가능상태</td>
						<td></td>
					</tr>
				</thead>
				<tbody id="ajaxTable">
				</tbody>
			</table>
		</div>
	</div>
</div>

<div id="asideSeatSize">
	<div class="shopall" style="max-width: 500px">
		<c:forEach var="shop" items="${ShopPhotoList.getPhotoInfoList()}">
			<img class="shopSlides"
				src="<%=request.getContextPath()%>/uploadfile/shopphoto/${shop.file_shopphoto}"
				style="width: 450px; height: 350px;">
		</c:forEach>
	</div>
	<input id="userName" onkeyup="searchFunction();" type="text" size="20">
	<button onclick="searchFunction();" type="button">검색</button>
	
</div>

<script type="text/javascript">

function checkseat(num) {
	
	if (document.getElementById('seatchk'+num).value  == '예약불가') {
		alert("예약가능한 상태를 확인해주세요");
		location.reload()
	}
	
	if (document.getElementById('seatchk'+num).value  == '예약가능') {
		alert("예약 페이지로 이동합니다.");
		location.href = "<%=request.getContextPath()%>/shopInfoSeat/seatRegister";
		}
	}

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

	/* JSON 부분 */
	var request = new XMLHttpRequest();
	function searchFunction() {
		alert("들어가긴 하냐");
		alert("userName 값은" + document.getElementById("userName").value);
		request.open("GET","./shopInfoSeat/seatRegister?userName="+ encodeURIComponent(document.getElementById("userName").value), true);
		request.onreadystatechange = searchProcess;
		request.send(null);
	}
	function searchProcess() {
		var table = document.getElementById("ajaxTable");
		alert("요기는 들어가십니까??");
		alert("????????"+table);
		table.innerHTML = "";
		if (request.readyState == 4 && request.status == 200) {
			alert("안되냐고?????");
			var object = eval('(' + request.responseText + ')');
			var result = object.result;
			alert("하..........");
			for (var i = 0; i < result.length; i++) {
				var row = table.insertRow(0);
				for (var j = 0; j < result[i].length; j++) {
					var cell = row.insertCell(j);
					cell.innerHTML = result[i][j].value;
				}
			}
		}		
	}
	window.onload = function() {
		searchFunction();
	}
</script>