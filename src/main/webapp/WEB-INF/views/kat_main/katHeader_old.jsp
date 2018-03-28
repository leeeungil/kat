<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
#add_search_border li {
	list-style: none;
}

a {
	text-decoration: none;
	color: black;
}

span {
	color: #858484;
}

/* 로그인 팝업창 부분 */
#loginmodal {
	border: 1px solid #16bab4;
	width: 650px;
	/*팝업창의 크기조절*/
    margin-top: 5.5vh; 
	/*팝업창 위아래 간격조절*/
	background: #f3f6fa;
	border-radius: 6px;
	position: fixed;
	text-align: center;
	z-index: 99;
}

/* 레이어 로그인 DIV 부분 */
#lean_overlay {
	position: fixed;
	z-index: 100;
	top: 0px;
	left: 0px;
	height: 100%;
	width: 100%;
	background: #000;
	display: none;
}

#close_li {
	width: 50px;
}

#close {
	border: none;
	outline: none;
	background-color: #e7e7e7;
	cursor: pointer;
}

#close_size {
	font-size: 30px;
}

/* 로그인 타이틀 부분 */
#loginTitle {
	width: 100%;
	height: 80px;
	font-size: 18px;
	font-weight: 200;
	background-color: #e7e7e7;
}

#logincenter {
	text-align: center;
	margin: auto;
	width: 600px;
}

.flatbtn {
	background-color: #FFFFFF;
	border: none;
	font-size: 12px;
	outline: none;
	cursor: pointer;
}

/* ================회원 아이디 리스트================ */

/* 회원 로그인 리스트 */
#member_in {
	padding: 30px 72px 27px 72px;
	background-color: #f3f6fa;
}

#member_in input {
	background-color: #f3f6fa;
	cursor: auto;
	vertical-align: middle;
	padding: 10px;
	width: 400px;
}

#btnstyle input:hover {
	background-color: #00938e;
}

#id_auto input {
	width: 20px;
}

#id_sty {
	/*border: 1px solid black;*/
	border-bottom: 1px solid #c5c5c5;
	position: relative;
	padding: 18px 30px 10px 70px;
	height: 40px;
}

#id {
	padding: 3px 5px;
	margin-top: 7px;
	width: 100%;
	max-width: 280px;
	border: none;
	color: #858484;
	font-weight: 300;
	box-sizing: border-box;
}

/* 회원 로그인 아이콘 이미지 */
#id_ico img {
	display: inline-block;
	position: absolute;
	left: 20px;
	top: 15px;
	width: 40px;
	height: 40px;
	background: 0 0 no-repeat;
	vertical-align: middle;
	border: none;
}

/* 회원 패스워드 리스트 */
#pw_sty {
	/*border: 1px solid black;*/
	border-bottom: 1px solid #c5c5c5;
	position: relative;
	padding: 18px 30px 10px 70px;
	height: 40px;
}

#pw {
	padding: 3px 5px;
	margin-top: 7px;
	width: 100%;
	max-width: 280px;
	border: none;
	color: #858484;
	font-weight: 300;
	box-sizing: border-box;
}

/*회원 패스워드 아이콘*/
#pw_ico img {
	display: inline-block;
	position: absolute;
	left: 20px;
	top: 15px;
	width: 40px;
	height: 40px;
	background: 0 0 no-repeat;
	vertical-align: middle;
	border: none;
}

/* 회원 아이디 저장 여부 */
#id_auto {
	padding-top: 14px;
	text-align: center;
	color: #858484;
}

/* 회원 로그인 버튼 */
.btn_login {
	border-style: none;
	margin-top: 15px;
	height: 40px;
	color: #f3f6fa;
	font-weight: 500;
	text-align: center;
}

/* 다른업체을 통한 로그인 */
#join_login {
	padding: 15px 0 4px 0;
}

#join_login div {
	float: left;
	width: 500px;
	line-height: 37px;
	display: block;
	border: 1px solid #bfbfbf;
	text-align: center;
	vertical-align: middle;
}

#join_login a {
	color: #858484;
}

/* 아이디 찾기 */
#find_join {
	display: block;
	text-align: center;
	font-size: 14px;
	width: 600px;
}

#find_join a {
	color: #858484;
}

/* ================사업자 로그인 리스트================ */
#company_in {
	padding: 30px 72px 27px 72px;
	background-color: #f3f6fa;
	height: 280px;
}
#company_in input {
	background-color: #f3f6fa;
	vertical-align: middle;
}

/* 사업자 아이디 리스트 */
#id_sty_2 {
	/*border: 1px solid black;*/
	border-bottom: 1px solid #c5c5c5;
	position: relative;
	padding: 18px 30px 10px 70px;
	height: 40px;
}

