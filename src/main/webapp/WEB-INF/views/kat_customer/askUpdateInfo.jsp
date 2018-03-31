<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="totalView">
<div id="mainSize">

	<span id="updateInfo">나의 문의글 수정하기</span>
	<div id="askUpdateInfoForm">
		<form method="post" action="<%=request.getContextPath()%>/kat/ask/askUpdate.do?no=${AskInfoUpdate.ask_no}">
			<table id="askUpdateInfoTable">
				<tr>
					<td class="line1">제목</td>
					<td class="line2"><input type="text" id="ask_title" name="ask_title" value="${AskInfoUpdate.ask_title}" /></td>
				</tr>
				<tr>
					<td class="line1">작성자</td>
					<td class="line2"><input type="text" id="user_id" name="user_id" value="${user_id}" readonly /></td>
				</tr>
				<tr>
					<td class="line1">내용</td>
					<td><textarea name="ask_content" cols="94" rows="20">${AskInfoUpdate.ask_content}</textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="저장" id="askUpdateBtn" />
						<input type="reset" value="return" 	id="askResetBtn" />
					</td>
				</tr>
			</table>
			<input type="hidden" name="user_id" value="${user_id}">
		</form>
	</div>
</div>
</div>