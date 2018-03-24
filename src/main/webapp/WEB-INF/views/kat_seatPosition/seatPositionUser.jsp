<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="asideSize_p">
	<div id="asideSize_add">
		<div id="redips-drag">
			<div id="tbl1html">
			</div>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$.ajax('<%=request.getContextPath()%>/uploadfile/position/${SeatListPhotoUser}', {
				success : function(data) {
					$('#tbl1html').append(data);
				}
			});
		});
	</script>
</div>