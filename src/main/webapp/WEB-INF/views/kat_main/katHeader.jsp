<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding|Quattrocento" rel="stylesheet">
<script src="<%=request.getContextPath()%>/script/jquery/jquery-1.12.4.min.js"></script>
<script src="<%=request.getContextPath()%>/script/login.js"></script>

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
			<span class="btn-fav">
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
					<li style="color:#000000">${user_id} 님  [ ${user_category} ]
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
	<div class='header-width-wrap'>
		<header class="header sub">
			<nav class="gnb pc-gnb" id="gnb">
				<ul class="gnb-box blind-m"><li>
					<a href="#">숙박
						<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
					</a>
				</li><li>
					<a href="<%=request.getContextPath()%>/product/findAllTravelProduct" class='travelProductTop'>여행상품
						<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
					</a>
				</li><li>
					<a href="#">여행정보
						<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
					</a>
				</li><li>
					<a href="#">Travel Mall
						<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
					</a>
				</li><li>
					<a href="<%=request.getContextPath()%>/kat/gowith/gowith_write_list.do">커뮤니티
						<img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
					</a>
				</li><li>
					<a href="<%=request.getContextPath()%>/master/board/list.do">고객센터
					    <img src="<%=request.getContextPath()%>/img/new_ico.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
					</a>
				</li>
				</ul>
			</nav>
		</header>
	</div>
</div>

