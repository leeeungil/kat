<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	    <p class="noticleTitle">공지사항</p>
		<table id="articleNoticeListTable">
			<tr id="fontsize_no">
				<td class="centered1">번호</td>
				<td class="centered2">제목</td>
				<td class="centered3">작성자</td>
				<td class="centered4">작성일</td>
			</tr>

			<c:forEach var="notice" items="${ListInfoNotice.getNoticeList()}"
				varStatus="status">
				<tr>
					<td style="height: 30px;">${status.count}</td>
					<td><a href="<c:url value="/notice/board/infolist.do?no=${notice.notice_no}"/>">${notice.notice_title}</a></td>
					<td>${notice.user_id}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.regdate}" /></td>
				</tr>
			</c:forEach>

			<!-- 페이징 -->
			<tr>
				<td colspan="4" id="pagecenter"><c:forEach var="i" begin="1" end="${ListInfoNotice.getPageNumber()}" step="1">
						<a href="<c:url value="/master/board/list.do?page=${i}"/>">[${i}]</a>
					</c:forEach>
				</td>
			</tr>
		</table>
	</div>
</div>



