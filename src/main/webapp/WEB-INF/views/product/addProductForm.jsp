<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datapicker/jquery-ui.css">
<script src="<%=request.getContextPath()%>/script/jquery/jquery-ui.js"></script>
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
$( function() {
    $( "#sell_start" ).datepicker();
    $( "#sell_end" ).datepicker();
});

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
	var count = $("product_image_ul > input[type=file]").length;
	
	$('#add').on("click", function() {
		if(count < 11) {
			var str = "<li class='product_image_upload filebox bs3-primary preview-image'>"
				str += "<label class='input_file"+count+"' for='input_file"+count+"'> ";
				str += "<input type='file' id='input_file"+count+"' class='upload-hidden' name='file'>"
				str += "</label></li>"
			$('.product_image_ul').append(str);
			count++;
		}else {
			alert('이미지 파일은 10개까지 등록 가능합니다.');
		}
	});
	
	$("#del").on("click", function() {
		if(count > 0) {
			$(".product_image_upload").children(":last").remove();
			count--;
		}
	}); 
	
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
.img{
    position: relative;
    background-image: url(/project/img/mainSlider/2.jpg);
    height: 50vh;
    background-size: 1100px 100%;
    background-position: center;
    background-repeat: no-repeat;
}
.img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   z-index:1;
}
.img:hover {
	opacity: 0.8;
}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: center;
     width: 1100px;
}
.content > label {
	font-size: 88px;
}

/* imaged preview */ 
.filebox .upload-display { 
	margin-bottom: 5px; 
} 
@media(min-width: 768px) { 
	.filebox .upload-display { 
		display: inline-block; 
		margin-right: 5px; 
		margin-bottom: 0; 
	} 
} 
.filebox .upload-thumb-wrap { 
	/* 추가될 이미지를 감싸는 요소 */ 
	display: inline-block; 
	width: 54px; 
	padding: 2px; 
	vertical-align: middle; 
	border: 1px solid #ddd; 
	border-radius: 5px; 
	background-color: #fff; 
} 
.filebox .upload-display img { 
	/* 추가될 이미지 */ 
	display: block; 
	max-width: 100%; 
	width: 100% \9; 
	height: auto; 
}
.form_basic_wrap {
	width: 1100px;
	margin: auto;
	margin-top: 15px;
}
.add_search_border_menu {
	border: 1px solid #BDBDBD;
	width: 683px;
	text-align: left;
	margin: auto;
	margin-top: 23px;
	padding: 7px;
	font-size: 12px;
}

label {
	font-size: 13px;
    font-weight: 700;
    line-height: 30px;
}

.filebox {
	margin-top: 10px;
}

