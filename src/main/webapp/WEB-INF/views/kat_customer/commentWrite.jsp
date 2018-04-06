<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<script>
	$(document).ready(function(){
		var parents_no = $("#board_no").attr("class");
		$("#cmt_parent").val(parents_no);
		
	})
</script>
<div class="commentbox">
<!-- 댓글작성부분 -->
<form method="post" action="<%=request.getContextPath()%>/kat/cmt/cmtlist.do?no=${ListInfoComment.cmt_parent}">
<table>
<tr>
<td>
	<td><input type="hidden" name="cmt_parent" id="cmt_parent" value=""></td>
	<td><input type="text" name="cmt_user_id" placeholder="작성자" value=""></td>
	<td><input type="text" name="cmt_password" placeholder="비밀번호" value=""></td>
	<td>
		<div><textarea name="cmt_content" rows="4"  cols="70" placeholder="댓글을 입력해주세요"></textarea></div>
	</td>
</tr>
</table>
<div>
	<input type="submit" name="comment" class="commentSend" id='comment_btn' value="작성완료" />
</div>
</form>
</div>
