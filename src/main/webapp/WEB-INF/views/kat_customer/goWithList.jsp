<%@ page import="java.util.Date"%>
<%@ page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../kat_login/inquire_sessionCheck.jsp"%>
<div class="imageBox">
		<div class="gowith_list_main_photo" style="background-image:url(<%=request.getContextPath()%>/img/nature-3042751_1920.jpg)"></div> 
</div>
<div class="totalView">
<div class="commuity_to_go">
    <a href="<%=request.getContextPath()%>/kat/gowith/gowith_write_list.do">동행 찾기</a>
    <a href="<%=request.getContextPath()%>/kat/market/write.do">장터</a></div>
</div>	
      <div class="gowith_write_btn">
       <a href="<%=request.getContextPath()%>/kat/goWith/gowithwriteForm.do"><span>동행 작성</span></a>
     </div>
  <div class="board_list">
     <h1>동행 구하기</h1> 
     <table summary="Summary Here">
     <thead>
          <tr>
             <th width="10%">번호</th>
             <th width="50%">제목</th>
             <th width="10%">작성자</th>
             <th width="13%">작성일</th>
             <th width="10%">조회수</th>
         </tr>
     </thead>
     <tbody>
        <c:forEach items="${ListInfoGowith.goWithList}" var="go_with">
           <tr class="light">
              <td class="list_info" align="center">[${go_with.go_with_no}]</td>
              <td class="list_info"><a href="<c:url value="/kat/gowith/gowith_info_list.do?no=${go_with.go_with_no}"/>">${go_with.go_with_title}</a>
              <td class="list_info" align="center">${user_id}</td>
              <td class="list_info" align="center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${go_with.create_date}"/></td>
              <td class="list_info" align="center">${go_with.read_count}</td>
            </tr>
            </c:forEach>  
     </tbody>
      <!-- 페이징 -->
     <tbody>
     <tr>
        <th colspan="5" class="pagecenter">
            <c:forEach var="i" begin="1" end="${ListInfoGowith.getPageNumber()}" step="1">
            <a href="<c:url value="/kat/gowith/gowith_write_list.do?page=${i}"/>">[${i}]</a>
            </c:forEach>
        </th>
     </tr>
     </tbody>
     </table>
  </div>
</div>