/* select box css */
.select_top {
	position: relative;
    width: 250px;
    height: 40px;
    background: url(select_arrow.png) 180px center no-repeat;
    border: 1px solid #E9DDDD;
    float: left;
    margin: 7px 2% 0px 0px;
}
.select_top label {
	position: absolute;
    font-size: 14px;
    color: #a97228;
    top: 4px;
    left: 25px;
    letter-spacing: 1px;  	
}
.select_top > .select {
    width: 100%;
    height: 40px;
    min-height: 40px;
    line-height: 40px;
    padding: 0 10px;
    opacity: 0;
    filter: alpha(opacity=0); /* IE 8 */
}
.product_title {
	width: 1047px;
    padding-left: 25px;
}
.wrap {
	float: left;
    margin-right: 92px;
}
.product_content_textArea {
	width: 1067px;
	height: 50vh;
}
input:hover, .select:hover, .product_content_textArea:hover {
	border: 1px solid #a97228;
}
.square {
	width: 100px;
	height: 100px;
	background: red;
}
.product_image_upload label{
	width: 180px;
    height: 180px;
    border: 0px solid;
    background-image: url(/project/img/admin/product_photo.png);
    background-size: contain;
    background-color: #ffffff!important;
    opacity: 0.5;
    background-repeat: no-repeat;
    background-position: center
}
.product_image_upload label:hover {
	opacity: 0.7;
}
.product_photo_table li {
	float: left;
}
.product_btn {
	width: 100px;
}
.product_image_upload > div{
	float: left;
}
</style>
<!-- 메인 부분 -->
<div id="main">
	<section>
		<article id="article_main">
			<form action="<%=request.getContextPath()%>/product/add" method="post" name="addform" enctype="multipart/form-data" onsubmit="return checkform();">

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
				    <!-- 상품 종류, 대륙, 국가, 도시 등 카테고리 선택 START -->
					<label>----- 주요 카테고리 선택 (상품 종류, 대륙, 국가, 도시) ------</label>
					<div class="category" id="category">
						<div class="select_top" id="product_type_top">
						    <label for="product_type">상품 종류</label>
						    <select class="select" id="product_type" name="product_type" title="상품 종류">
						        <option value="0" selected="selected">상품 종류</option>
						        <option value="11">투어</option>
						        <option value="12">셔틀</option>
						        <option value="13">티켓</option>
						        <option value="14">스냅</option>
						    </select>
						</div>
						<div class="select_top" id="continent_top">
						    <label for="continent">대륙</label>
						    <select class="select" id="continent" name="continent" title="대륙">
						        <option value="0" selected="selected">대륙</option>
						        <option value="한국">한국</option>
						        <option value="아시아">아시아</option>
						        <option value="미주">미주</option>
						        <option value="유럽">유럽</option>
						        <option value="대양주">대양주</option>
						    </select>
						</div> 
						<div class="select_top" id="country_top">
						    <label for="country">국가</label>
						    <select class="select" id="country" name="country" title="국가">
						    	<option value="0" selected="selected">국가</option>
						        <option value="한국">한국</option>
						        <option value="일본">일본</option>
						        <option value="중국">중국</option>
						        <option value="필리핀">필리핀</option>
						        <option value="홍콩">홍콩</option>
						        <option value="태국">태국</option>
						        <option value="베트남">베트남</option>
						        <option value="말레이시아">말레이시아</option>
						        <option value="대만">대만</option>
						    </select>
						</div>
						<div class="select_top" id="city_top">
						    <label for="city">도시</label>
						    <select class="select" id="city" name="city" title="도시">
						        <option value="도시" selected="selected">도시</option>
						        <option value="제주">제주</option>
						        <option value="나고야">나고야</option>
						        <option value="베이징">베이징</option>
						    </select>
						</div>
					</div>
					<!-- 상품 종류, 대륙, 국가, 도시 등 카테고리 선택 FINISH -->
					<!-- 상품 타이틀  (메인 제목) START -->
					<label>----- 상품 메인 제목 --------------------------------------</label>
					<div class="product_total_content">
						<input type="text" class="select_top product_title" id="product_title" name="product_title" placeholder="상품 메인 제목을 입력해주세요.">
					</div>
					<label>----- 상품 상세 정보 --------------------------------------</label>
					<div class="product_total_content">
						<div class="wrap">
							<label style="color: #a97228">상품 판매일 : </label><input type="text" class="datePick" name="sell_start" id="sell_start"> 
						</div>
						<div class="wrap">
							<label style="color: #a97228">상품 마감일 : </label><input type="text" class="datePick" name="sell_end" id="sell_end">
						</div>
						<div class="wrap">
							<label style="color: #a97228">상품 가격 (1인당) : </label><input type="text" name="cost">
						</div>
					</div>
					
					<table><thead><tr>
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
									<!-- <label for="input_file1"></label> 
									<input type="file" id="input_file1" class="upload-hidden" name="file"> 
									<label for="input_file2"></label> 
									<input type="file" id="input_file2" class="upload-hidden" name="file">
									<label for="input_file3"></label> 
									<input type="file" id="input_file3" class="upload-hidden" name="file">
									<label for="input_file4"></label> 
									<input type="file" id="input_file4" class="upload-hidden" name="file">
									<label for="input_file5"></label> 
									<input type="file" id="input_file5" class="upload-hidden" name="file">
									<label for="input_file6"></label> 
									<input type="file" id="input_file6" class="upload-hidden" name="file">
									<label for="input_file7"></label> 
									<input type="file" id="input_file7" class="upload-hidden" name="file">
									<label for="input_file8"></label> 
									<input type="file" id="input_file8" class="upload-hidden" name="file">
									<label for="input_file9"></label> 
									<input type="file" id="input_file9" class="upload-hidden" name="file">
									<label for="input_file10"></label> 
									<input type="file" id="input_file10" class="upload-hidden" name="file"> -->
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
					<!-- 공백용 -->
					<table style="height: 160px">
					<tbody><tr><td></td></tr></tbody></table>
				</div>
			</form>
		</article>
	</section>
</div>
