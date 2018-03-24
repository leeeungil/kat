<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>
#add_search_border li {
	list-style: none;
}

li {
	list-style: none;
}

* {
	margin: 0;
	padding: 0;
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
	height: 450px;
	/*팝업창의 크기조절*/
	margin-top: -50px;
	/*팝업창 위아래 간격조절*/
	background: #f3f6fa;
	border-radius: 6px;
	position: fixed;
	text-align: center;
	z-index: 99;
	margin-top: 50px;
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
	/*border: 1px solid black;*/
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

/* 로그인 리스트 */
#loginTitle li {
	/*border: 1px solid black;*/
	border-right: 2px solid #f3f6fa;
	float: left;
	line-height: 80px;
	width: 282px;
	vertical-align: middle;
	text-align: center;
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

<header>
	<div id="header_inner">
		<!-- 헤더 로고-->
		<div id="header_logo">
			<a href="<%=request.getContextPath()%>/kat_main.do"><p style="color:#2E9AFE; font-weight: 400; border:1px solid #2E9AFE; border-radius:10px;"><strong>Your Platform</strong></p></a>
		</div>
		<ul style="text-align:right; margin-top:-60px;">
		<c:if test="${user_id == null}">
					<li class="btn_login"><button type="button" onclick="login();"
							id="modaltrigger" class="flatbtn" style="font-size:10px;">로그인</button></li>
					<li class="btn_join"><a style="color: #111111; font-size:10px;"
						href="<%=request.getContextPath()%>/kat/join/agreechk.do">회원가입</a>
					</li>
				</c:if>

				<c:if test="${user_id != null}">
					<li>[ ${user_id} ] 님 로그인중 [ <c:if
							test="${user_id == 'Master'}">
							<span style="color: red;"><strong>마스터 </strong></span>
						</c:if> ${user_category} ]
					</li>
					<c:if test="${user_id != 'Master'}">
						<li id="categoryfont"><a
							href="<%=request.getContextPath()%>/kat/mypage/pwchk.do"><strong>내정보</strong>
						</a></li>
						<c:if test="${user_category == '사업자 회원'}">
							<li id="categoryfont"><a
								href="<%=request.getContextPath()%>/kat/seatForm/seatAdd.do"><strong>상품
									관리</strong></a></li>
						</c:if>
					</c:if>

					<c:if test="${user_id == 'Master'}">
						<li id="categoryfont"><a
							href="<%=request.getContextPath()%>/master/board/noticelist.do"><strong>
								페이지 관리</strong></a></li>
					</c:if>
					<c:if test="${user_category == '일반 회원'}">
						<li id="categoryfont"><a
							href="<%=request.getContextPath()%>/shopInfoSeat/userbreakdown.do"><strong>
								예약내역</strong></a></li>
					</c:if>

					<li><a
						href="<%=request.getContextPath()%>/kat/login/logout.do"><strong>
							로그아웃</strong> </a></li>

				</c:if>	
		<li id="google_translate_element"></li>
		</ul>
		<!-- 헤더 메뉴 -->
		<div id="menus">
			<ul>
			    <li class="btn_center"><a style="color: #111111; font-size:18px;"
					href="<%=request.getContextPath()%>/master/board/list.do"><strong>숙소</strong></a></li>
				<%-- <li class="btn_center"><a style="color: #111111; font-size:18px;"
					href="<%=request.getContextPath()%>/master/board/list.do"><strong>셔틀</strong></a></li>
				<li class="btn_center"><a style="color: #111111; font-size:18px;"
					href="<%=request.getContextPath()%>/master/board/list.do"><strong>투어</strong></a></li>
				<li class="btn_center"><a style="color: #111111; font-size:18px;"
					href="<%=request.getContextPath()%>/master/board/list.do"><strong>티켓</strong></a></li>
				<li class="btn_center"><a style="color: #111111; font-size:18px;"
					href="<%=request.getContextPath()%>/master/board/list.do"><strong>스냅</strong></a></li>	 --%>
				<li class="btn_center"><a style="color: #111111; font-size:18px;"
					href="<%=request.getContextPath()%>/master/board/list.do"><strong>동행/장터</strong></a></li>
				<%-- <li class="btn_center"><a style="color: #111111; font-size:18px;"
					href="<%=request.getContextPath()%>/master/board/list.do"><strong>여행정보</strong></a></li> --%>
				<li class="btn_center"><a style="color: #111111; font-size:18px;"
					href="<%=request.getContextPath()%>/master/board/list.do"><strong>고객센터</strong></a></li>
			</ul>
        <script type="text/javascript">
        function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLanguage: 'ko',
        	layout: google.translate.TranslateElement.FloatPosition.TOP_RIGHT,
        	multilanguagePage: true}, 'google_translate_element');
        }
        </script>
        <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        
	</div>

	<div id="logincenter">
		<!-- 로그인 팝업 부분 -->
		<div id="loginmodal" style="display: none;">
			<div id="loginTitle" style="display: block;">

				<ul>
					<li id="titleon" onclick="titleOn_hide()" style="display: block;">
						회원 로그인</li>
					<li id="titleoff" onclick="titleOff_hide()" style="display: block;">
						사업자 로그인</li>
					<li style="width: 80px;">
						<button type="button" onclick="login();" id="close">
							<span id="close_size">X</span>
						</button>
					</li>
				</ul>
			</div>

			<form method="post"
				action="<%=request.getContextPath()%>/kat/login/loginProcess.do"
				name="member">
				<div>
					<ul id="member_in">
						<li id="id_sty"><span id="id_ico"><img
								src="<%=request.getContextPath()%>/img/id.png"></span> <input
							type="text" placeholder="ID" id="id" name="user_id"></li>
						<li id="pw_sty"><span id="pw_ico"><img
								src="<%=request.getContextPath()%>/img/unlocked.png"></span> <input
							type="password" placeholder="PASSWORD" id="pw" name="user_pass"></li>
						<li id="id_auto"><input type="checkbox"> <label>아이디저장</label>
							<input type="checkbox"> <label>자동로그인</label></li>
						<li><input type="submit" value="로그인" class="btn_login"
							style="background-color: #16bab4; cursor: pointer;"></li>
						<li id="join_login">
							<div id="find_join">
								<a href="<%=request.getContextPath()%>/kat/login/idfind.do">아이디
									찾기</a> <span>|</span> <a
									href="<%=request.getContextPath()%>/kat/login/pwfind.do">비밀번호
									찾기</a> <span>|</span> <a href="#">회원가입</a> <span>|</span> <a
								href="#">레스토랑관리자</a>
							</div>
						</li>
					</ul>
				</div>
			</form>

			<form method="post"
				action="<%=request.getContextPath()%>/kat/login/loginbusiness.do"
				name="company_member.do">
				<div>
					<ul id="company_in" style="display: none;">
						<li><span style="color: #16bab4;">※ 사업자 로그인 ※</span></li>

						<li id="id_sty_2"><span id="id_ico_2"><img
								src="<%=request.getContextPath()%>/img/id.png"></span> <input
							type="text" placeholder="ID" id="id_2" name="company_id"></li>
						<li id="pw_sty_2"><span id="pw_ico_2"><img
								src="<%=request.getContextPath()%>/img/unlocked.png"></span> <input
							type="password" placeholder="PASSWORD" id="pw_2"
							name="company_pass"></li>
						<li id="id_auto_2"><input type="checkbox"> <label>아이디저장</label>
						<input type="checkbox"> <label>자동로그인</label></li>
						<li><input type="submit" value="로그인" class="btn_login_2"
							style="background-color: #16bab4"></li>
					</ul>
				</div>
			</form>
		</div>
	</div>

</header>