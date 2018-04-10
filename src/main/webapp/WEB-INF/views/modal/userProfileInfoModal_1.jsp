<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- css 가져오기 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/modal/component.css" />
<script>
$(document).ready(function() {
	$(document).on("click", "#modal_close", function() {
		$(this).parent().parent(".md-modal").removeClass("md-show");
	})
})
</script>
<style>
.user_profile_textArea {
    width: 100%;
    min-height: 600px;
    font-size: 20px;
}
.md-content > span {
    float: right;
    width: 50px;
    cursor: pointer;
    background-color: rgba(0,0,0,0.1);
    height: 49px;
    padding: 11px;
    padding-top: 16px;
    opacity: 0.8;
}
</style>
<div class="md-modal md-effect-1" id="modal-1">
	<div class="md-content">
		<span id="modal_close">닫기</span>
		<h3></h3>
		<div>
			<p>Edit User Profile</p>
			<ul>
				<li>
					<form action="<%=request.getContextPath()%>/product/update_user_profile.do?no=${ProductList.product_no}">
						<textArea id='user_profile' class='user_profile_textArea' name='user_profile'></textArea>
					</form>
				</li>
			</ul>
			<button class="edit_btn">Immediately Edit</button>
			<label style='font-size: 15px'>* 버튼 선택시 즉시 수정되므로 '수정 전'으로 되돌릴 수 없습니다.</label>
		</div>
	</div>
</div>
<div class="md-overlay"></div><!-- the overlay element -->
