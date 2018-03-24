<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function searchaddr() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('address1').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('address2').focus();
					}
				}).open();
	}

	/* 정보수정 자바스크립트 */

	function mypageform() {

		var nameke = /^[가-힣|a-zA-Z]*$/;

		var chk3 = /^[0-9]*$/;

		var chk4 = /^\d{2,3}-\d{3,4}-\d{4}$/;

		// 이름 입력여부 검사

		var name = document.mypage_form.kat_name.value;

		if (name.length == 0 || name == null) {

			alert("이름을 입력하십시오");

			mypage_form.kat_name.focus();

			return false;

		}

		// 이름 형식 여부 검사

		if (!nameke.test(name)) {

			alert("이름은 한글, 영어만 입력가능합니다.");

			mypage_form.kat_name.focus();

			return false;

		}

		// 전화번호 입력여부 검사

		var tel = document.mypage_form.kat_phone.value;

		if (tel.length == 0 || tel == null) {

			alert("전화번호를 입력하십시오");

			mypage_form.kat_phone.focus();

			return false;

		}

		// 전화번호 형식 검사

		if (!chk4.test(tel)) {

			alert("전화번호의 형식은 010-1234-5678입니다");

			mypage_form.kat_phone.focus();

			return false;

		}

		/* var BusinessValue = document.mypage_form.category.value;




		if (BusinessValue == ('business')) { */

		var businessname = document.mypage_form.business_name.value;

		if (mypage_form.business_name.value == "") {

			alert("매장명을 입력하십시오");

			mypage_form.business_name.focus();

			return false;

		}

		if (mypage_form.postcode.value == "") {

			alert("도로명을 입력하십시오");

			mypage_form.postcode.focus();

			return false;

		}

		if (mypage_form.address2.value == "") {

			alert("상세주소를 입력하십시오");

			mypage_form.address2.focus();

			return false;

		}

		var businesstel = document.mypage_form.business_phone.value;

		// 매장번호 입력여부 검사

		if (mypage_form.business_phone.value == "") {

			alert("매장전화번호를 입력하십시오");

			mypage_form.business_phone.focus();

			return false;

		}

		// 전화번호 형식 검사

		if (!chk4.test(businesstel)) {

			alert("매장전화번호는 형식은 010-1234-5678입니다");

			mypage_form.business_phone.focus();

			return false;

		}

		var businessnum = document.mypage_form.business_num.value;

		// 사업자 등록번호 입력 여부 검사

		if (mypage_form.business_num.value == "") {

			alert("사업자 등록번호를 입력하십시오");

			mypage_form.business_num.focus();

			return false;

		}

		if (!chk3.test(businessnum)) {

			alert("사업자 등록번호는 숫자만입력가능합니다");

			mypage_form.business_num.focus();

			return false;

		}

		/* } */

		return true;

	}
</script>


<div id="style_update_div_1">
	<br>
	<p>회원정보수정</p>
	<br> <strong>${user_id}</strong>님의회원정보입니다. <br>
	<div id="style_update_div_2">

		<form
			action="<%=request.getContextPath()%>/kat/mypage/mypageUpdate.do"
			method="post" id="mypage_form" name="mypage_form"
			onsubmit="return mypageform();">
			<hr>
			<br>
			<ul>
				<c:if test="${MyPageUpdate.category eq 'member'}">
					<li>이름 &nbsp; <input type="text" name="kat_name"
						value="${MyPageUpdate.kat_name}"></li>
					

					<li>전화번호 &nbsp; <input type="text" name="kat_phone"
						value="${MyPageUpdate.kat_phone}"></li>
				</c:if>
			</ul>
			<ul>
				<c:if test="${MyPageUpdate.category eq 'business'}">

					<li>이름 &nbsp; <input type="text" name="kat_name"
						value="${MyPageUpdate1.kat_name}"></li>
					<

					<li>전화번호 &nbsp; <input type="text" name="kat_phone"
						value="${MyPageUpdate1.kat_phone}"></li>

					<li>매장명 &nbsp; <input type="text" name="business_name"
						value="${MyPageUpdate1.business_name}"></li>

					<li class="textstyle">매장 주소 &nbsp; <input type="button"
						onclick="searchaddr()" id="kk_searchaddr" value="주소찾기"></li>

					<li>도로명 &nbsp; <input type="text" id="postcode"
						name="postcode" value="${MyPageUpdate1.postcode}"></li>

					<li class="textstyle">지번주소 &nbsp; <input type="text"
						id="address1" name="address1" value="${MyPageUpdate1.address1}"></li>

					<li class="textstyle">상세주소 &nbsp; <input type="text"
						id="address2" name="address2" value="${MyPageUpdate1.address2}"></li>

					<li>매장전화번호 &nbsp; <input type="text" name="business_phone"
						value="${MyPageUpdate1.business_phone}"></li>

					<li>사업자등록번호 &nbsp; <input type="text" name="business_num"
						value="${MyPageUpdate1.business_num}"></li>
				</c:if>
			</ul>
			<ul>
				<li><input type="submit" value="수정완료"></li>
			</ul>
			<br> <br>
			<hr>
			<br>
		</form>


		<h5>
			<br>회원정보는 개인정보처리방침에 따라 안전하게 보호되며,<br>회원님의 명백한 동의없이 공개 또는 제
			3자에게 제공되지 않습니다. <br>
		</h5>

	</div>
	<br> <br>
</div>