<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="asideSize">
	<form action="<%=request.getContextPath()%>/kat/menuForm/productAdd.do"
		method="post" name="salesform">
		<div id="Add" class="Tabs">
			<div id="add_search_border">
				<div id="add_search_header">일일 매출</div>
				<ul>
					<li id="add_seat">임시</li>
					<li class="textstyle"><input type="text" id="menuname"
						name="menu_name"></li>
				</ul>
				<ul>
					<li id="add_seat">임시</li>
					<li class="textstyle"><input type="number" id="menuprice"
						name="menu_price" min="0" max="1000000" value="0"></li>
				</ul>

				<ul id="btnstyle">
					<li><input type="submit" id="Registration" name="seatbtn"
						value="등록"></li>
					<li><input type="reset" id="reset" name="resetbtn" value="초기화"></li>
				</ul>
			</div>
		</div>
	</form>
</div>