<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="commentbox">
<!-- 댓글작성부분 -->
<form method="post" action="<%=request.getContextPath()%>/kat/cmt/cmtform.do?go_with_no=${ListInfoGowith.go_with_no}">
<table>
<tr>
<td>
	<td><input type="hidden" name="go_with_no" id="go_with_no" value="${ListInfoGowith.go_with_no}"></td>
	<td><input type="text" name="cmt_user_id" placeholder="작성자" value=""></td>
	<td><input type="text" name="cmt_password" placeholder="비밀번호" value=""></td>
	<td>
		<div><textarea name="cmt_content" rows="4"  cols="70" placeholder="댓글을 입력해주세요"></textarea></div>
	</td>
</tr>
</table>
<div>
	<input type="submit" name="comment" class="commentSend" value="작성완료" />
</div>
</form>
</div>
