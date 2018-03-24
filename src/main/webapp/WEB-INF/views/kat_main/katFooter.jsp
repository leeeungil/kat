<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<footer id="magintop" style="margin-top: 100px;">
	<hr>
	<br>
	<div id="footer_site">
		<ul>
			<li><a href="#" target="_blank">111</a> |</li>
			<li><a href="#" target="_blank">3222</a> |</li>
			<li><a href="#" target="_blank">3333</a> |</li>
			<li><a href="#" target="_blank">4</a></li>
		</ul>
		<br>
		<hr>
		<br> <br>
	</div>
	<div id="footer_sitemap">
		<ul>
			<li>이용약관 |</li>
			<li>개인정보 취급방침 |</li>
			<li>사업자 정보확인</li>
		</ul>
	</div>
	<br>
	<div id="footer_address">
		<span>상호명 : ㈜kat </span> | <span>대표자 : kat</span><br> <span>주소
			: 서울시 강남구 테헤란로 5길 유빌딩 2F</span><br> <span>전화 : 02)566-3644</span> |
		email : a03216@naver.com | 개인정보 관리 책임자 : kat
		<c:if test="${user_id == null}">
			<a
				href="<%=request.getContextPath()%>/master/kat_master/master.do">관리자</a>
		</c:if>
	</div>
	<br> <br>
	<div id="copyright">Copyright ⓒ kat All right reserved</div>
	<br> <br> <br>
</footer>
