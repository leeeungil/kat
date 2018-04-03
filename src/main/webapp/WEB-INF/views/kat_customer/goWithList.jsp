<%@ page import="java.util.Date"%>
<%@ page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../kat_login/inquire_sessionCheck.jsp"%>

<div class="totalView">
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
              <td align="center">[${go_with.go_with_no}]</td>
              <td><a href="<c:url value="/kat/go_with/infolist.do?no=${go_with.go_with_no}"/>">${go_with.go_with_title}</a>
              <td align="center">${user_id}</td>
              <td align="center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${go_with.create_date}"/></td>
              <td align="center">${go_with.read_count}</td>
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