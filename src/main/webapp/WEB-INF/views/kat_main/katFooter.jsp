<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<footer id="magintop">
	<%-- <hr><br>
	<div id="footer_site">
		<ul>
			<li><a href="#" target="_blank">FAMILY SITE</a> |</li>
			<li><a href="#" target="_blank">호텔엔조이</a> |</li>
			<li><a href="#" target="_blank">패스엔조이</a> |</li>
			<li><a href="#" target="_blank">티업엔조이</a></li>
		</ul>
		<br><hr><br>
	</div>
	<div id="footer_sitemap">
		<ul>
			<li> 이용약관 | 개인정보 취급방침 | 사업자 정보확인 </li>
		</ul>
	</div>
	<div id="footer_address">
		<span>상호명 : ㈜kat | 대표자 : kat | 주소 : 서울시 강남구 테헤란로 5길 유빌딩 2F <br>
		 전화 : 02)566-3644 | email : a03216@naver.com | 개인정보 관리 책임자 : kat</span>
		<c:if test="${user_id == null}">
			<a href="<%=request.getContextPath()%>/master/kat_master/master.do">관리자</a>
		</c:if>
	</div>
	<div id="copyright">Copyright ⓒ kat All right reserved</div>
	<br> --%>
</footer>
