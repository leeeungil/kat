<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../kat_login/inquire_sessionCheck.jsp"%>
<div class="imageBox">
		<img class="gowith_info__main_photo" src="<%=request.getContextPath()%>/img/nature-3042751_1920.jpg"> 
</div>
<div class="totalView">
<div class="mainSize">
<form method="post">
   <table class="board_view">
      <colgroup>
          <col width="15%" />
          <col width="35%" />
          <col width="15%" />
          <col width="35%" />
      </colgroup>   
      <caption style="background-color:#ccc; height:50px;">게시글 상세</caption>
      <tbody>
          <tr>
             <th>글 번호</th>
             <td id='board_no' class='${ListInfoGowith.go_with_no}'>${ListInfoGowith.go_with_no}</td>
             <th>조회수</th>
             <td>${ListInfoGowith.read_count}</td>
          </tr>
          <tr>
             <th>작성자</th>
             <td>${ListInfoGowith.user_id}</td>
             <th>작성일자</th>
             <td>${go_with.create_date}</td>
          </tr>
          <tr>
             <th>제목</th>
             <td colspan="3">${ListInfoGowith.go_with_title}</td>
          </tr>
          <tr>
             <td colspan="4" style="border:1px solid #ccc; height:100px;">${ListInfoGowith.go_with_content}</td>
          </tr>
      </tbody>
   </table>

   <div class="gowith_info_btn">
   <div class="gowith_go">
   <a href="<%=request.getContextPath()%>/kat/gowith/gowith_write_list.do"><img class="return_list_Image" src="<%=request.getContextPath()%>/img/009.png" alt="동행게시판"><br><span>게시판</span><br></a>
   </div>
    <div class="gowith_go">
   <input type="button" id="btnupdate" value="수정" onclick="location.href='<%=request.getContextPath()%>/kat/gowith/updateInfo.do?no=${ListInfoGowith.go_with_no}'">
   </div>
   <div class="gowith_go">
   <a href="<%=request.getContextPath()%>/kat/gowith/gowith_write_list.do"><img class="return_list_Image" src="<%=request.getContextPath()%>/img/024.png" alt="삭제"><br><span>삭제</span><br></a>
   </div>
   </div>
</form>   
</div>
</div>

