<%@ page import="java.util.Date"%>
<%@ page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../kat_login/inquire_sessionCheck.jsp"%>


  <div class="comment_list">

     <table summary="Summary Here">
     <tbody>
        <c:forEach items="${ListInfoComment.commentList}" var="cmt">
           <tr class="light">
              <td><input type="hidden" name="cmt_parent" id="cmt_parent" value="${cmt.cmt_parent}">${cmt.cmt_parent}</td>
              <td class="comment_info">${cmt.cmt_content}</td>
              <td class="comment_info">${cmt.cmt_user_id}</td>
              <td class="comment_info"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${cmt_create_date}"/></td>
           </tr>	
           </c:forEach>  
     </tbody>
      <!-- 페이징 -->
     <tbody>
     <tr>
        <th colspan="5" class="pagecenter">
            <c:forEach var="i" begin="1" end="${ListInfoComment.getPageNumber()}" step="1">
            <a href="<c:url value="/kat/cmt/cmtlist.do?page=${i}"/>">[${i}]</a>
            </c:forEach>
        </th>
     </tr>
     </tbody>
     </table>
  </div>
