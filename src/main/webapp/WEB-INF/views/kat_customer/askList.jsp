<%@ page import="java.util.Date"%>
<%@ page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../kat_login/inquire_sessionCheck.jsp"%>

<div class="totalView">
	<div id="mainSize">

		<span id="inquireListForm">
		<img class="question" src="<%=request.getContextPath()%>/uploadfile/icon/question.png" style="height: 40px; width: 40px; position: relative; top: 10px; border: none;"> 나의 문의 리스트</span>
		<div id="inquireBtn_user">
			<a href="<%=request.getContextPath()%>/kat/askWriteForm/askWrite.do">문의작성</a>
		</div>
		<br>
		<div id="inquireList">
			<form method="post">
				<table id="inquireListTable">
					<tr id="fontSize_no2">
						<td class="centered1">번호</td>
						<td class="centered2">제목</td>
						<td class="centered3">작성자</td>
						<td class="centered4">작성일</td>
					</tr>

					<c:forEach var="ask_to" items="${ListInfoAskto.getAsktoList()}" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<%-- <td><a href="<c:url value="/customer/board/infolist.do?no=${ask_to.ask_no}"/>">${ask_to.ask_title}</a></td> --%>
							<td>${ask_to.ask_title}</td>
							<td>${ask_to.user_id}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${ask_to.create_date}" /></td>
						</tr>
					</c:forEach>

					<!-- 페이징 -->
					<tr>
						<td colspan="4" id="pagecenter">
						    <c:forEach var="i" begin="1" end="${ListInfoAskto.getPageNumber()}" step="1">
								<a href="<c:url value="/kat/ask_to/asklist.do?page=${i}"/>">[${i}]</a>
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