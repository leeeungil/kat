<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class='parter_choice_form_wrap'>
	<ul>
		<li class="personalBtn">
			<a href="<%=request.getContextPath()%>/kat/parter/personal.do">개인 사업자</a>
		</li> 
		<li class="companyBtn">
			<a href="<%=request.getContextPath()%>/kat/parter/company.do">기업 사업자</a>
		</li>
	</ul>
</div>
