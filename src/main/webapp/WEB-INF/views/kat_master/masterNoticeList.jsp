<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		
		<div id="mainSize_nt">
			
			
			<span id="noticeListForm">공지사항리스트</span>
			<div>
				<table id="noticeListTable" >
					<tr>
						<td class="centered" style="width:4%">번호</td>
						<td class="centered" style="width:35%">제목</td>
						<td class="centered" style="width:7%">작성자</td>
						<td class="centered" style="width:7%">작성일</td>
						<td class="centered" style="width:5%">수정</td>
						<td class="centered" style="width:5%">삭제</td>
					</tr>

					<c:forEach var="notice" items="${ListInfoNotice.getNoticeList()}">
						<tr>
							<td>${notice.notice_no}</td>
							<td><a
								href="<c:url value="/notice/board/infolist.do?no=${notice.notice_no}"/>">${notice.notice_title}</a></td>
							<td>${notice.user_id}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.regdate}" /></td>
						    <td><input id="btn_size" type="button" style="width:50px; height:30px;" value="수정" onclick="location.href='<%=request.getContextPath()%>/master/notice/infoUpdate.do?no=${notice.notice_no}'"></td>
	                        <td><input id="btn_size" type="button" style="width:50px; height:30px;" value="삭제" onclick="location.href='<%=request.getContextPath()%>/master/notice/infoDelete.do?no=${notice.notice_no}'"></td>
	               		</tr>
					</c:forEach>

					<!-- 페이징 -->
					<tr>
						<td colspan="6" id="pagecenter">
							<c:forEach var="i" begin="1" end="${ListInfoNotice.getPageNumber()}" step="1">
								<a href="<c:url value="/master/board/noticelist.do?page=${i}"/>">[${i}]</a>
							</c:forEach>
						</td>
					</tr>
				</table>
			</div>
		</div>
