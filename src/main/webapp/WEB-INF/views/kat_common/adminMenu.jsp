<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="sideMenu" id="sideMenu">
	    <div id="menu_magin">
        <ul>
            <li class="menu">
                <ul id="menu_btn">매장관리</ul>
                <ul class="hide">
                    <%-- <li><a href="<%=request.getContextPath()%>/kat/seatForm/seatAdd.do">매장 좌석등록</a></li>
                    <li><a href="<%=request.getContextPath()%>/kat/seatPosition/seatRegister.do">매장도면 등록</a></li>
                    <li><a href="<%=request.getContextPath()%>/kat/seatPosition/seatRegisterUser.do">등록된 좌석위치</a></li> --%>
                </ul>
            </li>

            <li class="menu">
                <ul id="menu_btn">예약관리</ul>
                <ul class="hide">
                    <li><a href="<%=request.getContextPath()%>/kat/seat/reservationList.do">예약테이블 설정</a></li>
                    <li><a href="<%=request.getContextPath()%>/shopInfoSeat/breakdown.do">예약 내역</a></li>
                </ul>
            </li>

            <li class="menu">
                <ul id="menu_btn">상품관리</ul>
                <ul class="hide">
                    <li><a href="<%=request.getContextPath()%>/kat/menuForm/productAdd.do">메뉴 등록하기</a></li>
                </ul>
            </li>

            <li class="menu">
                <ul id="menu_btn">업체사진 등록</ul>
                <ul class="hide">
                    <li><a href="<%=request.getContextPath()%>/kat/shopPhotoForm/shopPhotoAdd.do">사진 업로드</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>