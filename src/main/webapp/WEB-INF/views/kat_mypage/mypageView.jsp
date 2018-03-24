<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div id="style_div_1">

	<div id="style_div_2">

		<p>My Page</p>
		<br>
		<hr>
		<br> <br>
		<table id="style_t1">


			<c:if test="${JoinListInfo1.category eq 'member'}">
				<tr>
					<th>아이디</th>
					<td>${JoinListInfo1.kat_id}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${JoinListInfo1.kat_name}</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${JoinListInfo1.kat_phone}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${JoinListInfo1.kat_email}</td>
				</tr>
				<tr>
					<th>가입일</th>
					<td><fmt:formatDate pattern="yyyy년 MM월 dd일 HH시mm분"
							value="${JoinListInfo1.create_date}" /></td>
				</tr>
			</c:if>

			<c:if test="${JoinListInfo.category eq 'business'}">
				<tr>
					<th>아이디</th>
					<td>${JoinListInfo.kat_id}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${JoinListInfo.kat_name}</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${JoinListInfo.kat_phone}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${JoinListInfo.kat_email}</td>
				</tr>
				<tr>
					<th>가입일</th>
					<td><fmt:formatDate pattern="yyyy년 MM월 dd일 HH시mm분"
							value="${JoinListInfo.create_date}" /></td>
				</tr>
				<tr>
					<th>매장명</th>
					<td>${JoinListInfo.business_name}</td>
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
					<td>${JoinListInfo.business_num}</td>
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