#id_2 {
	padding: 3px 5px;
	margin-top: 7px;
	width: 100%;
	max-width: 280px;
	border: none;
	color: #858484;
	font-weight: 300;
	box-sizing: border-box;
}

/* 사업자 로그인 아이콘 이미지 */
#id_ico_2 img {
	display: inline-block;
	position: absolute;
	left: 20px;
	top: 15px;
	width: 40px;
	height: 40px;
	background: 0 0 no-repeat;
	vertical-align: middle;
	border: none;
}

/* 사업자 패스워드 리스트 */
#pw_sty_2 {
	/*border: 1px solid black;*/
	border-bottom: 1px solid #c5c5c5;
	position: relative;
	padding: 18px 30px 10px 70px;
	height: 40px;
}

/* 사업자 패스워드 아이콘 이미지 */
#pw_ico_2 img {
	display: inline-block;
	position: absolute;
	left: 20px;
	top: 15px;
	width: 40px;
	height: 40px;
	background: 0 0 no-repeat;
	vertical-align: middle;
	border: none;
}

#pw_2 {
	padding: 3px 5px;
	margin-top: 7px;
	width: 100%;
	max-width: 280px;
	border: none;
	color: #858484;
	font-weight: 300;
	box-sizing: border-box;
}

/* 사업자 아이디 저장 여부 */
#id_auto_2 {
	padding-top: 14px;
	text-align: center;
	color: #858484;
}

/* 사업자 로그인 버튼 */
.btn_login_2 {
	border-style: none;
	margin-top: 15px;
	width: 400px;
	height: 40px;
	color: #f3f6fa;
	font-weight: 500;
	text-align: center;
	cursor: pointer;
}

.btn_login_2:hover {
	background-color: #00938e;
}

/* 사업자 아이디 찾기 */
#find_join_2 {
	display: block;
	text-align: center;
	font-size: 14px;
}

#find_join_2 a {
	color: #858484;
}

#titleon:hover {
	background-color: #BDBDBD;
}

#titleoff:hover {
	background-color: #BDBDBD;
}

.loginFormLi {
	margin-right: 0px!important;
}
</style>

<script>
	function titleOff_hide() {
		var objDiv = document.getElementById("company_in");
		var objDiv1 = document.getElementById("member_in");

		objDiv1.style.display = "none";

		if (objDiv.style.display == "block") {
		} else {
			objDiv.style.display = "block";
		}
	}

	function titleOn_hide() {
		var objDiv = document.getElementById("member_in");
		var objDiv1 = document.getElementById("company_in");

		objDiv1.style.display = "none";

		if (objDiv.style.display == "block") {
		} else {
			objDiv.style.display = "block";
		}
	}

	function login() {
		var loginForm = document.getElementById("loginmodal");

		if (loginForm.style.display == "none") {
			loginForm.style.display = "block";
		} else if (loginForm.style.display == "block") {
			loginForm.style.display = "none";
		}
	}
</script>

