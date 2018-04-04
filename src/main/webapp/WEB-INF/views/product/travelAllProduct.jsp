<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<%=request.getContextPath()%>/script/jquery/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/script/product/productList.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datapicker/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/productList.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/addProductForm.css">
<script type="text/javascript">
$(document).ready(function(){
	$(".product_choice_btn > div").on("click",function(){
		$.ajax({
			url:'<%=request.getContextPath()%>/product/findTravelProductOfType',
			type: 'post',
			dataType: 'text',
			data:{ "productType": $(this).attr("id") }
		})
	})
	
	/* product_no를 가지고 상품 detail가져오기 */
	$(document).on("click",".area > .product_wrap", function(){
		var productNo = $(this).children("input").val();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$.ajax({
				url:'<%=request.getContextPath()%>/product/findProductDetailInfo',
				type: 'post',
				dataType: 'json',
				data:{ "productNo": productNo },
				success: function(data){
					var people = $("#people_number").val();
					var product_cost = $("#product_cost").attr("class");
					$(".product_wrap").remove();
					var htmlBefore = "<div class='product_main_photo_zone'>"
								 + "	<img src='<%=request.getContextPath()%>" + data.product_main_photo + "'>"
								 + "</div>";
				    var htmlAfter= "<div class='form_basic_wrap'>"
								 + "					<div class='category' id='category'>"
								 + "						<div class='category_text_wrap'>"
								 + "							<font>"+data.country+" > "+data.city+"</font>"
								 + "						</div>"
								 + "					</div>"
								 + "					<div class='product_total_content'>"
								 + "						<div class='main_title_text_wrap'>"
								 + "							<font>"+data.product_title+"</font>"
								 + "						</div>"
								 + "					</div>"
								 + "					<div class='product_total_content'>"
								 + "						<div class='cost_text_wrap'>"
								 + "							<font id='product_cost' class='"+data.cost+"'> ￦"+data.cost+"</font>/ 1인"
								 + "						</div>"
								 + "					</div>"
								 + "					<div class='product_total_content date_wrap'>"
								 + "						<table>"
								 + "							<thead><tr>"
								 + "								<td colspan='3'>날짜와 인원을 선택해주세요.</td>"
								 + "							</tr></thead>"
								 + "							<tbody><tr>"
								 + "								<td>"
								 + "									<input type='text' class='datePick' name='select_date' id='select_date' placeholder='날짜 선택'>"
								 + "								</td>"
								 + "								<td>"
								 + "									<select class='select' id='people_number' name='people_number' title='인원 선택'>"
								 + "								        <option value='0' selected='selected'>인원 선택</option>"
								 + "								        <option value='1'>1명</option>"
								 + "								        <option value='2'>2명</option>"
								 + "								        <option value='3'>3명</option>"
								 + "								        <option value='4'>4명</option>"
								 + "								        <option value='5'>5명</option>"
								 + "								        <option value='6'>6명</option>"
								 + "								        <option disabled>그 외 문의요청</option>"
								 + "								    </select>"
								 + "								</td>"
								 + "								<td>"
								 + "									<button class='calc_cost' id='calc_cost' name='calc_cost' value='calc_cost'>경비 계산기</button>"
								 + "								</td>"
								 + "							</tr>"
								 + "							<tr>"
								 + "								<td colspan='3' class='calc_result'>"
								 + "								</td>"
								 + "							</tr></tbody>"
								 + "						</table>"
								 + "					</div>";
					 if(data.user_profile != "null") {
						 htmlAfter += "					<table class='product_relate_table'><thead><tr>"
								 + "						<td> <label style='color: #a97228'>프로필 </label> </td>"
								 + "					</tr></thead>"
								 + "					<tbody><tr> "
								 + "						<td>  <p class='product_relate_text_p'>"+data.user_profile+"</p>  </td> "
								 + "					</tr></tbody></table>";
					 }
					 if(data.product_photo1 != "null") {
						 htmlAfter += "					<table class='product_relate_table product_relate_photo_table_wrap'><thead><tr>"
								 + "						<td> "
								 + "							<label style='color: #a97228'>여행 사진</label>"
								 + "						</td>"
								 + "					</tr></thead>"
								 + "					<tbody><tr>"
								 + "						<td>"
								 + "							<table class='product_relate_photo_table'>"
								 + "								<thead><tr><td colspan='5'>"
								 + "									<img src='<%=request.getContextPath()%>"+data.product_photo1+"'>"
								 + "								</td></tr></thead>"
								 + "								<tbody>"
								 + "									<tr>";
								 if(data.product_photo1 == "null") {
									htmlAfter += "<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>"
								 } else {
									htmlAfter += "<td><img src='<%=request.getContextPath()%>"+data.product_photo1+"'></td>"											
								 }
								 if(data.product_photo2 == "null") {
									htmlAfter += "<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>"
								 } else {
									htmlAfter += "<td><img src='<%=request.getContextPath()%>"+data.product_photo2+"'></td>"											
								 }
								 if(data.product_photo3 == "null") {
									htmlAfter += "<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>"
								 } else {
									htmlAfter += "<td><img src='<%=request.getContextPath()%>"+data.product_photo3+"'></td>"											
								 }
								 if(data.product_photo4 == "null") {
									htmlAfter += "<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>"
								 } else {
									htmlAfter += "<td><img src='<%=request.getContextPath()%>"+data.product_photo4+"'></td>"											
								 }
								 if(data.product_photo5 == "null") {
									htmlAfter += "<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>"
								 } else {
									htmlAfter += "<td><img src='<%=request.getContextPath()%>"+data.product_photo5+"'></td>"											
								 }
						 htmlAfter += "</tr>";
						if(data.product_photo6 != "null") {
							htmlAfter += "								<tr>";
							if(data.product_photo6 == "null") {
								htmlAfter += "<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>"
							} else {
								htmlAfter += "<td><img src='<%=request.getContextPath()%>"+data.product_photo6+"'></td>"											
							}
							if(data.product_photo7 == "null") {
								htmlAfter += "<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>"
							} else {
								htmlAfter += "<td><img src='<%=request.getContextPath()%>"+data.product_photo7+"'></td>"											
							}
							if(data.product_photo8 == "null") {
								htmlAfter += "<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>"
							} else {
								htmlAfter += "<td><img src='<%=request.getContextPath()%>"+data.product_photo8+"'></td>"											
							}
							if(data.product_photo9 == "null") {
								htmlAfter += "<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>"
							} else {
								htmlAfter += "<td><img src='<%=request.getContextPath()%>"+data.product_photo9+"'></td>"											
							}
							if(data.product_photo10 == "null") {
								htmlAfter += "<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>"
							} else {
								htmlAfter += "<td><img src='<%=request.getContextPath()%>"+data.product_photo10+"'></td>"											
							}
							htmlAfter += "</tr>";
						}
						htmlAfter += "								</tbody>"
								 + "							</table>"
								 + "						</td>"
								 + "					</tr></tbody></table>"
					 }
				 if(data.product_content != "null") {
					 htmlAfter += "					<table class='product_relate_table'><thead><tr>"
								 + "						<td> <label style='color: #a97228'>상품 상세 설명 </label> </td>"
								 + "					</tr></thead>"
								 + "					<tbody><tr>"
								 + "						<td> <p class='product_relate_text_p'>"+data.product_content+"</p> </td>"
								 + "					</tr></tbody></table>";
				 }
				 if(data.course != "null") {
					 htmlAfter += "					<table class='product_relate_table'><thead><tr>"
								 + "						<td> <label style='color: #a97228'>코스 상세 설정 </label> </td>"
								 + "					</tr></thead>"
								 + "					<tbody><tr>"
								 + "						<td> <p class='product_relate_text_p'>"+data.course+"</p> </td>"
								 + "					</tr></tbody></table>";
				 }
				 if(data.product_info != "null") {
					 htmlAfter += "					<table class='product_relate_table'><thead><tr>"
								 + "						<td> <label style='color: #a97228'>주의 사항 (필수사항) </label> </td>"
								 + "					</tr></thead>"
								 + "					<tbody><tr>"
								 + "						<td> <p class='product_relate_text_p'>"+data.product_info+"</p> </td>"
								 + "					</tr></tbody></table>";
				 }
								 
					$(".area").before(htmlBefore);
					$(".area").html(htmlAfter);
				}
			})
		}, 300);
	})
	
	$(document).on("click", "#select_date", function(){
	    $(this).datepicker();
	});
	$(document).on("click", ".product_relate_photo_table > tbody img", function(){
		var select_img_src = $(this).attr("src");
		if($(this).attr("class")=='blank_image') {
			alert('없는 이미지 입니다.')
		} else { 
			$(".product_relate_photo_table > thead img").attr("src", select_img_src)		
		}
	})

	$(document).on("click","#calc_cost",function(){
		$(".calc_result").show();
		var people = $("#people_number").val();
		var product_cost = $("#product_cost").attr("class");
		var htmlCostResult = "<div><font>경비 계산 결과</font></div>"
							 + "<div><font>"+people+" X "+product_cost+"</font><font class='second_line_font'>₩"+(people * product_cost)+"</font></div>"
							 + "<div class='non_border reserve_btn_wrap'><button class='calc_cost reserve_btn'>예약하기</button></div>";
	 	$(".calc_result").html(htmlCostResult)
	})
})
</script>
<style>
/* product Detail Info */
.product_total_content {
	width: 96%;
	margin: 0 auto;
}
.product_main_photo_zone {
	height: 600px;
    margin: auto;
    text-align: center;
}
.product_main_photo_zone > img{
	height: 100%;
    width: 100%;
}
.category_text_wrap > font{
    font-weight: 800;
    color: #575757;
}
.main_title_text_wrap > font {
    font-size: 30px;
    font-weight: 800;
    line-height: 1.4;
}
.cost_text_wrap {
    margin: auto;
    border-bottom: 1px solid #dee2e6;
}
.cost_text_wrap > font {
	color: #0084fe;
    font-weight: 800;
    font-size: 25px;
    font-family: '';
    line-height: 2;
}
.date_wrap {
	margin-top: 40px;
}
.date_wrap > table {
	width: 100%;
}
.date_wrap > table > thead > tr > td {
	font-size: 18px;
    font-weight: 800;
    padding: 0px 10px 10px 0px;
}
.date_wrap > table > tbody > tr > td > input,
.date_wrap > table > tbody > tr > td > select {
	background-color: #fff !important;
    border: 1px solid #e9ecef;
    border-radius: 1px;
    color: #343a40;
    cursor: pointer;
    font-size: 14px;
    height: 44px;
    margin: 0;
    padding-left: 15px;
    position: relative;
    text-align: left;
    width: 330px;
    -webkit-text-fill-color: #343a40;
    -webkit-opacity: 1;
    margin-right: 19px;
} 
.calc_cost {
    border-radius: 2px;
    border: 0;
    cursor: pointer;
    font-size: 14px;
    font-weight: 800;
    line-height: 36px;
    padding: 0;
    text-align: center;
    width: 330px;
    height: 44px;
    background-color: #51abf3!important;
    color: #fff;
}
.calc_result {
    border: 1px solid #e9ecef;
    border-top: 0px solid #e9ecef;
    height: 120px;
    margin: auto;
    width: 100%;
    display: none;
}
.calc_result > div {
	height: 40px;
    border-bottom: 1px solid #e9ecef;
    width: 94%;
    margin: 0px 29px;
}
.calc_result > div > font {
	line-height: 4;
}
.non_border {
	border: 0px solid!important
}
.reserve_btn_wrap {
    background-color: #dddddd;
    width: 100%!important;
    margin-left: 0px!important;
    height: 50px!important;
}
.reserve_btn {
    float: right;
    width: 200px;
    height: 40px;
    margin: 5px 40px;
}
.second_line_font {
    float: right;
    color: #ff8e00;
    font-size: 20px;
    line-height: 2!important;
    font-weight: 900;
    font-family: '';
}
.product_relate_table {
	width: 96%;
    margin: 2%;
	border-top: 4px dotted #a97228;
}
.product_relate_text_p {
	font-size: 15px;
    line-height: 28px;
    word-break: break-all;
}
.product_relate_table label {
    font-size: 16px;
    line-height: 4;
    border-bottom: 1px solid #a97228;
    padding-bottom: 5px;
}
.product_relate_photo_table > thead img {
	width: 100%; 
	height: 600px;
}
.product_relate_photo_table > tbody > tr > td {
	width: 20%
}
.product_relate_photo_table > tbody img {
	width: 100%;
    height: 130px;
    cursor: pointer
}
.product_relate_photo_table > tbody img:hover {
	opacity: 0.8;
}
.blank_image {
	height: 100px!important;
    width: 100px!important;
    margin: 0px 54px;
    opacity: 0.15;
    background-color: #d8d8d8;
}
</style>
<!-- 메인 부분 -->
<div class="product_top_wrap">
	<div class="product_choice_wrap">
		<div class="product_choice_btn">
			<div id="0" class="total_btn">전체</div>
			<div id="1" class="tour_btn">투어</div>
			<div id="2" class="shuttle_btn">셔틀</div>
			<div id="3" class="ticket_btn">티켓</div>
			<div id="4" class="snap_btn">스냅</div>
		</div>
	</div>
	<div class="area area_wrap">
 		<c:forEach var="product" items="${ProductAllList}">
			<div class="product_wrap product_${product.product_type}  cl-effect-12">
				<input type="hidden" class="product_no" name="product_no" value="${product.product_no}">
				<div class="main_photo_zone" style='background-image: url(<%=request.getContextPath()%>${product.product_main_photo})'></div>
				<table class="product_title">
					<thead><tr>
						<td>
							<c:choose>
								<c:when test="${product.product_type eq '1' }">
									<font class="tour_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '2' }">
									<font class="shuttle_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '3' }">
									<font class="ticket_color">${product.country} > ${product.city}</font>
								</c:when>
								<c:when test="${product.product_type eq '4' }">
									<font class="snap_color">${product.country} > ${product.city}</font>
								</c:when>
							</c:choose>
						</td>
					</tr></thead>
					<tbody><tr>
						<td>
							<font>${product.product_title}</font>
						</td>
					</tr></tbody>
				</table>
				<div class="blank">
				
				</div>
				<div class="product_cost">
					${product.cost} / 1인
				</div>
			</div>
		</c:forEach>
	</div>
</div>
