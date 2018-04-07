<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="imageBox">
		<img class="market_write_main_photo" src="<%=request.getContextPath()%>/img/street-3261965.jpg"> 
</div>    
<div class="totalView">
<div class="market_main_title"><span>마켓 게시판 글작성</span></div>
<div class="mainSize">
     <form method="post">
        <table>
           <tr>
              <td><input type="text" class="market_write_title" name="market_title" placeholder="제목"></td>
              <td><input type="text" class="user_id" name="user_id" value="${user_id}" readonly></td>
           </tr>
           <tr>
              <td colspan="2">내용</td>
           </tr>
           <tr>
              <td colspan="2"><textarea name="market_content" placeholder="내용을 입력해주세요"></textarea></td>
           </tr>
        </table>
        <input type="submit" name="market" class="market_btn" value="작성완료" />
     </form>
</div>
</div>

