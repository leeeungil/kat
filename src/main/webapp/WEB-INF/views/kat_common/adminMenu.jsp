<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
$(document).ready(function() {
	$(document).on("mouseenter",".menu_btn",function(){
		$(this).removeClass('menu_btn').addClass('menu_btn_down');
		$(this).next("ul").removeClass('menu_sub').addClass('menu_sub_on');
	})
	$(document).on("mouseleave",".menu_sub_on",function(){
		$(this).removeClass('menu_sub_on').addClass('menu_sub')
		$(this).prev("ul").removeClass('menu_btn_down').addClass('menu_btn');
	})
});
</script>
<style>
.admin_main_top {
	width: 100%;
    height: calc(100vh - 290px);
    color: white;
}
.menu_bar_top {
	
}
.menu_btn {
    height: 100%;
}
.menu_btn_down {
    display: none;
}
.menu_btn > li > font {
	font-size: 36px;
    float: right;
    height: 100%;
    margin-top: 16rem;
    margin-right: 21px;
}
.menu_btn > li > img {
	font-size: 44px;
}
.menu_sub {
    height: 0;
    position: absolute;
    background: #26252b;
    overflow: hidden;
    width: 25%;
    color: white;
}
.menu_sub_on {
	height: 100%;
}
.product_sub > li {
    height: calc(100%/2);
    border: 2px solid white;
    padding-top: 7px;
    margin-bottom: -12px;
    border-bottom: 0px solid;
}
.product_sub > li > a > img {
    height: 75%;
}
.product_sub > li > a > font {
    font-size: 4em;
    color: white;
}
.menu_bar_top > li {
	width: 48%;
    float: left;
    margin: 1% 1%;
    height: 307px;
    background-color: #26252b;
}
</style>
<div class="admin_main_top">
	<div class="admin_main">
		<ul class="menu_bar_top">
			<li>
				<ul class="menu_btn"><li>
					<font>매장관리</font>
				</li></ul>
				<ul class="menu_sub">
					<li><a href="<%=request.getContextPath()%>/kat/seatPosition/seatRegister.do">매장도면 등록</a></li>
					<li><a href="<%=request.getContextPath()%>/kat/seatPosition/seatRegisterUser.do">등록된 좌석위치</a></li>
				</ul>
			</li>
			<li>
                <ul class="menu_btn"><li>
                	<font>예약관리</font>
                </li></ul>
                <ul class="menu_sub">
                    <li><a href="<%=request.getContextPath()%>/kat/seat/reservationList.do">예약테이블 설정</a></li>
                    <li><a href="<%=request.getContextPath()%>/shopInfoSeat/breakdown.do">예약 내역</a></li>
                </ul>
            </li>
            <li>
                <ul class="menu_btn"><li>
	                <img src="<%=request.getContextPath()%>/img/admin/product_manage.png">
	                <font>여행 상품<br>등록/관리</font>
                </li></ul>
				<ul class="menu_sub product_sub">
                    <li><a href="<%=request.getContextPath()%>/kat/productForm/productAdd.do">
                    	<img src="<%=request.getContextPath()%>/img/admin/product_update.png">
                    	<font>상품 등록</font>
                   	</a></li>
                    <li><a href="<%=request.getContextPath()%>/kat/productForm/productAdd.do">
                    	<img src="<%=request.getContextPath()%>/img/admin/product_insert.png">
                    	<font>상품 관리</font>
                   	</a></li>
                </ul>
            </li>
            <li>
                <ul class="menu_btn"><li>
                	<font>업체사진 등록</font>
                </li></ul>
                <ul class="menu_sub">
                    <li><a href="<%=request.getContextPath()%>/kat/shopPhotoForm/shopPhotoAdd.do">사진 업로드</a></li>
                </ul>
            </li>
		</ul>
	</div>
</div>
