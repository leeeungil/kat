<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="mainSize">
	<span id="inquire"> <img class="discuss"
			src="<%=request.getContextPath()%>/uploadfile/icon/discuss.png"
			style="height: 40px; width: 40px; position: relative; top: 10px; margin-right: 20px; border: none;">문의하기</span> <br>
	<div id="inquireWrite">
		<form method="post">
			<table id="inquireWriteTable">
				<tr>
					<td class="line1">작성자</td>
					<td class="line2"><input type="text" id="user_id"
						name="user_id" value="${user_id}" readonly="readonly"></td>
				</tr>
				<tr>
					<td class="line1">제목</td>
					<td class="line2"><input type="text" id="board_title"
						name="board_title"></td>
				</tr>
				<tr>
					<td class="line1">내용</td>
					<td><textarea cols="90" rows="20" id="board_content"
							name="board_content"></textarea></td>
				</tr>
			</table>
			<input type="submit" name="board" id="inquireWriteBtn" value="작성완료">
		</form>
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
