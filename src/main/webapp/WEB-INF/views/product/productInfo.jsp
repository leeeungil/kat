<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src='<%=request.getContextPath()%>/script/jquery/jquery-ui.js'></script>
<script src='<%=request.getContextPath()%>/script/product/productList.js'></script>
<link rel='stylesheet' href='<%=request.getContextPath()%>/css/datapicker/jquery-ui.css'>
<link type='text/css' rel='stylesheet' href='<%=request.getContextPath()%>/css/product/productList.css'>
<link type='text/css' rel='stylesheet' href='<%=request.getContextPath()%>/css/product/productInfo.css'>

<script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath()%>/css/bootstrap/bootstrap-datetimepicker.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/bootstrap/bootstrap-grid.css" rel="stylesheet">
<script src='<%=request.getContextPath()%>/script/calendar/moment.js'></script>
<script src='<%=request.getContextPath()%>/script/calendar/daterangepicker.js'></script>
<link rel="stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/css/calendar/daterangepicker.css" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script type='text/javascript'>
$(document).ready(function(){
	var now = new Date();
	var year= now.getFullYear();
	var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
	var day2 = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
	
	$(".product_choice_btn > div").on("click", function(){
		$.ajax({
			url:'<%=request.getContextPath()%>/product/findTravelProductOfType',
			type: 'post',
			dataType: 'text',
			data:{ productType: $(this).attr(id) },
			success: function(htmlCode){
				$(".product_choice_btn > div").css("background-color", "#000000")
				$(".product_wrap").show()
				$(".product_wrap").css("transform", "scale(0.0)")
				setTimeout(function() {
					$(".product_wrap").remove()
					$(".area").html(htmlCode)
				}, 200)
			}
		})
	})

	$(document).on("click", "#select_date", function(){
	    $(this).datepicker()
	})
	$(document).on("click", ".product_relate_photo_table > tbody img", function(){
		var select_img_src = $(this).attr("src")
		if($(this).attr("class")=='blank_image') {
			alert('없는 이미지 입니다.')
		} else { 
			$(".product_relate_photo_table > thead img").attr("src", "select_img_src")		
		}
	})

	$(document).on("click", "#calc_cost",function(){
		var people = $("#people_number").val()
		var product_cost = $("#product_cost").attr("class").replace(",","")
		var htmlCostResult = "<div><font>경비 계산 결과</font></div>"
							+ "<div><font>"+people+" X "+product_cost+"</font><font class='second_line_font'>₩"+(people * product_cost)+"</font></div>"
							+ "<div class='non_border reserve_btn_wrap'><button class='calc_cost reserve_btn form-control'>결제하기</button></div>"
	 	$(".calc_result").html(htmlCostResult)
	})
	
	$(document).on("click", "#start_date_picker",function(){
		/* var targetModal = $(this).attr("data-modal");
		$("#"+targetModal).addClass("md-show"); */
	})
	
	// 특정날짜들 배열
	var disabledDays = "2018-04-25, 2018-09-07, 2018-09-07";
	/* utility functions */
	function nationalDays(date) {
		var m = date.getMonth(), d = date.getDate(), y = date.getFullYear();
		//console.log('Checking (raw): ' + m + '-' + d + '-' + y);
		for (i = 0; i < disabledDays.length; i++) {
			if($.inArray((m+1) + '-' + d + '-' + y,disabledDays) != -1 || new Date() > date) {
				//console.log('bad:  ' + (m+1) + '-' + d + '-' + y + ' / ' + disabledDays[i]);
				return [false];
			}
		}
		//console.log('good:  ' + (m+1) + '-' + d + '-' + y);
		return [true];
	}
	function noWeekendsOrHolidays(date) {
		var noWeekend = jQuery.datepicker.noWeekends(date);
		return noWeekend[0] ? nationalDays(date) : noWeekend;
	}
	
	/* var disabledDays = "04/14/2018"; */
	$("#start_date_picker").daterangepicker({
		"singleDatePicker": true,
	    "linkedCalendars": false,
	    "showCustomRangeLabel": false,
	    "startDate": "04/13/2018",
	    "endDate": "04/13/2018",
	    "minDate": mon+'/'+day2+'/'+year,
	    "opens": "center",
	    beforeShowDay: noWeekendsOrHolidays
	}, function(start, end, label) {
	  console.log('New date range selected: ' + start.format('DD-MM-YYYY') + ' to ' + end.format('DD-MM-YYYY') + ' (predefined range: ' + label + ')');
	});

	$.ajax({ 
		url: '<%=request.getContextPath()%>/reserv/selectReservList',
		type : 'post',
		dataType : 'json',
		data: { "product_no": $("#product_no").val()},
		success : function(data) {
			var max_people = $("#max_people").val();
			var dataLength = data.length;
			var now = new Date();
			var year= now.getFullYear();
			var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
			var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
			
			for(i=0; i<dataLength; i++) {
				emptyPeople = max_people - data[i].reserv_count;
				
				convertDate = data[i].daily.split('-');
				reDate = convertDate[1]+"/"+convertDate[2]+"/"+convertDate[0];

				if($("#start_date_picker").val() == reDate && emptyPeople==0) {
				}
			}
		}, error: function() {
			alert('error')
		}
	})
})
</script>
<style>
#start_date_picker {
	padding-left: 34px;
}
.product_relate_table {
    border-top: 1px dotted #8c8c8c
}
.area_wrap {
    width: 40vw;
    min-width: 600px;
}
.date_wrap > table > tbody > tr > td {
    width: 36%;
}
.cost_nb_wrap {
    height: calc(100vh - 200px);
    margin-top: 10px;
    position: relative;
}
.like_product {
	padding: 16px;
    font-size: 18px;
    text-align: center;
    cursor: pointer;
}
</style>
<div class='product_top_wrap'>
	<div class='area'>
		<div class='col-md-9'>
			<jsp:include page="/WEB-INF/views/modal/userReserveModal_5.jsp" flush="false"></jsp:include>
			<input type='hidden' value='${productInfo.product_no}' id='product_no' name='product_no'>
			<input type='hidden' value='${productInfo.max_people}' id='max_people' name='max_people'>
			<div class='category' id='category'>
				<div class='category_text_wrap'> <font> ${productInfo.country} > ${productInfo.city} </font> </div>
			</div>
			<div class='product_total_content'>
				<div class='main_title_text_wrap'> <font> ${productInfo.product_title} </font> </div>
			</div>
			<div class='product_total_content'>
				<div class='cost_text_wrap'> <font id='product_cost' class='${productInfo.cost}'> ￦${productInfo.cost} </font>/ 1인 </div>
			</div>
			<div class='product_total_content date_wrap'>
				<table> <thead><tr>
					<td colspan='3'>달력 선택 후 원하는 날짜의 인원을 선택해주세요.</td>
				</tr></thead>
				<tbody><tr>
					<td>
						<div class="col-md-4">
							<span>
								<i class='fa fa-calendar' style='position: absolute; padding: 9px;'></i>
							</span>
							<input type="text" id="start_date_picker" class="form-control" name='select_date' data-modal="modal-5">
						</div>
						<div class="col-md-4">
							<select class='select form-control' id='people_number' name='people_number' title='인원 선택'>
						        <option value='0' selected='selected'>인원 선택</option>
						        <option value='1'>1명</option>
						        <option value='2'>2명</option>
						        <option value='3'>3명</option>
						        <option value='4'>4명</option>
						        <option value='5'>5명</option>
						        <option value='6'>6명</option>
						        <option disabled>그 외 문의요청</option>
						    </select>
						</div>
						<div class="col-md-4">
							<button class='calc_cost form-control' id='calc_cost' name='calc_cost' value='calc_cost'>경비 계산기</button> 
						</div>
					</td>
				</tr></tbody></table>
			</div>
			<c:if test="${!empty productInfo.user_profile}">
				<table class='product_relate_table'><thead><tr>
					<td> <label> 프로필 </label> </td>
				</tr></thead> 
				<tbody><tr> 
					<td> <p class='product_relate_text_p'>${productInfo.user_profile}</p> </td> 
				</tr></tbody></table>
			</c:if>
			<c:if test="${productInfo.product_photo1 ne 'null'}">
				<table class='product_relate_table product_relate_photo_table_wrap'><thead><tr>
					<td> <label> 여행 사진 </label> </td>
				</tr></thead>
				<tbody><tr>
					<td>
						<table class='product_relate_photo_table'><thead><tr>
							<td colspan='5'> <img src='<%=request.getContextPath()%>${productInfo.product_photo1}'> </td>
						</tr></thead>
						<tbody>
						<tr>
							<c:choose><c:when test="${productInfo.product_photo1 eq 'null'}">
								<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>
							</c:when><c:otherwise>
								<td><img src='<%=request.getContextPath()%>${productInfo.product_photo1}'></td>
							</c:otherwise></c:choose>
							<c:choose><c:when test="${productInfo.product_photo2 eq 'null'}">
								<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>
							</c:when><c:otherwise>
								<td><img src='<%=request.getContextPath()%>${productInfo.product_photo2}'></td>
							</c:otherwise></c:choose>
							<c:choose><c:when test="${productInfo.product_photo3 eq 'null'}">
								<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>
							</c:when><c:otherwise>
								<td><img src='<%=request.getContextPath()%>${productInfo.product_photo3}'></td>
							</c:otherwise></c:choose>
							<c:choose><c:when test="${productInfo.product_photo4 eq 'null'}">
								<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>
							</c:when><c:otherwise>
								<td><img src='<%=request.getContextPath()%>${productInfo.product_photo4}'></td>
							</c:otherwise></c:choose>
							<c:choose><c:when test="${productInfo.product_photo5 eq 'null'}">
								<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>
							</c:when><c:otherwise>
								<td><img src='<%=request.getContextPath()%>${productInfo.product_photo5}'></td>
							</c:otherwise></c:choose>
						</tr>
						<c:if test="${productInfo.product_photo6 ne 'null'}">
							<tr>
								<c:choose><c:when test="${productInfo.product_photo6 eq 'null'}">
									<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>
								</c:when><c:otherwise>
									<td><img src='<%=request.getContextPath()%>${productInfo.product_photo6}'></td>
								</c:otherwise></c:choose>
								<c:choose><c:when test="${productInfo.product_photo7 eq 'null'}">
									<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>
								</c:when><c:otherwise>
									<td><img src='<%=request.getContextPath()%>${productInfo.product_photo7}'></td>
								</c:otherwise></c:choose>
								<c:choose><c:when test="${productInfo.product_photo8 eq 'null'}">
									<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>
								</c:when><c:otherwise>
									<td><img src='<%=request.getContextPath()%>${productInfo.product_photo8}'></td>
								</c:otherwise></c:choose>
								<c:choose><c:when test="${productInfo.product_photo9 eq 'null'}">
									<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>
								</c:when><c:otherwise>
									<td><img src='<%=request.getContextPath()%>${productInfo.product_photo9}'></td>
								</c:otherwise></c:choose>
								<c:choose><c:when test="${productInfo.product_photo10 eq 'null'}">
									<td><img src='<%=request.getContextPath()%>/uploadfile/product_img/no_image.png' class='blank_image'></td>
								</c:when><c:otherwise>
									<td><img src='<%=request.getContextPath()%>${productInfo.product_photo10}'></td>
								</c:otherwise></c:choose>
							</tr>
						</c:if>
						</tbody></table>
					</td>
				</tr></tbody></table>
			</c:if>
			
			<c:if test="${!empty productInfo.course}">
				<table class='product_relate_table'><thead><tr>
					<td> <label> 상품 상세 설명 </label> </td>
				</tr></thead>
				<tbody><tr>
					<td> <p class='product_relate_text_p'>${productInfo.product_content}</p> </td>
				</tr></tbody></table>
			</c:if>
		
			<c:if test="${!empty productInfo.course}">
				<table class='product_relate_table'><thead><tr>
					<td> <label>코스 상세 설정 </label> </td>
				</tr></thead>
				<tbody><tr>
					<td> <p class='product_relate_text_p'>${productInfo.course}</p> </td>
				</tr></tbody></table>
			</c:if>
			
			<c:if test="${!empty productInfo.product_info}">
				<table class='product_relate_table'><thead><tr>
					<td> <label  >주의 사항 (필수사항) </label> </td>
				</tr></thead>
				<tbody><tr>
					<td> <p class='product_relate_text_p'>${productInfo.product_info}</p> </td>
				</tr></tbody></table>
			</c:if>
		</div>
		
		<div class='col-md-3'>
			<div class='cost_nb_wrap'>
				<div class='col-md-12 like_product'>
					관심 상품 등록 <i class='fa fa-heart-o'></i>
				</div>
				<div class='col-md-12 calc_result'> 경비를 계산해주세요.</div>
			</div>
		</div>
	</div>
</div>
