<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="imageBox">
		<img class="gowith_write__main_photo" src="<%=request.getContextPath()%>/img/nature-3042751_1920.jpg"> 
</div>    
<div class="totalView">
<div class="gowith_main_update_title"><span>동행 게시판 수정하기</span></div>
<div class="mainSize">
     <form method="post" action="<%=request.getContextPath()%>/kat/gowith/updateResult.do?no=${ListInfoUpdateGo_with.go_with_no}">
        <table>
           <tr>
              <td><input type="text" class="gowith_update_write_title" name="go_with_title" value="${ListInfoUpdateGo_with.go_with_title}"/></td>
              <td><input type="text" class="user_id" name="user_id" value="${user_id}" readonly></td>
           </tr>
           <tr>
              <td colspan="2">내용</td>
           </tr>
           <tr>
              <td colspan="2"><textarea name="go_with_content">${ListInfoUpdateGo_with.go_with_content}</textarea></td>
           </tr>
        </table>
        <input type="submit" name="go_with" class="go_with_update_btn" value="수정완료" />
     </form>
</div>
</div>

