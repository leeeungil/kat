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
<form method="post" action="<%=request.getContextPath()%>/kat/gowith/gowith_info_list.do?bno=${ListInfoGowith.bno}">
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
             <td id='board_no' class='${ListInfoGowith.bno}'>${ListInfoGowith.bno}</td>
             <th>조회수</th>
             <td>${ListInfoGowith.viewcnt}</td>
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
   <input type="button" value="동행게시판" onclick="location.href='<%=request.getContextPath()%>/kat/gowith/gowith_write_list.do'">
   </div>
    <div class="gowith_go">
   <input type="button" value="수정" onclick="location.href='<%=request.getContextPath()%>/kat/gowith/updateInfo.do?bno=${ListInfoGowith.bno}'">
   </div>
   <div class="gowith_go">
    <input type="button" value="삭제" onclick="location.href='<%=request.getContextPath()%>/kat/gowith/deleteInfo.do?bno=${ListInfoGowith.bno}'">
   </div>
   </div>
</form>   
</div>
</div>

