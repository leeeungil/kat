<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="totalView">
<div id="mainSize">
	<span id="inquire"> 
	<img class="discuss" src="<%=request.getContextPath()%>/uploadfile/icon/discuss.png" style="height: 40px; width: 40px; position: relative; top: 10px; margin-right: 20px; border: none;">문의하기</span> <br>
	<div id="inquireWrite">
		<form method="post">
			<table id="inquireWriteTable">
			<tr>
			   <td id="serviceTitle">서비스</td>
			   <td>
				   <input type="radio" name="serviceType" value="민박" checked><label>민박</label>&nbsp;&nbsp;
				   <input type="radio" name="serviceType" value="투어"><label>투어</label>&nbsp;&nbsp;
				   <input type="radio" name="serviceType" value="셔틀"><label>셔틀</label>&nbsp;&nbsp;
				   <input type="radio" name="serviceType" value="예약/결제"><label>예약/결제</label>&nbsp;&nbsp;
				   <input type="radio" name="serviceType" value="기타"><label>기타</label>
			   </td>
			</tr>
				<tr>
					<td id="askWriter">작성자</td>
					<td><input type="text" id="user_id" name="user_id" value="${user_id}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" id="ask_title" name="ask_title"></td>
				</tr>
				<tr>
					<td id="ask_content_1">문의내용</td>
					<td><textarea cols="70" rows="21" id="ask_content" name="ask_content"></textarea></td>
				</tr>
			</table>
			<input type="submit" name="ask_to" id="inquireWriteBtn" value="작성완료">
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
		<a href="<%=request.getContextPath()%>/kat/askWriteForm/askWrite.do">문의하기</a>
	</div>
	<div id="faqBtn">
		<a href="<%=request.getContextPath()%>/kat/faqForm/faq.do">자주묻는질문</a>
	</div>
</div>
</div>