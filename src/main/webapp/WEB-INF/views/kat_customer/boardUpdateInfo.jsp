<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="mainSize">

	<span id="updateInfo">문의글 수정하기</span>
	<div id="boardUpdateInfoForm">
		<form method="post"
			action="<%=request.getContextPath()%>/customer/board/Update.do?no=${ListInfoUpdate.board_no}">
			<table id="boardUpdateInfoTable">
				<tr>
					<td class="line1">제목</td>
					<td class="line2"><input type="text" id="board_title"
						name="board_title" value="${ListInfoUpdate.board_title}" /></td>
				</tr>
				<tr>
					<td class="line1">작성자</td>
					<td class="line2"><input type="text" id="user_id"
						name="user_id" value="${user_id}" readonly /></td>
				</tr>
				<tr>
					<td class="line1">내용</td>
					<td><textarea name="board_content" cols="75" rows="20">${ListInfoUpdate.board_content}</textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="저장"
						id="boardUpdateBtn" /> <input type="reset" value="취소"
						id="boardResetBtn" /></td>
				</tr>
			</table>
			<input type="hidden" name="user_id" value="${user_id}">
		</form>
	</div>
</div>
