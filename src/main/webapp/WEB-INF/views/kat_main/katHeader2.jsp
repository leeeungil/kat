<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="<%=request.getContextPath()%>/script/jquery/jquery-1.12.4.min.js"></script>
<script src="<%=request.getContextPath()%>/script/jquery/jquery.lazyload.min.js"></script>
<script src="<%=request.getContextPath()%>/script/login.js"></script>
<script>
 $(document).ready(function() {
	 $(".tabs-style-iconbox nav ul li a").on("mouseenter", function() {
		 var chk_color = $(this).css("color")
		 if(chk_color!='rgb(255, 255, 255)') {
 		 	$(this).children("span").css("color","#74777b");
		 }
	 }).on("mouseleave", function() {
		 var chk_color = $(this).css("color")
		 if(chk_color!='rgb(255, 255, 255)') {
		 	$(this).children("span").css("color","#196cf8");
		 }
	 })
 })
</script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/common.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/header.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/login.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common/header/tabs.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common/header/tabstyles.css" />
<div class="header_wrap" style='height: 169px'> 
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
						<input type="text" placeholder="EMAIL" class="login_form_input" name="user_id">
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
	<div class="main_slideshow" style='min-height: 169px!important'>
		<div class="top_wrap"> 
			<div class="content-wrap">
				<div class="top_right">
					<ul class="top-loginbox">
					<c:if test="${user_id == null}">
						<li><a onclick="login()">로그인</a></li>
						<li><a href="<%=request.getContextPath()%>/join/memberJoin.do">회원가입</a></li>
					</c:if>
					<c:if test="${user_id != null}">
						<li style="color:#000000"><font style='color: #196cf8;font-weight: 400;'>${user_id}</font> 님
							<c:if test="${user_id == 'Master'}">
								<span style="color: red;">  Master  </span>
							</c:if> 
						</li>
						<c:if test="${user_id != 'Master'}">
							<li id="categoryfont">
								<a href="<%=request.getContextPath()%>/kat/mypage/pwchk.do"> 내정보 </a>
							</li>
							<c:if test="${member_type == '4'}">
								<li id="categoryfont">
									<a href="<%=request.getContextPath()%>/kat/business/managePage.do" target="_blank"> 상품관리 </a>
								</li>
							</c:if>
						</c:if>
						<c:if test="${user_id == 'Master'}">
							<li id="categoryfont">
								<a href="<%=request.getContextPath()%>/master/board/noticelist.do"> 페이지 관리 </a>
							</li>
						</c:if>
						<c:if test="${member_type == '3'}">
							<li id="categoryfont">
								<a href="<%=request.getContextPath()%>/shopInfoSeat/userbreakdown.do"> 예약내역 </a>
							</li>
							<li>
								<a href="<%=request.getContextPath()%>/kat/parter/parterInsert.do"> 파트너 등록 </a>
							</li>
						</c:if>
						<li>
							<a href="<%=request.getContextPath()%>/kat/login/logout.do"> 로그아웃 </a>
						</li>
					</c:if> 
					</ul>
					<span class="btn-fullmenu" id="google_translate_element"></span>
				</div>
			</div>
		</div>
		<div class='top_logo_wrap'>
			<div>
				<a href="<%=request.getContextPath()%>/kat_main.do">
					<img src="<%=request.getContextPath()%>/img/logo/logo_1.png" alt="your_Platform">
				</a>
			</div>
		</div>
		<div class='top_menu_wrap'>
			<div class="tabs tabs-style-iconbox">
				<nav>
					<ul>
					<li><a href="#section-iconbox-1">숙박</a></li>
						<li><a href="<%=request.getContextPath()%>/product/findAllTravelProduct">여행상품</a></li>
						<li><a href="#section-iconbox-3">여행정보</a></li>
						<li><a href="#section-iconbox-4">Travel Mall</a></li>
						<li><a href="<%=request.getContextPath()%>/kat/gowith/gowith_write_list.do">커뮤니티</a></li>
						<li><a href="<%=request.getContextPath()%>/master/board/list.do">고객센터</a></li>
					</ul>
				</nav>
			</div><!-- /tabs -->
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