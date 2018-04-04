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
<form name="form1" method="post">
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
             <td>${ListInfoGowith.go_with_no}</td>
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
</form>
   <div class="gowith_info_btn">
   <div class="gowith_go">
   <a href="<%=request.getContextPath()%>/kat/gowith/gowith_write_list.do"><img class="return_list_Image" src="<%=request.getContextPath()%>/img/009.png" alt="동행게시판"><br><span>게시판</span><br></a>
   </div>
    <div class="gowith_go">
   <a href="<%=request.getContextPath()%>/kat/gowith/gowith_write_list.do"><img class="return_list_Image" src="<%=request.getContextPath()%>/img/023.png" alt="수정"><br><span>수정</span><br></a>
   </div>
   <div class="gowith_go">
   <a href="<%=request.getContextPath()%>/kat/gowith/gowith_write_list.do"><img class="return_list_Image" src="<%=request.getContextPath()%>/img/024.png" alt="삭제"><br><span>삭제</span><br></a>
   </div>
   </div>
</div>

<c:if test="${requestScope.commentList != null}">
  <c:forEach var="comment" items="${requestScope.commentList}">
   <tr>
     <!-- 아이디,작성날짜 -->
     <td width="150">
        <div>${comment.cmt_id}<br>
        <font size="2" color="lightgray">${comment.cmt_create_date}</font>
        </div>
        <!-- 본문내용 -->
        <td width="550">
        <div class="text_wrapper">${comment.cmt_content}</div>
        </td>
        <!-- 버튼 -->
        <td width="100">
        <div id="btn" style="text-align:center;">
        <a href="#">[답변]</a><br>
        <!-- 댓글 작성자만 수정, 삭제 가능하도록 -->
        <c:if test="${comment.cmt_user_id == sessionScope.user_id}">
        <a href="#">[수정]</a><br>
        <a href="#">[삭제]</a>
        </c:if>
        </div>
        </td>
        </tr>
        </c:forEach>
        </c:if>
<!-- 댓글작성부분 -->
<div class="commentbox">
<c:if test="${sessionScope.user_id != null}">
<tr bgcolor="#F5F5F5">
<form id="writeCommentForm">
   <input type="hidden" name="cmt_no" value="${cmt.cmt_no}">
   <input type="hidden" name="cmt_user_id" value="${sessionScope.user_id}">
   
   <td width="150">
   <div>${sessionScope.user_id}</div>
   </td>
   <!-- 본문작성 -->
   <td width="550">
   <div><textarea name="cmt_content" rows="4"  cols="70"></textarea></div>
   </td>
   <!-- 댓글 등록버튼 -->
   <td width="100">
   <div id="btn" style="text-align:center;">
   <p><a href="#" onclick="writeCmt()">[댓글목록]</a></p>
   </div>
   </td>
</form>

</c:if>
</div>

</div>

<script>
  var httpRequest = null;
  
  function getXMLHttpRequest(){
	  var httpRequest = null;
	  
	  if(window.ActiveXObject){
		  try {
			  httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
		  }catch(e){
			  try{
				  httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			  }catch(e2) {httpRequest = null;}
		  }
	  }
	  else if(window.XMLHttpRequest){
		  httpRequest = new window.XMLHttpRequest();
	  }
  }
  
  //댓글목록
  function writeCmt(){
	  var form = document.getElementById("writeCommentForm");
	  var id = form.cmt_user_id.value
	  var content = form.cmt_content.value;
	  
	  if(!content){
		  alert("내용을 입력하세요");
		  return false;
	  }
	  else{
		  var param = "cmt_no="+ no + "&cmt_user_id=" + cmt_user_id + "&cmt_content=" + cmt_content;
		  
		  httpRequest = getXMLHttpRequest;
		  httpRequest.onreadystatechange = checkFunc;
		  httpReqeust.open("POST", "CommentWriteAction.co", true);
		  httpRequest.setRequestHeader('Content-Type','application/x-www-form-urlencoded;charset=EUC-KR');
	  }
  }
  
  function checkFunc(){
	  if(httpRequest.readyState == 4){
		  var resultText = httpRequest.responseText;
		  if(resultText == 1) {
			  document.location.reload();
		  }
	  }
  }
</script>