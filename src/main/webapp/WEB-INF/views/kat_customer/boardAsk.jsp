<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="imageBox">
		<img class="mainSlider" src="<%=request.getContextPath()%>/img/blogger-336371_1280.jpg"> 
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
<div id="mainSize">
	<div id="faqlist">
		<span id="title_font">1:1 문의</span>
	</div>
	
		
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

