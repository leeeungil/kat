<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

		<div id="mainSize">
			<div id="inquireListForm">
				<h2>리스트</h2>
			</div>
			<div id="inquireList">
                <form method="post">
				<table border="1" style="width: 1000px" id="inquireListTable">
					
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
					</tr>
					<c:forEach var="board" items="${ListInfoBoard.getBoardList()}">
						<tr>
							<td>${board.board_no}</td>
							<td><a href="<c:url value="/customer/board/infolist.do?no=${board.board_no}"/>">${board.board_title}</a></td>
							<td>${board.user_id}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${board.regdate}" /></td>
						</tr>
					</c:forEach>
                     
					<!-- 페이징 -->
					<tr>
						<td colspan="4" id="pagecenter">
							<c:forEach var="i" begin="1" end="${ListInfoBoard.getPageNumber()}" step="1">
								<a href="<c:url value="/customer/board/writelist.do?page=${i}"/>">[${i}]</a>
							</c:forEach>
						</td>
					</tr>
				</table>
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
