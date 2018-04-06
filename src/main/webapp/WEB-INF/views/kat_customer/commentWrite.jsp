<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<script>
	$(document).ready(function(){
		var parents_no = $("#board_no").attr("class");
		$("#cmt_parent").val(parents_no);
		
	})
</script>
<!-- 댓글작성부분 -->
<form method="post" action="<%=request.getContextPath()%>/kat/cmt/cmtform.do">작성
<table>
<tr>
<td>
	<td><input type="hidden" name="cmt_parent" id="cmt_parent" value=""></td>
	<td><input type="text" name="cmt_user_id" value=""></td>
	<td><input type="text" name="cmt_password" value=""></td>
	<td>
		<div><textarea name="cmt_content" rows="4"  cols="70"></textarea></div>
	</td>
</tr>
</table>
<div id="btn" style="text-align:center;">
	<input type="submit" name="comment" class="commentBtn" id='comment_btn' value="작성완료" />
</div>
</form>

