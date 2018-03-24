<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
	<div id="sideMenu" style="margin-left:10px; float:left;">
	   <div id='cssmenu'>
        <ul>
            <li id="master_fontsize"><a href="<%=request.getContextPath()%>/master/board/noticelist.do">관리자모드</a></li>
            
               <li class='has-sub'><a href='#'>회원관리</a>
                <ul>
                    <li class='has-sub'><a href='#'>일반회원 관리</a>
                        <ul>
                            <li><a href='#'>시스템 구축중..</a></li>
                        </ul>
                    </li>
                    <li class='has-sub'><a href='#'>사업주회원 관리</a>
                        <ul>
                            <li><a href='#'>시스템 구축중..</a></li>
                        </ul>
                    </li>
                </ul>
            </li>

            <li class='has-sub'><a href='#'>게시판관리</a>
                <ul>
                    <li class='has-sub'><a href="#">공지사항</a>
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/kat/master/noticeMain.do">공지사항 작성</a></li>
                        </ul>
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/master/board/noticelist.do">공지사항 리스트</a></li>
                        </ul>
                    </li>
                    <li class='has-sub'><a href="#">문의하기</a>
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/master/board/boardlist.do">문의리스트</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            
            <li><a href='#'>Contact</a></li>
        </ul>
    </div>
           </div>