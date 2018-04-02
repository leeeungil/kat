<%@ page import="java.util.Date"%>
<%@ page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../kat_login/inquire_sessionCheck.jsp"%>

<div class="totalView">
  <div class="board_list">
     <h1>Free Board</h1>
     <table summary="Summary Here">
     <thead>
          <tr>
             <th width="10%">번호</th>
             <th width="50%">제목</th>
             <th width="10%">작성자</th>
             <th width="10%">작성일</th>
             <th width="10%">조회수</th>
         </tr>
     </thead>
     <tbody>
        <c:forEach items="${ListInfoGowith.goWithList}" var="go_with">
           <tr class="light">
              <td align="center">[${go_with.go_with_no}]</td>
              <td><a id="go_with_title">${go_with.go_with_title}</a>
              <td align="center">${user_id}</td>
              <td align="center">${create_date}</td>
              <td align="center">${go_with.read_count}</td>
            </tr>
            </c:forEach>  
     </tbody>
     </table>
  </div>
</div>