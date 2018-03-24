<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="totalView">
<div id="mainSize">
	<span id="masterNotice">공지사항등록</span>
	<div id="noticeWrite">
		<form method="post">
			<table id="noticeWriteTable">
				<tr>
					<td class="line1">작성자</td>
					<td class="line2"><input type="text" id="user_id"
						name="user_id" value="${user_id}" readonly="readonly"></td>
				</tr>
				<tr>
					<td class="line1">제목</td>
					<td class="line2"><input type="text" id="notice_title"
						name="notice_title"></td>
				</tr>
				<tr>
					<td class="line1">내용</td>
					<td><textarea cols="70" rows="20" id="notice_content"
							name="notice_content" style="overflow-x:hidden; font-size:15px; font-weight:2"></textarea></td>
				</tr>
			</table>
			<input type="submit" name="notice" id="noticeWriteBtn" value="작성완료">
		</form>
	</div>
</div>
</div>

