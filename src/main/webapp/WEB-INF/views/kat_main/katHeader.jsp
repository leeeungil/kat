<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
/* =============================================login.css===================================================== */
.login_wrap {
    text-align: center;
    margin: auto;
    width: 100vw;
    height: 100%;
    background: #00000069;
    position: fixed;
    z-index: 11;
}
.login_top {
	width: 440px;
	background: #f3f6fa;
	position: relative;
	z-index: 99;
	margin: auto;
	top: 34vh;
}
.login_form {
    padding: 10px 30px;
    background-color: #f3f6fa;
}

/* 로그인 타이틀 부분 */
.loginTitle {
    width: 100%;
    height: 40px;
    background-color: #000000;
    color: #ffffff;
}
.loginTitle li {
    float: left;
    line-height: 40px;
 	width: 220px;
    vertical-align: middle;
    text-align: center;
    cursor: pointer;
}
.loginFormLi_click{
	background-color: #0084fe !important;
}


/* ===================================================================================================================== */

/* ================회원 아이디 리스트================ */
/* 회원 로그인 리스트 */


.login_sty {
	position: relative;
    padding: 0px 0px 0px 70px;
}

.login_form_input {
    padding: 3px 5px;
    margin-top: 4px;
    width: 100%;
    border: none;
    color: #858484;
    font-weight: 300;
    box-sizing: border-box;
    height: 40px;
}

/* 회원 로그인 아이콘 이미지 */
.login_form_ico img {
	display: inline-block;
	position: absolute;
	left: 20px;
	width: 40px;
	height: 40px;
	background: 0 0 no-repeat;
	vertical-align: middle;
	border: none;
}

/* 회원 로그인 버튼 */
.btn_login {
    border-style: none;
    margin-top: 20px;
    height: 40px;
    color: #f3f6fa;
    font-weight: 800;
    text-align: center;
    background-color: #0084fe;
    width: 100%;
    cursor: pointer;
}
/* 아이디 찾기 */
.join_login {
	font-size: 13px;
    line-height: 26px;
    display: block;
    margin-top: 2%;
}

.find_join a {
	color: #858484;
}

</style>
<script src="<%=request.getContextPath()%>/script/jquery/jquery-1.12.4.min.js"></script>
<script>
	$(document).ready(function() {
		$(".loginFormLi").mouseenter(function(){
			$(this).css("background-color","#71bafd");
		}).mouseleave(function(){
			$(this).css("background-color","#000000");
		})
		
		$("#userLogin").click(function(){
			$("#userLogin").attr("class","loginFormLi_click");
			$("#businessLogin").attr("class","loginFormLi");
		})
		$("#businessLogin").click(function(){
			$("#businessLogin").attr("class","loginFormLi_click");
			$("#userLogin").attr("class","loginFormLi");
		})

		/* $("#login_wrap").click(function(){
			var loginForm = document.getElementById("login_wrap");
			loginForm.style.display = "none";
		}) */
	});
	
	$(document).ready(function() {
		$("#gnb").mouseenter(function(){
			$(".gnb-submenu-wrap").addClass("on");
		})
		$(".gnb-submenu-wrap").mouseleave(function(){
			$(".gnb-submenu-wrap").removeClass("on");
		})
	});

	function businessLogin_hide() {
		var objDiv = document.getElementById("company_in");
		var objDiv1 = document.getElementById("member_in");

		objDiv1.style.display = "none";

		if (objDiv.style.display == "block") {
		} else {
			objDiv.style.display = "block";
		}
	}

	function userLogin_hide() {
		var objDiv = document.getElementById("member_in");
		var objDiv1 = document.getElementById("company_in");

		objDiv1.style.display = "none";

		if (objDiv.style.display == "block") {
		} else {
			objDiv.style.display = "block";
		}
	}

	function login() {
		var loginForm = document.getElementById("login_wrap");

		if (loginForm.style.display == "none") {
			loginForm.style.display = "block";
		} else if (loginForm.style.display == "block") {
			loginForm.style.display = "none";
		}
	}
</script>

