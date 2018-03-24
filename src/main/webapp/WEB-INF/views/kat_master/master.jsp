<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>login_box</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

li {
	list-style: none;
}

#loginmodal {
	border: 1px solid #16bab4;
	width: 600px;
	background: #f3f6fa;
	border-radius: 6px;
	text-align: center;
}

#company_in {
	padding: 30px 72px 27px 72px;
	background-color: #f3f6fa;
	height: 300px;
}

#id_sty_2 {
	/* border: 1px solid black; */
	border-bottom: 1px solid #c5c5c5;
	position: relative;
	padding: 18px 30px 10px 70px;
	height: 40px;
}

#pw_sty_2 {
	/* border: 1px solid black; */
	border-bottom: 1px solid #c5c5c5;
	position: relative;
	padding: 18px 30px 10px 70px;
	height: 40px;
}

#id_auto_2 {
	padding-top: 14px;
	text-align: center;
	color: #858484;
}

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

#login_size_start {
	width: 600px;
	margin: 0 auto;
	margin-top: 100px;
}

#company_in input {
	padding: 10px;
}

#company_in input {
	vertical-align: middle;
}

#id_2, #pw_2{
width: 250px;
}

.btn_login_2 {
	background-color: #16bab4;
	border: none;
	cursor: pointer;
	color: #fff;
	margin-top: 20px;
	padding: 0px 20px 0px 20px;
	width: 200px;
	margin-left: 40px;
}
</style>

</head>

<body>
	<div id="login_size_start">
		<div id="loginmodal">
			<form method="post" name="master_member.do">
				<div>
					<ul id="company_in">
						<li><span style="color: #16bab4;"> 관리자 로그인 </span></li>

						<li id="id_sty_2"><span id="id_ico_2"><img
								src="<%=request.getContextPath()%>/img/id.png"></span> <input
							type="text" placeholder="ID" id="id_2" name="master_id"></li>
						<li id="pw_sty_2"><span id="pw_ico_2"><img
								src="<%=request.getContextPath()%>/img/unlocked.png"></span> <input
							type="password" placeholder="PASSWORD" id="pw_2"
							name="master_pass"></li>
						<li id="id_auto_2"><input type="checkbox"> <label>아이디저장</label>
							<input type="checkbox"> <label>자동로그인</label></li>
						<li><input type="submit" value="로그인" class="btn_login_2"
							style="background-color: #16bab4"></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</body>
</html>