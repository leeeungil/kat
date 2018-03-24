<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="mainSize">
	<span id="boardsendListForm">전체 문의리스트</span>
	<div>
		<form method="post">
			<table id="masterinquireListTable">
				<tr>
					<td class="centered" style="width: 5%">번호</td>
					<td class="centered" style="width: 30%">제목</td>
					<td class="centered" style="width: 6%">작성자</td>
					<td class="centered" style="width: 10%">작성일</td>
				</tr>

				<c:forEach var="board" items="${ListInfoBoard.getBoardList()}">
					<tr>
						<td>${board.board_no}</td>
						<td><a
							href="<c:url value="/customer/board/infolist.do?no=${board.board_no}"/>">${board.board_title}</a></td>
						<td>${board.user_id}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd"
								value="${board.regdate}" /></td>
					</tr>
				</c:forEach>

				<!-- 페이징 -->
				<tr>
					<td colspan="4" id="pagecenter"><c:forEach var="i" begin="1"
							end="${ListInfoBoard.getPageNumber()}" step="1">
							<a href="<c:url value="/master/board/boardlist.do?page=${i}"/>">[${i}]</a>
						</c:forEach></td>
				</tr>
			</table>
		</form>
	</div>
</div>