<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/common.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/header.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/login.css">
<div class="header_wrap">
	<!-- 로그인 폼 -->
	<div class="login_wrap" id="login_wrap" style="display: none" >
		<!-- 로그인 팝업 부분 -->
		<div class="login_top" id="login_top">
			<div class="loginTitle" id="loginTitle" style="display: block;">
				<ul><li class='loginFormLi_click' id="userLogin" onclick="userLogin_hide()"> 회원 로그인
				</li><li class='loginFormLi' id="businessLogin" onclick="businessLogin_hide()"> 사업자 로그인
				</li></ul>
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
							<a  href="<%=request.getContextPath()%>/kat/join/agreechk.do">회원가입</a>
						</div> 
					</li></ul>
				</div>
			</form>
	
			<form method="post" action="<%=request.getContextPath()%>/kat/login/loginbusiness.do" name="company_member.do">
				<div>
					<ul class="login_form" id="company_in" style="display: none;"><li class="login_sty" id="id_sty">
						<span class="login_form_ico"><img src="<%=request.getContextPath()%>/img/id.png"></span> 
						<input type="text" placeholder="ID" class="login_form_input" name="business_id">
					</li> 
					<li class="login_sty" id="pw_sty">
						<span class="login_form_ico"><img src="<%=request.getContextPath()%>/img/unlocked.png"></span> 
						<input type="password" placeholder="PASSWORD" class="login_form_input" name="business_pass">
					</li>
					<li>
						<input type="submit" class="btn_login" value="로그인" >
					</li>
					<li class="join_login">
						<div class="find_join">
							<a href="<%=request.getContextPath()%>/kat/login/idfind.do">아이디 찾기</a> <span>|</span> 
							<a href="<%=request.getContextPath()%>/kat/login/pwfind.do">비밀번호 찾기</a> <span>|</span> 
							<a  href="<%=request.getContextPath()%>/kat/join/agreechk.do">회원가입</a>  
						</div>
					</li></ul>
				</div>
			</form>
		</div>
	</div>
	
	<div class="top_wrap"> 
		<div class="content-wrap">
			<span class="btn-fav" onclick="bookmarksite('엔아이건축', 'http://ni-housing.com/')">
				<h1 class="logo-item">
					<a href="<%=request.getContextPath()%>/kat_main.do">
						<img src="<%=request.getContextPath()%>/img/logo/logo_1.png" alt="your_Platform">
					</a>
				</h1>
			</span>
			<div class="top_right">
				<div class="search-box">검색폼</div>
				<ul class="top-loginbox">
				<c:if test="${user_id == null}">
					<li><a onclick="login()">로그인</a></li>
					<li><a href="<%=request.getContextPath()%>/kat/join/agreechk.do">회원가입</a></li>
				</c:if>
				<c:if test="${user_id != null}">
					<li style="color:#ffffff">${user_id} 님  [ ${user_category} ]
						<c:if test="${user_id == 'Master'}">
							<span style="color: red;"><strong>마스터 </strong></span>
						</c:if> 
					</li>
					<c:if test="${user_id != 'Master'}">
						<li id="categoryfont">
							<a href="<%=request.getContextPath()%>/kat/mypage/pwchk.do"><strong>내정보</strong></a>
						</li>
						<c:if test="${user_category == '사업자 회원'}">
							<li id="categoryfont">
								<a href="<%=request.getContextPath()%>/kat/seatForm/seatAdd.do"><strong>상품관리</strong></a>
							</li>
						</c:if>
					</c:if>
					<c:if test="${user_id == 'Master'}">
						<li id="categoryfont">
							<a href="<%=request.getContextPath()%>/master/board/noticelist.do"><strong>페이지 관리</strong></a>
						</li>
					</c:if>
					<c:if test="${user_category == '일반 회원'}">
						<li id="categoryfont">
							<a href="<%=request.getContextPath()%>/shopInfoSeat/userbreakdown.do"><strong>예약내역</strong></a>
						</li>
					</c:if>
					<li>
						<a href="<%=request.getContextPath()%>/kat/login/logout.do"><strong>로그아웃</strong></a>
					</li>
				</c:if>
				</ul>
				<!-- <span class="btn-fullmenu"></span>			 -->													
				<span class="btn-fullmenu" id="google_translate_element"></span>
			</div>
		</div>
	</div>
	<script type="text/javascript">
        function googleTranslateElementInit() {
        	new google.translate.TranslateElement({pageLanguage: 'ko',
        	layout: google.translate.TranslateElement.FloatPosition.TOP_RIGHT,
        	multilanguagePage: true}, 'google_translate_element');
        }
       </script>
       <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

	<!--  -->
	<header class="header sub">
		<nav class="gnb pc-gnb" id="gnb">
			<ul class="gnb-box blind-m"><li>
				<a href="#" class="">유아플랫폼</a>
			</li><li>
				<a href="#">숙박
					<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
				</a>
			</li><li>
				<a>여행상품
					<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
				</a>
			</li><li>
				<a href="#">여행정보
					<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
				</a>
			</li><li>
				<a href="#">커뮤니티
					<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
				</a>
			</li><li>
				<a href="#">고객센터</a>
			</li></ul>
		</nav>
	</header>
	
	<%-- <div class="gnb-submenu-wrap blind-m">
		<div class="content-wrap">
			<ul class="gnb-submenu"><li>
				<ul><li>
					<a href="#" class="submenu1">About Y·P</a>
				</li><li>
					<a href="#" class="submenu2">Y·P마인드</a>
				</li></ul>
			</li>
			<li>
				<ul><li>
					<a href="#" class="submenu6">민박</a>
				</li><li>
					<a href="#" class="submenu7">호텔<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new"></a>
				</li><li>
					<a href="#" class="submenu8">게스트하우스</a>
				</li></ul>						
			</li>
			<li>
				<ul><li>
					<a href="#" class="submenu6">투어</a>
				</li><li>
					<a href="#" class="submenu7">셔틀<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new"></a>
				</li><li>
					<a href="#" class="submenu8">티켓</a>
				</li></ul>						
			</li>
			<li>
				<ul><li>
					<a href="#" class="submenu6">축제</a>
				</li><li>
					<a href="#" class="submenu7">문화<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new"></a>
				</li><li>
					<a href="#" class="submenu8">레저</a>
				</li></ul>						
			</li>
			<li>
				<ul><li>
					<a href="#" class="submenu6">민박후기</a>
				</li><li>
					<a href="#" class="submenu7">호텔후기<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new"></a>
				</li><li>
					<a href="#" class="submenu8">게스트하우스<br>후기</a>
				</li></ul>						
			</li>
			<li>
				<ul><li>
				</li></ul>						
			</li></ul>
		</div>
	</div> --%>
</div>

