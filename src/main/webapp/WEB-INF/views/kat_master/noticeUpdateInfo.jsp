<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="mainSize">

	<span id="noticeupdateInfo">공지사항 수정하기</span>

	<div id="noticeUpdateInfoForm">
		<form method="post"
			action="<%=request.getContextPath()%>/master/notice/listUpdate.do?no=${NoticeListInfoUpdate.notice_no}">
			<table id="noticeUpdateInfoTable">
				<tr>
					<td class="line1">제목</td>
					<td class="line2"><input type="text" id="notice_title"
						name="notice_title" value="${NoticeListInfoUpdate.notice_title}" /></td>
				</tr>
				<tr>
					<td class="line1">작성자</td>
					<td class="line2"><input type="text" id="user_id"
						name="user_id" value="${user_id}" readonly /></td>
				</tr>
				<tr>
					<td class="line1">내용</td>
					<td><textarea name="notice_content" cols="90" rows="20">${NoticeListInfoUpdate.notice_content}</textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input id="btn_style"
						type="submit" value="저장" style="width: 100px; height: 30px;" /> <input
						id="btn_style" type="reset" value="취소"
						style="width: 100px; height: 30px;"
						onclick="location.href='<%=request.getContextPath()%>/master/board/noticelist.do'" />
					</td>
				</tr>
			</table>
			<input type="hidden" name="user_id" value="${user_id}">
		</form>
	</div>
</div>