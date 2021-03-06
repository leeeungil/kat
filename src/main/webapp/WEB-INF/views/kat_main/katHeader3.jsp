<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding|Quattrocento" rel="stylesheet">
<script src="<%=request.getContextPath()%>/script/jquery/jquery-1.12.4.min.js"></script>
<script src="<%=request.getContextPath()%>/script/login.js"></script>
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
#main {
	margin-left: calc(100%/7 + 2px);
}
</style>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/common.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/header.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/login.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common/header/tabs.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common/header/tabstyles.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common/admin_sub_side_menu.css" />
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
	<div class="top_wrap"> 
		<div class="content-wrap" style="max-width: 99%;">
			<div class="top_right">
				<ul class="top-loginbox">
				<c:if test="${user_id == null}">
					<li><a onclick="login()">로그인</a></li>
				</c:if>
				<c:if test="${user_id != null}">
					<li style="color:#000000">
						<font style='color: #196cf8;font-weight: 400;'>${user_id}</font> 님
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/kat/login/logout.do">정보수정</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/kat/login/logout.do">로그아웃</a>
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
	<div class="container">
		<section>
			<div class="tabs tabs-style-iconbox">
				<nav style='width: 100%!important'>
					<ul style='width: 99vw!important'>
						<li style="background-color: #151719">
							<a href="<%=request.getContextPath()%>/kat/business/managePage.do" style="padding: 5px;">
								<img src="<%=request.getContextPath()%>/img/logo/logo_1.png" alt="your_Platform" style="height: 74px;">
							</a>
						</li>
						<%-- <li><a href="<%=request.getContextPath()%>/product/findAllTravelProduct" class="fa fa-gift"><span>상품 관리</span></a></li> --%>
						<li><a href="#section-iconbox-1" class="fa fa-home"><span>숙박 관리</span></a></li>
						<li><a href="<%=request.getContextPath()%>/move/adminLayout/productManageLayout" class="fa fa-gift"><span>상품 관리</span></a></li>
						<li><a href="#section-iconbox-3" class="fa fa-calendar"><span>예약관리</span></a></li>
						<li><a href="#section-iconbox-4" class="fa fa-comments"><span>게시물관리</span></a></li>
						<li><a href="#" class="fa fa-area-chart"><span>통계</span></a></li>
						<li><a href="#" class="fa fa-file-video-o"><span>광고관리</span></a></li>
					</ul>
				</nav>
			</div><!-- /tabs -->
		</section>
	</div><!-- /container -->
</div>
