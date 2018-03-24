<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="totalView">
<div id="mainSize">
	<h2 id="review">리뷰작성하기</h2>
	
	<div id="reviewWrite">
		<form method="post" name="reviewsend">
			<table id="reviewWriteTable">
				<tr>
				   <td class="line1" style="border:1px solid none; height:10px;"></td>
				   <td class="line2">
				      <input type="hidden" id="business_name"name="business_name" value="${SearchName}">
				   </td>
				</tr>
			   <tr>
					<td class="line1">작성자</td>
					<td class="line2">
					   <input type="text" id="user_id" name="user_id" value="${user_id}" readonly>
					</td>
				</tr>
				
				<tr>
					<td class="line1">내용</td>
					<td class="line2"><input type="text" name="review_content" maxlength="50" placeholder="글자수는 50자로 제한됩니다." style="width:495px; height:50px; border:none;"></td>
				</tr>
			 
			</table>
			<input type="submit" name="review" id="reviewBtn" value="작성완료" />
		</form>
	</div>
</div>

<div id="asideSize">
	<div id="centerInfo">
		<h4>문의하신 내용은 빠른 시일 안에 답변 드릴 수 있도록 노력하겠습니다.</h4>
		<br>
		<br>
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