<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/common/header.css">
	<div class="header_wrap">
		<div class="top_wrap"> 
			<div class="content-wrap">
				<!-- <span class="btn-fav" onclick="bookmarksite('엔아이건축', 'http://ni-housing.com/')">★즐겨찾기등록</span>
				<a href="http://nihousing.cbio.co.kr/main/main.htm" target="_blank"><span class="btn-ebook">　▶전자책서비스 바로가기</span></a> -->
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
					<span class="btn-fullmenu"></span>																
					<!-- <span class="btn-fullmenu" id="google_translate_element"></span> -->
				</div>
			</div>
		</div>
		
		<!--  -->
		<header class="header sub">
			<h1 class="logo-item">
				<a href="/">
					<img src="http://ni-housing.com/files/attach/images/4095/24598f0ec6982769c7e1b1ab0fa4883e.png" alt="">
				</a>
			</h1>
			<!-- <div class="side">
				search
				<ul><li class="click">
					<a href="#" title="검색"><i class="xi-magnifier"></i><span class="blind">검색</span></a>
				</li></ul>
			</div> -->
			<nav class="gnb pc-gnb" id="gnb">
				<ul class="gnb-box blind-m"><li>
					<a href="/index.php?mid=niarchi01" class="">엔아이건축</a>
					<ul class="depth2"><li>
						<a href="/index.php?mid=niarchi01">About N·I</a></li>
						<li><a href="/index.php?mid=niarchi02">N·I마인드</a></li>
						<li><a href="/index.php?mid=recurit">인재채용</a></li>
						<li><a href="/index.php?mid=showroom">주택전시장</a></li>
						<li><a href="/index.php?mid=niarchi04">오시는길</a>
					</li></ul>					
				</li>
				<li>
					<a href="/index.php?mid=construction03">건축사례</a>
					<ul class="depth2"><li>
						<a href="/index.php?mid=construction03">설계사례</a>
					</li><li>
						<a href="/index.php?mid=construction01">시공사례<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new"></a>
					</li><li>
						<a href="/index.php?mid=construction06">인테리어사례</a>
					</li><li>
						<a href="/index.php?mid=construction02">계약사례<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new"></a>
					</li><li>
						<a href="/index.php?mid=construction04">공사진행중<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new"></a>
					</li></ul>
				</li>
				<li>
					<a href="/index.php?mid=town01">단지개발사례</a>
					<ul class="depth2"><li>
						<a href="/index.php?mid=town01">자연이온빌리지</a>
					</li><li>
						<a href="/index.php?mid=town03">분양주택소개</a>
					</li><li>
						<a href="/index.php?mid=cs05">단지문의
							<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
						</a>
					</li></ul>
				</li>
				<li>
					<a href="/index.php?mid=guide01">건축가이드</a>
					<ul class="depth2"><li>
						<a href="/index.php?mid=guide01">자주묻는질문</a>
					</li><li>
						<a href="/index.php?mid=guide02">컨설팅절차</a>
					</li><li>
						<a href="/index.php?mid=guide03">주택시공절차</a>
					</li><li>
						<a href="/index.php?mid=guide04">건축인테리어TIP
							<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
						</a>
					</li><li>
						<a href="/webzine/1803.html" target="_blank">웹진</a>
					</li></ul>
				</li>
				<li>
					<a href="/index.php?mid=community02">커뮤니티
						<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
					</a>
					<ul class="depth2"><li>
						<a href="/index.php?mid=community02">홍보관
							<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
						</a>
					</li><li>
						<a href="/index.php?mid=openhouse01">오픈하우스</a>
					</li><li>
						<a href="/index.php?mid=community03">엔아이노트
							<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
						</a>
					</li><li>
						<a href="/index.php?mid=community04">유엔아이스토리</a>
					</li><li>
						<a href="/index.php?mid=construction05">영상자료</a>
					</li></ul>
				</li>
				<li>
					<a href="/index.php?mid=cs01">고객센터
						<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
					</a>
					<ul class="depth2"><li>
						<a href="/index.php?mid=cs01">건축문의
							<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
						</a>
					</li><li>
						<a href="/index.php?mid=cs02">가이드북신청
							<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
						</a>
					</li><li>
						<a href="/index.php?mid=cs03">사업·제휴문의
							<img src="http://ni-housing.com/layouts/eond_nihousing/img/home/ico-new.png" alt="new" title="new" style="margin-left:2px;" class="addon_menu_new">
						</a>
					</li><li>
						<a href="/index.php?mid=cs04">AS신청</a>
					</li></ul>
				</li></ul>
			</nav>
		</header>
	</div>
		
		<%-- <!--  -->
		<div class="header main">
			<!-- 헤더 메뉴 -->
			<div id="header_logo">
				<a href="<%=request.getContextPath()%>/kat_main.do">
					<strong>Your Platform</strong>
				</a>
			</div>
			<div id="menus">
				<ul><li class="btn_center">
			    	<a style="color: #111111; font-size:18px;" href="<%=request.getContextPath()%>/master/board/list.do"><strong>숙소</strong></a>
			    </li>
				<li class="btn_center">
					<a style="color: #111111; font-size:18px;" href="<%=request.getContextPath()%>/master/board/list.do"><strong>셔틀</strong></a>
				</li>
				<li class="btn_center">
					<a style="color: #111111; font-size:18px;" href="<%=request.getContextPath()%>/master/board/list.do"><strong>투어</strong></a>
				</li>
				<li class="btn_center">
					<a style="color: #111111; font-size:18px;" href="<%=request.getContextPath()%>/master/board/list.do"><strong>티켓</strong></a>
				</li>
				<li class="btn_center">
					<a style="color: #111111; font-size:18px;" href="<%=request.getContextPath()%>/master/board/list.do"><strong>스냅</strong></a>
				</li>
				<li class="btn_center">
					<a style="color: #111111; font-size:18px;" href="<%=request.getContextPath()%>/master/board/list.do"><strong>동행/장터</strong></a>
				</li>
				<li class="btn_center">
					<a style="color: #111111; font-size:18px;" href="<%=request.getContextPath()%>/master/board/list.do"><strong>여행정보</strong></a>
				</li>
				<li class="btn_center">
					<a style="color: #111111; font-size:18px;" href="<%=request.getContextPath()%>/master/board/list.do"><strong>고객센터</strong></a>
				</li></ul>
		        
		        <script type="text/javascript">
			        function googleTranslateElementInit() {
			        	new google.translate.TranslateElement({pageLanguage: 'ko',
			        	layout: google.translate.TranslateElement.FloatPosition.TOP_RIGHT,
			        	multilanguagePage: true}, 'google_translate_element');
			        }
		        </script>
		        <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
			</div>
		</div>
	</div>
</header> --%>