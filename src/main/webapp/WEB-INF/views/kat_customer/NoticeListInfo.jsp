<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="totalView">
	<div id="mainSize">
		<span id="detailListForm"><img class="megaphone"
			src="<%=request.getContextPath()%>/uploadfile/icon/megaphone.png"
			style="height: 40px; width: 40px; position: relative; top: 10px; margin-right: 20px; border: none;"> 공지사항 상세보기</span> <br>
		<div id="detail">
			<table id="detailListTable">
				<tr>
					<td class="line1">공지사항</td>
				</tr>
				<tr>
					<td><textarea cols="100" rows="30" id="notice_content"
							readonly="readonly">${DetailNoticeInfo.notice_content}</textarea></td>
				</tr>
			</table>
		</div>
	</div>
	<div id="asideSize">
		<div id="centerInfo">
			<h4>문의하신 내용은 빠른 시일 안에 답변 드릴 수 있도록 노력하겠습니다.</h4>
			<br> <br>
			<h2>
				고객센터<br>1600 - 1234
			</h2>
			<br>
			<p>운영시간</p>
			<p>평일 09:00~18:00</p>
			(주말,공휴일 휴무 / 점심시간) 12:00~13:30
		</div>
		<div id="noticeBtn">
			<a href="<%=request.getContextPath()%>/master/board/list.do">공지사항</a>
		</div>
		<div id="inquireBtn">
			<a href="<%=request.getContextPath()%>/customer/board/writelist.do">문의하기</a>
		</div>
		<div id="faqBtn">
			<a href="<%=request.getContextPath()%>/kat/faqForm/faq.do">자주묻는질문</a>
		</div>
	</div>
</div>



