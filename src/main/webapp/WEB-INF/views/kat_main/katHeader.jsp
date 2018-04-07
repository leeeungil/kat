<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding|Quattrocento" rel="stylesheet">
<script src="<%=request.getContextPath()%>/script/jquery/jquery-1.12.4.min.js"></script>
<script src="<%=request.getContextPath()%>/script/login.js"></script>
<script src="<%=request.getContextPath()%>/script/lightslider.js"></script>
<script>
 $(document).ready(function() {
	 $(".tabs-style-iconbox nav ul li a").on("hover", function() {
		 var chk_color = $(this).css("color")
		 alert(chk_color)
		 if(chk_color!='#ffffff') {
 		 	$(this).children("span").css("color","#74777b");
		 }
	 })
	 
 })
</script>
<style>

</style>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/common.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/header.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/login.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common/header/demo.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common/header/tabs.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common/header/tabstyles.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common/header/main_search.css" />
<div class="header_wrap">
	<!-- 로그인 폼 -->
	<div class="login_wrap" id="login_wrap" style="display: none" >
		<!-- 로그인 팝업 부분 -->
		<div class="login_top" id="login_top">
			<div class="loginTitle" id="loginTitle" style="display: block;">
				<ul><li class='loginFormLi_click' id="userLogin"> TOTAL LOGIN </li></ul>
			</div>
	
			<form method="post" action="<%=request.getContextPath()%>/kat/login/loginProcess.do" name="member">
				<div>
					<ul class="login_form" id="member_in"><li class="login_sty" id="id_sty">
						<span class="login_form_ico"><img src="<%=request.getContextPath()%>/img/id.png"></span> 
						<input type="text" placeholder="ID" class="login_form_input" name="user_id">
					</li>
					<li class="login_sty" id="pw_sty">
						<span class="login_form_ico"><img src="<%=request.getContextPath()%>/img/unlocked.png"></span> 
						<input type="password" placeholder="PASSWORD" class="login_form_input" name="user_pass">
					</li>
					<li>
						<input type="submit" class="btn_login" value="로그인" >
					</li>
					<li class="join_login">
						<div class="find_join">
							<a href="<%=request.getContextPath()%>/kat/login/idfind.do">아이디 찾기</a> <span>|</span> 
							<a href="<%=request.getContextPath()%>/kat/login/pwfind.do">비밀번호 찾기</a> <span>|</span> 
							<a  href="<%=request.getContextPath()%>/join/memberJoin.do">회원가입</a>
						</div> 
					</li></ul>
				</div>
			</form>
		</div>
	</div>
	<!-- 메인 슬라이드 쇼 -->
	<div class="main_slideshow">
		<div class="top_wrap"> 
			<div class="content-wrap">
				<div class="top_right">
					<div class="search-box">검색폼</div>
					<ul class="top-loginbox">
					<c:if test="${user_id == null}">
						<li><a onclick="login()">로그인</a></li>
						<li><a href="<%=request.getContextPath()%>/join/memberJoin.do">회원가입</a></li>
					</c:if>
					<c:if test="${user_id != null}">
						<li style="color:#000000"><font style='color: #196cf8;font-weight: 800;'>${user_id}</font> 님
							<c:if test="${user_id == 'Master'}">
								<span style="color: red;"><strong> Master </strong></span>
							</c:if> 
						</li>
						<c:if test="${user_id != 'Master'}">
							<li id="categoryfont">
								<a href="<%=request.getContextPath()%>/kat/mypage/pwchk.do"><strong>내정보</strong></a>
							</li>
							<c:if test="${member_type == '4'}">
								<li id="categoryfont">
									<a href="<%=request.getContextPath()%>/kat/business/managePage.do" target="_blank"><strong>상품관리</strong></a>
								</li>
							</c:if>
						</c:if>
						<c:if test="${user_id == 'Master'}">
							<li id="categoryfont">
								<a href="<%=request.getContextPath()%>/master/board/noticelist.do"><strong>페이지 관리</strong></a>
							</li>
						</c:if>
						<c:if test="${member_type == '3'}">
							<li id="categoryfont">
								<a href="<%=request.getContextPath()%>/shopInfoSeat/userbreakdown.do"><strong>예약내역</strong></a>
							</li>
						</c:if>
						<li>
							<a href="<%=request.getContextPath()%>/kat/login/logout.do"><strong>로그아웃</strong></a>
						</li>
					</c:if>
					</ul>
					<span class="btn-fullmenu" id="google_translate_element"></span>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
		<script type="text/javascript">
	        function googleTranslateElementInit() {
	        	new google.translate.TranslateElement({pageLanguage: 'ko',
	        	layout: google.translate.TranslateElement.FloatPosition.TOP_RIGHT,
	        	multilanguagePage: true}, 'google_translate_element');
	        }
		</script>
		<div class="mainSlider" style="background-image:url(<%=request.getContextPath()%>/img/mainSlider/1.jpg)"></div>
		<div class="mainSlider" style="background-image:url(<%=request.getContextPath()%>/img/mainSlider/2.jpg)"></div>
		<div class="mainSlider" style="background-image:url(<%=request.getContextPath()%>/img/mainSlider/3.jpg)"></div>
		<div class="mainSlider" style="background-image:url(<%=request.getContextPath()%>/img/mainSlider/4.jpg)"></div>
		<div class="mainSlider" style="background-image:url(<%=request.getContextPath()%>/img/mainSlider/5.jpg)"></div>
	<!-- 컨텐츠 메뉴 통합 검색 -->
	</div>
	<form class='content_form' method="post" id="content_form" action="<%=request.getContextPath()%>/kat/SearchList/SearchInfo.do">
		<div class="container">
			<section class="content bgcolor-3">
				<span class="input input--kyo">
					<span><i class='search-icon fa fa-search'></i></span>
					<input class="input__field input__field--kyo" type="text" id="input-19" 
						placeholder='당신의 여행 공간을 "YOUR PLATFORM"과 함께 만들어가요.                        [Enter]'/>
					<label class="input__label input__label--kyo" for="input-19">
						<span class="input__label-content input__label-content--kyo"></span>
					</label>
				</span>
			</section>
		</div><!-- /container -->
	</form>
	 
	
	<div class="container">
		<section>
			<div class="tabs tabs-style-iconbox">
				<nav>
					<ul>
						<li>
							<a href="<%=request.getContextPath()%>/kat_main.do" style="padding: 5px;">
								<img src="<%=request.getContextPath()%>/img/logo/logo_1.png" alt="your_Platform" style="height: 74px;">
							</a>
						</li>
						<li><a href="#section-iconbox-1" class="fa fa-home"><span>숙박</span></a></li>
						<li><a href="<%=request.getContextPath()%>/product/findAllTravelProduct" class="fa fa-gift"><span>여행상품</span></a></li>
						<li><a href="#section-iconbox-3" class="fa fa-book"><span>여행정보</span></a></li>
						<li><a href="#section-iconbox-4" class="fa fa-shopping-cart"><span>Travel Mall</span></a></li>
						<li><a href="<%=request.getContextPath()%>/kat/gowith/gowith_write_list.do" class="fa fa-comments"><span>커뮤니티</span></a></li>
						<li><a href="<%=request.getContextPath()%>/master/board/list.do" class="fa fa-headphones"><span>고객센터</span></a></li>
<%-- 						<li><a href="<%=request.getContextPath()%>/master/board/list.do" class="fa fa-config"><span>로그인 / 회원가입</span></a></li> --%>
					</ul>
				</nav>
			</div><!-- /tabs -->
		</section>
	</div><!-- /container -->
</div> 

