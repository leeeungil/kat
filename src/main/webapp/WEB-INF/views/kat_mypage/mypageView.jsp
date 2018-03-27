<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div id="style_div_1">

	<div id="style_div_2">

		<p>My Page</p>
		<br>
		<hr>
		<br> <br>
		<table id="style_t1">


			<c:if test="${JoinListInfo1.level eq '1'}">
				<tr>
					<th>아이디</th>
					<td>${JoinListInfo1.user_id}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${JoinListInfo1.name}</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${JoinListInfo1.phone}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${JoinListInfo1.email}</td>
				</tr>
				<tr>
					<th>가입일</th>
					<td><fmt:formatDate pattern="yyyy년 MM월 dd일 HH시mm분"
							value="${JoinListInfo1.create_date}" /></td>
				</tr>
			</c:if>

			<c:if test="${JoinListInfo.level eq '2'}">
				<tr>
					<th>아이디</th>
					<td>${JoinListInfo.user_id}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${JoinListInfo.name}</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${JoinListInfo.phone}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${JoinListInfo.email}</td>
				</tr>
				<tr>
					<th>가입일</th>
					<td><fmt:formatDate pattern="yyyy년 MM월 dd일 HH시mm분"
							value="${JoinListInfo.create_date}" /></td>
				</tr>
				<tr>
					<th>매장명</th>
					<td>${JoinListInfo.company}</td>
				</tr>
				<tr>
					<th>우편번호</th>
					<td>${JoinListInfo.postcode}</td>
				</tr>
				<tr>
					<th>매장주소</th>
					<td>${JoinListInfo.address1}</td>
				</tr>
				<tr>
					<th>상세주소</th>
					<td>${JoinListInfo.address2}</td>
				</tr>
				<tr>
					<th>매장전화</th>
					<td>${JoinListInfo.business_phone}</td>
				</tr>
				<tr>
					<th>사업자 등록번호</th>
					<td>${JoinListInfo.business_number}</td>
				</tr>
			</c:if>
		</table>
		<br> <br>
		<hr>
		<br> <a
			href="<%=request.getContextPath()%>/kat/myPage/updateinfo.do?userid=${user_id}">정보수정하기</a>
		| <a href="#">탈퇴하기</a> | <a
			href="<%=request.getContextPath()%>/kat/mypage/pwchange.do?userid=${user_id}">비밀번호
			변경</a>
	</div>
	<br> <br>

</div>
