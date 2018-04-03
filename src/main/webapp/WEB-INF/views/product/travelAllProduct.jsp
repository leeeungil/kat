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
					$(".product_wrap").remove();
					var htmlCode = "<div class='product_main_photo_zone'>"
								 + "	<img src='<%=request.getContextPath()%>" + data.product_main_photo + "'>"
								 + "</div>"
								 + "<div class='form_basic_wrap'>"
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
								 + "									<div>"
								 + "									</div>"
								 + "									<div>"
								 + "									</div>"
								 + "									<div>"
								 + "									</div>"
								 + "								</td>"
								 + "							</tr></tbody>"
								 + "						</table>"
								 + "					</div>";
					$(".area").html(htmlCode);
				}
			})
		}, 300);
	})
	
	$(document).on("click", "#select_date", function(){
	    $(this).datepicker();
	});
	
	$(document).on("click","#calc_cost",function(){
		var people = $("#people_number").val();
		var product_cost = $("#product_cost").attr("class");
		alert(people * product_cost);
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
    height: 50vh;
    width: 100%;
}
.product_main_photo_zone > img{
	width: 100%;
	height: 100%;
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
    width: 350px;
    -webkit-text-fill-color: #343a40;
    -webkit-opacity: 1;
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
}
.calc_result_wrap {

}
.calc_result > div {
	height: 40px;
    border-bottom: 1px solid #e9ecef;
    /* width: 50px; */
    width: 94%;
    margin: 0px 29px;
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
					<!-- <table><thead><tr>
						<td> <label style="color: #a97228">프로필 </label> </td>
					</tr></thead>
					<tbody><tr>
						<td> <textarea name="user_profile" class="product_content_textArea"></textarea> </td>
					</tr></tbody></table>
					
					<table class="product_photo_table"><thead><tr>
						<td> 
							<label style="color: #a97228">여행 상품 사진 등록 (최대 10장) </label>
							<input type="button" class="photo_btn" id="add" value="추가">
							<input type="button" class="photo_btn" id="del" value="제거">
						</td>
					</tr></thead>
					<tbody><tr>
						<td>
							<ul class="product_image_ul">
								<li class="product_image_upload filebox bs3-primary preview-image">
								</li>
							</ul>
						</td>
					</tr></tbody></table>
					
					<table><thead><tr>
						<td> <label style="color: #a97228">상품 상세 설명 </label> </td>
					</tr></thead>
					<tbody><tr>
						<td> <textarea name="product_content" class="product_content_textArea"></textarea> </td>
					</tr></tbody></table>
					
					<table><thead><tr>
						<td> <label style="color: #a97228">코스 상세 설정 </label> </td>
					</tr></thead>
					<tbody><tr>
						<td>
							<textarea name="course" class="product_content_textArea"></textarea>
						</td>
					</tr></tbody></table>
					
					<table><thead><tr>
						<td> <label style="color: #a97228">주의 사항 (필수사항) </label> </td>
					</tr></thead>
					<tbody><tr>
						<td>
							<textarea name="product_info" class="product_content_textArea"></textarea>
						</td>
					</tr></tbody></table>
					
					<table style="width: 100%"><tbody style="float: right"><tr>
						<td>
							<ul id="btnstyle">
								<li><input type="submit" id="Registration" name="seatbtn" value="등록"></li>
							</ul>
						</td>
						<td>
							<ul id="btnstyle">
								<li><input type="reset" id="reset" name="resetbtn" value="초기화"></li>
							</ul>
						</td>
					</tr></tbody></table>
					공백용
					<table style="height: 160px">
					<tbody><tr><td></td></tr></tbody></table>
				</div> -->
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
