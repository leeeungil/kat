<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="imageBox">
		<img class="ask_main_photo" src="<%=request.getContextPath()%>/img/blogger-336371_1280.jpg"> 
</div>	
<div class="totalView">
    <ul id="asideSize">
		<li id="noticeBtn">
			<a href="<%=request.getContextPath()%>/master/board/list.do">공지사항</a>
		</li>
		<li id="inquireBtn">
			<a href="<%=request.getContextPath()%>/kat/askForm/ask.do">문의하기</a>
		</li>
		<li id="faqBtn">
			<a href="<%=request.getContextPath()%>/kat/faqForm/faq.do">자주묻는질문</a>
		</li>
	</ul>
<div id="mainSize"><br><br><br><br>
	<p class="faqTitle">자주문는질문</p>
	<form>
		<div class="list-w">
			<ul>
				<li><a href=# onclick="return false">환불은 어떻게 진행되나요</a>
					<ul>
						<li><a href="#">환불은 불가합니다.</a></li>
					</ul></li>
				<li><a href=# onclick="return false">예약번호를 잊어버렸습니다</a>
					<ul>
						<li><a href="#">고객센터로 문의하여 예약번호 확인이 가능하며 재발급을 원하실경우 재발급
								신청을 하셔야합니다.</a></li>
					</ul></li>
				<li><a href=# onclick="return false">유효기간이 지났습니다. 사용할 수 없나요?</a>
					<ul>
						<li><a href="#">유효기간이 만료된 예약번호는 사용하실 수 없습니다. 다만, 만료된
								예약번호의 경우 상황에 따라 유효기간 연장이 가능합니다. 연장이 가능한 상황은, 매장의 동의가 있고 분실및 기타
								사용자의 부주의로 인한경우가 아닐경우 연장이 가능합니다.</a></li>
					</ul></li>
				<li><a href=# onclick="return false">구매를 하려면 회원가입을 해야 하나요?</a>
					<ul>
						<li><a href="#">온테이블에서의 테이블예약은 회원구매만 가능합니다.</a></li>
					</ul></li>
				<li><a href=# onclick="return false">결제 가능한 방법을 알려주세요</a>
					<ul>
						<li><a href="#">'온테이블'에서는 카드결제 또는 무통장 입금으로 결제가 가능합니다.
								결제방식은 온라인사이트를 통해 결제하는 방식으로 진행되며, 방문결제,현장결제,유선결제 등으로는 결제를 진행하실 수
								없습니다.</a></li>
					</ul></li>
				<li><a href=# onclick="return false">결제를 취소할 수 있나요?</a>
					<ul>
						<li><a href="#">구매취소가 불가합니다.</a></li>
					</ul></li>
				<li><a href=# onclick="return false">영수증을 발급받고 싶어요</a>
					<ul>
						<li><a href="#">카드결제에 대한 내역조회는 '이니시스' 홈페이지를 통해 확인이 가능하며,
								카드영수증은 구매시 입력하신 이메일 주소로 자동으로 발급이 되고 있습니다. 만일 입력하신 이메일 주소가 기억나지
								않거나, 삭제된 경우에는, '마이페이지' > 구매내역' 에서 확인할 수 있습니다. 현금영수증은 해당 쿠폰을 매장에서
								사용 완료 하신 후, 온테이블 고객센터(TEL : 1600-1234)로 연락 주시면 발급 도와 드립니다.</a></li>
					</ul></li>
				<li><a href=# onclick="return false">전화로 예약을 할 수는 없나요?</a>
					<ul>
						<li><a href="#">'온테이블'은 인터넷으로 실시간 예약이 가능한 사이트입니다.</a></li>
					</ul></li>
			</ul>
		</div>
	</form>
</div>
</div>

<script src="https://code.jquery.com/jquery-2.1.3.js"></script>
<script>
	$('.list-w li a').click(
			function() {
				// 메뉴 a  click 이벤트가 발생 했을때 
				// 조건 : a의 형제인 ul이 존재하는지 확인 length가 0이면 false 아니면은 true
				// ul의 존재유무를 확인하는 이유는 a태그의 href연결된 사이트로 이동시킬지 아닐지 확인하기 위해서 
				if ($(this).find("+ul").length) {
					$(this).find("+ul").stop().slideToggle().parent()
							.siblings().find("ul:visible").stop().slideUp();
					// $(this).find("+ul").slideToggle() 
					// -> 설명 : a의 형제인 ul이 display:none이면 slideDown(dislay:block)로 실행 반대로 display:block이면 slideUp(dislay:nones)실행
					// $(this).parent().siblings().find("ul:visible").slideUp();
					// -> 설명 : a의 부모(li) 형제(li)들 중에서 자식(ul)이 visible(display:block)인 것은 slideUp 실행
				}
			});
</script>

