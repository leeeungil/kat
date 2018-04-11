<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datapicker/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/product/addProductForm.css">
<script src="<%=request.getContextPath()%>/script/jquery/jquery-ui.js"></script>
 <script src="http://malsup.github.com/jquery.form.js"></script> 
<script type="text/javascript">
$(document).ready(function(){
	//main image 
    var imgTarget = $('.main-preview-image .main-upload-hidden');

    imgTarget.on('change', function(){
        var parent = $(this).parent();
        parent.children('.upload-display').remove();

        if(window.FileReader){
            //image 파일만
            if (!$(this)[0].files[0].type.match(/image\//)) return;
            
            var reader = new FileReader();
            reader.onload = function(e){
                var src = e.target.result;
                $(".img").css("background-image","url('"+src+"')");
            }
            reader.readAsDataURL($(this)[0].files[0]);
        }
    });
});

function checkform1() {
	if ($("#main_input-file").val() == "") {
		alert(" (필수) 대표 사진을 NEXT해주세요.");
		return false;
	} else if ($("#product_type").val() == "0") {
		alert(" (필수) Product Type를 Selection해주세요.");
		return false;
	} else if ($("#continent").val() == "0") {
		alert(" (필수) Continent을 Selection해주세요.");
		return false;
	} else if ($("#country").val() == "0") {
		alert(" (필수) Country를 Selection해주세요.");
		return false;
	} else if ($("#city").val() == "0") {
		alert(" (필수) City를 Selection해주세요.");
		return false;
	} else if ($("#product_title").val() == "") {
		alert(" (필수) Product Representative Title을 입력해주세요.");
		return false;
	} else if ($("#product_title").val() == "") {
		alert(" (필수) Product Representative Title을 입력해주세요.");
		return false;
	} 
	return true;
}

function checkform2() {
}

$(document).ready(function() {
	$("#article_main").prepend("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
	$("form").hide();
	setTimeout(function() {
		$(".loading_wrap").remove();
		$("#oneStageForm").show();
	}, 2000)
	
	$("#oneStageBtn").on("click", function() {
		$('#oneStageForm').ajaxForm({
			success: function(result){
			}
		});
		$("#oneStageForm").submit();
		$(".main-preview-image").remove();
		$("#one_stage").removeClass('stage_select_div');
		$("#two_stage").addClass('stage_select_div');
		$("#oneStageWrap").remove();
		$("#oneStageForm").after("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
		setTimeout(function() {
			$(".loading_wrap").remove();
			$("#twoStageForm").show();
		}, 2000)
	})
	
	$("#twoStageBtn").on("click", function() {
		$('#twoStageForm').ajaxForm({
			success: function(result){
			}
		});
		$("#twoStageForm").submit();

		$("#two_stage").removeClass('stage_select_div');
		$("#three_stage").addClass('stage_select_div');
		$("#twoStageWrap").remove();
		$("#threeStageWrap").before("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
		setTimeout(function() {
			$(".loading_wrap").remove();
			$("#threeStageForm").show();
		}, 2000)
	})
	
	
	$("#threeStageBtn").on("click", function() {
		$('#threeStageForm').ajaxForm({
			success: function(result){
			}
		});
		$("#threeStageForm").submit();

		$("#three_stage").removeClass('stage_select_div');
		$("#four_stage").addClass('stage_select_div');
		$("#threeStageWrap").remove();
		$("#fourStageWrap").before("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
		setTimeout(function() {
			$(".loading_wrap").remove();
			$("#fourStageForm").show();
		}, 2000)
	})
	
	$("#fourStageBtn").on("click", function() {
		$('#fourStageForm').ajaxForm({
			success: function(result){
				$("#fourStageWrap").before("<div class='loading_wrap'><img src='<%=request.getContextPath()%>/img/loading.gif'</div>");
				alert("상품 신청 완료")
				location.href='<%=request.getContextPath() %>/kat/business/managePage.do'
			}
		});
		$("#fourStageForm").submit();
	})
})

/* select box css */
$(document).ready(function(){
    var select = $("select#product_type");
    select.change(function(){
        var select_name = $(this).children("option:selected").text();
        $(this).siblings("label").text(select_name);
    });
    var select_continent = $("select#continent");
    select_continent.change(function(){
        var select_name = $(this).children("option:selected").text();
        $(this).siblings("label").text(select_name);
    });
    var select_country = $("select#country");
    select_country.change(function(){
        var select_name = $(this).children("option:selected").text();
        $(this).siblings("label").text(select_name);
    });
    var select_city = $("select#city");
    select_city.change(function(){
        var select_name = $(this).children("option:selected").text();
        $(this).siblings("label").text(select_name);
    });
});

/* 이미지 테스트 */
$(function(){
	function readURL(input, change_photo) {
    	if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	$("."+change_photo).css("background-image","url("+e.target.result+")");
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}

	$(document).on("change", ".upload-hidden", function() {
		change_photo = $(this).parents().attr("class")
	    readURL(this, change_photo);
	}); 
});

</script>
<style>
.stage_wrap {
    width: 900px;
    height: 70px;
    text-align: center;
    margin-bottom: 20px;
}
.stage_wrap > tbody > tr > td > div {
	border: 3px solid #196cf8;
    width: 132px;
    border-radius: 31px;
    padding: 14px;
    margin: auto;
    font-size: 16px;
    font-weight: 400;
    color: black;
    height: 53px;
}
.stage_select_div {
	border: 0px solid #196cf8;
	background-color: #196cf8;
	padding: 18px;
    color: white;
    font-size: 21px;
    height: 60px;
}
.common_btn {
	padding: 8px 31px;
    border: 0px;
    background-color: #151719;
    color: white;
    font-weight: 400;
    font-size: 20px;
}
</style>
<!-- 메인 부분 -->
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/seatadd_css.css">
<div id="main">
	<section>
		<article id="article_main">
			<form action="<%=request.getContextPath()%>/product/add1" method="post" name="addform" enctype="multipart/form-data" onsubmit="return checkform1();" id="oneStageForm">
				<!-- 메인 사진 올리기 START -->
				<div class="img">
			        <div class="content">
			        	<label>대표 사진 올리기</label>
			        	<div class="filebox main-preview-image">
				        	<label for="main_input-file">업로드</label>
				        	<input type="file" id="main_input-file" class="main-upload-hidden" name='file'>
			        	</div>
			        </div>
			        <div class="img-cover"></div>
			    </div>
				<!-- 메인 사진 올리기 FINISH -->
				<!-- 전체 폼 시작 START -->			    
			    <div class="form_basic_wrap">
			    	<label>[ 상품 NEXT 순서 ]</label>
			    	<p></p><label> - 다음 버튼 클릭 후 약 5~10초 후 이전  단계 정보 자동 저장 (상품 수정 메뉴에서 추가 수정 가능)</label>
			    	<table class='stage_wrap'><tbody><tr>
			    		<td><div id="one_stage" class='stage_select_div'>1 Level</div></td>
			    		<td><div id="two_stage" >2 Level</div></td>
			    		<td><div id="three_stage" >3 Level</div></td>
			    		<td><div id="four_stage" >4 Level</div></td>
			    	</tr></tbody></table>
		    	</div>
		    	<div class="form_basic_wrap" id="oneStageWrap">
				    <!-- Product Type, Continent, Country, City 등 Category Selection START -->
					<label>  <font style="font-size: 20px"> [ 1 Level ]</font> Main Category Selection, Product Representative Title, 사업자 Profile <font style="color: red">(필수) </font>----------------------------------------------------------------------</label>
					<div class="category" id="category">
						<div class="select_top" id="product_type_top">
						    <label for="product_type">Product Type</label>
						    <select class="select" id="product_type" name="product_type" title="Product Type">
						    	<option value="0" selected="selected">Product Type</option>
						    	<c:forEach var="productType" items="${productType}" varStatus="status1">
							        <option value="${productType.product_type}">${productType.product_type_name}</option>
								</c:forEach>
						    </select>
						</div>
						<div class="select_top" id="continent_top">
						    <label for="continent">Continent</label>
						    <select class="select" id="continent" name="continent" title="Continent">
						        <option value="0" selected="selected">Continent</option>
						        <c:forEach var="continentModel" items="${continent}" varStatus="status2">
							        <option value="${continentModel.continent_no}">${continentModel.continent}</option>
								</c:forEach>
						    </select>
						</div> 
						<div class="select_top" id="country_top">
						    <label for="country">Country</label>
						    <select class="select" id="country" name="country" title="Country">
						    	<option value="0" selected="selected">Country</option>
						    	<c:forEach var="countryModel" items="${country}" varStatus="status3">
							        <option value="${countryModel.country_no}">${countryModel.country}</option>
								</c:forEach>
						    </select>
						</div>
						<div class="select_top" id="city_top" style='margin-right: 0px;'>
						    <label for="city">City</label>
						    <select class="select" id="city" name="city" title="City">
						        <option value="City" selected="selected">City</option>
						        <c:forEach var="cityModel" items="${city}" varStatus="status4">
							        <option value="${cityModel.city_no}">${cityModel.city }</option>
								</c:forEach>
						    </select>
						</div>
					</div>
					<!-- Product Type, Continent, Country, City 등 Category Selection FINISH -->
					<!-- 상품 타이틀  (메인 제목) START -->
					<label style="color: #a97228">Product Representative Title </label>
					<div class="product_total_content">
						<input type="text" class="select_top product_title_add_form" id="product_title" name="product_title" placeholder="Please Enter The Product Representative Title." value=''>
					</div>
					<table><thead><tr>
						<td> <label style="color: #a97228">Profile </label> </td>
					</tr></thead>
					<tbody><tr>
						<td> <textarea name="user_profile" class="product_content_textArea">Introduce Yourself</textarea> </td>
					</tr></tbody></table> 
					
					
					<table style="width: 100%"><tbody style="float: right"><tr>
						<td>
							<ul>
								<li><input type="button" class='common_btn' id="oneStageBtn" name="seatbtn" value="NEXT"></li>
							</ul>
						</td>
					</tr></tbody></table>
					</div>
					<!-- 공백용 -->
					<table style="height: 40px">
					<tbody><tr><td></td></tr></tbody></table>
				</form>
				
				
				
				
				
				<div class="form_basic_wrap" id="twoStageWrap">
					 <form action="<%=request.getContextPath()%>/product/add2" method="post" name="addform" enctype="multipart/form-data" onsubmit="return checkform2();" id="twoStageForm">
							<input type='hidden' id='twoProductNo' value=''>
							<label>  <font style="font-size: 20px"> [ 2 Level ]</font> 상품 사진, 상품 소개 및 필수 주의 사항 <font style="color: red">(필수) </font>-----------------------</label>
							<table class="product_photo_table"><thead><tr>
								<td> 
									<label style='color: #a97228'>여행 상품 사진 NEXT (최대 10장) </label>
								</td>
							</tr></thead>
							<tbody><tr>
								<td>
									<ul class="product_image_ul">
										<li class='product_image_upload filebox bs3-primary preview-image'>
											<label class='input_file1' for='input_file1'>
												<input type='file' id='input_file1' class='upload-hidden' name='file'>
											</label>
										</li>
										<li class='product_image_upload filebox bs3-primary preview-image'>
											<label class='input_file2' for='input_file2'>
												<input type='file' id='input_file2' class='upload-hidden' name='file'>
											</label>
										</li>
										<li class='product_image_upload filebox bs3-primary preview-image'>
											<label class='input_file3' for='input_file3'>
												<input type='file' id='input_file3' class='upload-hidden' name='file'>
											</label>
										</li>
										<li class='product_image_upload filebox bs3-primary preview-image'>
											<label class='input_file4' for='input_file4'>
												<input type='file' id='input_file4' class='upload-hidden' name='file'>
											</label>
										</li>
										<li class='product_image_upload filebox bs3-primary preview-image'>
											<label class='input_file5' for='input_file5'>
												<input type='file' id='input_file5' class='upload-hidden' name='file'>
											</label>
										</li>
										<li class='product_image_upload filebox bs3-primary preview-image'>
											<label class='input_file6' for='input_file6'>
												<input type='file' id='input_file6' class='upload-hidden' name='file'>
											</label>
										</li>
										<li class='product_image_upload filebox bs3-primary preview-image'>
											<label class='input_file7' for='input_file7'>
												<input type='file' id='input_file7' class='upload-hidden' name='file'>
											</label>
										</li>
										<li class='product_image_upload filebox bs3-primary preview-image'>
											<label class='input_file8' for='input_file8'>
												<input type='file' id='input_file8' class='upload-hidden' name='file'>
											</label>
										</li>
										<li class='product_image_upload filebox bs3-primary preview-image'>
											<label class='input_file9' for='input_file9'>
												<input type='file' id='input_file9' class='upload-hidden' name='file'>
											</label>
										</li>
										<li class='product_image_upload filebox bs3-primary preview-image'>
											<label class='input_file10' for='input_file10'>
												<input type='file' id='input_file10' class='upload-hidden' name='file'>
											</label>
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
								<td> <label style="color: #a97228">주의 사항 (필수사항) </label> </td>
							</tr></thead>
							<tbody><tr>
								<td>
									<textarea name="product_info" class="product_content_textArea"></textarea>
								</td>
							</tr></tbody></table>
							
							<table style="width: 100%"><tbody style="float: right"><tr>
								<td>
									<ul>
										<li><input type="button" class='common_btn' id="twoStageBtn" name="seatbtn" value="NEXT"></li>
									</ul>
								</td>
							</tr></tbody></table>
						</form>
					</div>
					
					
					
					
			<div class="form_basic_wrap" id="threeStageWrap">
				<form action="<%=request.getContextPath()%>/product/add3" method="post" name="addform" enctype="multipart/form-data" onsubmit="return checkform2();" id="threeStageForm">
					<input type='hidden' id='threeProductNo' value=''>
					<label>  <font style="font-size: 20px"> [ 3 Level ]</font> 코스 상세 설정 <font style="color: red">(필수) </font>-----------------------</label>
					<table><thead><tr>
						<td> <label style="color: #a97228">코스 상세 설정 </label> </td>
					</tr></thead>
					<tbody><tr>
						<td>
							<textarea name="course" class="product_content_textArea"></textarea>
						</td>
					</tr></tbody></table>
					
					<table style="width: 100%"><tbody style="float: right"><tr>
						<td>
							<ul>
								<li><input type="button" class='common_btn' id="threeStageBtn" name="seatbtn" value="NEXT"></li>
							</ul>
						</td>
					</tr></tbody></table>
					<!-- 공백용 -->
					<table style="height: 50px">
					<tbody><tr><td></td></tr></tbody></table>
				</form>
			</div>
			
			
			<div class="form_basic_wrap" id="fourStageWrap">
				<form action="<%=request.getContextPath()%>/product/add4" method="post" 
					name="addform" enctype="multipart/form-data" onsubmit="return checkform2();" id="fourStageForm">
					<input type='hidden' id='fourProductNo' value=''>
					<label>  <font style="font-size: 20px"> [ 4 Level ]</font> 상품 상세 이름, 상품 가격 및 일일 최대 구매 가능 사람 수 <font style="color: red">(필수) </font>-----------------------</label>
					<table><thead><tr>
						<td>  </td>
					</tr></thead>
					<tbody><tr>
						<td>
							<input type='text' class="select_top" name='product_name' placeholder='상품 상세 이름 입력'>
							<input type="number" name='cost' placeholder='상품 가격 입력'>
							<input type='number' name="max_people" placeholder='일일 최대 구매 가능 수'>
						</td>
					</tr></tbody></table>
					
					<table style="width: 100%"><tbody style="float: right"><tr>
						<td>
							<ul>
								<li><input type="button" class='common_btn' id="fourStageBtn" name="seatbtn" value="NEXT"></li>
							</ul>
						</td>
					</tr></tbody></table>
					<!-- 공백용 -->
					<table style="height: 50px">
					<tbody><tr><td></td></tr></tbody></table>
				</form>
			</div>
		</article>
	</section>
</div>
