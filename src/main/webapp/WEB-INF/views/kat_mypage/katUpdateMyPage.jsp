<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="updateview_div_1">

	<div id="updateview_div_2">
		<form id="updateform" name="updateform"
			action="<%=request.getContextPath()%>/kat/mypage/mypageUpdate.do"
			method="post">
			<p>수정이 완료 되었습니다.</p>
			<br>
			<hr>
			<br><br>
			<table id="style_view_t1">
				<c:if test="${category eq 'member'}">
					<tr>
						<th>이름</th>
						<td>${MypageUpdateSucess.kat_name}</td>
					</tr>
					
					<tr>
						<th>전화번호</th>
						<td>${MypageUpdateSucess.kat_phone}</td>
					</tr>
				</c:if>

				<c:if test="${category eq 'business'}">
					<tr>
						<th>이름</th>
						<td>${MypageUpdateSucess.kat_name}</td>
					</tr>
					
					<tr>
						<th>전화번호</th>
						<td>${MypageUpdateSucess.kat_phone}</td>
					</tr>
					<tr>
						<th>매장명 </th>
						<td>${MypageUpdateSucess.business_name}</td>
					</tr>
					<tr>
						<th>도로명 </th>
						<td>${MypageUpdateSucess.postcode}</td>
					</tr>
					<tr>
						<th>지번주소 </th>
						<td>${MypageUpdateSucess.address1}</td>
					</tr>
					<tr>
						<th>상세주소 </th>
						<td>${MypageUpdateSucess.address2}</td>
					</tr>
					<tr>
						<th>매장전화번호 </th>
						<td>${MypageUpdateSucess.business_phone}</td>
					</tr>
					<tr>
						<th>사업자등록번호 </th>
						<td>${MypageUpdateSucess.business_num}</td>
					</tr>
				</c:if>
			</table>
			<br> <br>
			<hr>
			<br>
			<a href="<%=request.getContextPath()%>/kat_main.do">홈으로
				가기</a> <br>
			<br> <br>
		</form>
	</div>


</div>

