<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- css 가져오기 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/modal/component.css" />
<script>
$(document).ready(function() {
	$(document).on("click", "#modal_close", function() {
		$(this).parent().parent(".md-modal").removeClass("md-show");
	})
	$(document).on("click", ".edit_btn", function() {
		$("#content_update_form").submit();
	})
})
</script>
<style>
.product_content_textArea {
	width: 100%;
    min-height: 40vh;
    font-size: 16px;
    max-height: 70vh;
}
.md-content > span {
    float: right;
    width: 50px;
    cursor: pointer;
    background-color: rgba(0, 0, 0, 0.62);
    height: 49px;
    padding: 11px;
    padding-top: 16px;
    opacity: 0.8;
}
</style>
<div class="md-modal md-effect-1" id="modal-2">
	<div class="md-content">
		<span id="modal_close">닫기</span>
		<h3></h3>
		<form id='content_update_form' action="<%=request.getContextPath()%>/partner/updateProductContent.do" method="post">
		<input type='hidden' class='product_no' name='product_no' value=''>
			<div>
					<p>Edit Product Content</p>
					<ul>
						<li>
							<textArea id='product_content' class='product_content_textArea' name='product_content'></textArea>
						</li>
					</ul>
					<button class="edit_btn">Immediately Edit</button>
					<label style='font-size: 15px'>* 버튼 선택시 즉시 수정되므로 '수정 전'으로 되돌릴 수 없습니다.</label>
			</div>
		</form>
	</div>
</div>
<div class="md-overlay"></div><!-- the overlay element -->
