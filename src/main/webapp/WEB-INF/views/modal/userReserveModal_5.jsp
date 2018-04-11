<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- css 가져오기 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/modal/component.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/calendar/calendar.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/calendar/custom_1.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/calendar/demo.css" /> 
<script type="text/javascript" src="<%=request.getContextPath()%>/script/calendar/modernizr.custom.63321.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/calendar/jquery.calendario.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/calendar/data.js"></script>
<script> 
cal = null; 
$(document).ready(function() {
	$("#calc_cost").click(function() {
		$.ajax({
			url: '<%=request.getContextPath()%>/partner/findUserProfile',
			type : 'post',
			dataType : 'text',
			data: { "product_no": '1'},
			success : function(data) {
				var reservData = {'04-11-2018' : '<a href="http://tympanus.net/codrops/2012/11/14/creative-css-loading-animations/">Creative CSS Loading Animations</a>'}
				cal = $('#calendar').calendario({
								onDayClick : function($el, $contentEl, dateProperties) {
									for(var key in dateProperties) {
										console.log(key + ' = ' + dateProperties[key]);
									}
								},
								caldata : reservData
							}),
							$month = $('#custom-month').html(cal.getMonthName()),
							$year = $('#custom-year').html(cal.getYear());
			}
		})
	})
	$('#custom-next').on('click', function() {
		cal.gotoNextMonth(updateMonthYear);
	});
	$('#custom-prev').on('click', function() {
		cal.gotoPreviousMonth(updateMonthYear);
	});
	$('#custom-current').on('click', function() {
		$("#modal-5").removeClass("md-show")
	});
	function updateMonthYear() {            
		$month.html( cal.getMonthName() );
		$year.html( cal.getYear() );
	}


	$(document).on("click", "#modal_close", function() {
		$(this).parent().parent(".md-modal").removeClass("md-show");
	})
	$(document).on("click", ".edit_btn", function() {
		$("#content_update_form").submit();
	})
})
</script>
<style>
.md-modal {
    width: 100%;
    height: 100%;
}
</style>
<div class="md-modal md-effect-1" id="modal-5">
	<div class="container">	
		<!-- Codrops top bar -->
		<div class="custom-calendar-wrap custom-calendar-full">
			<div class="custom-header clearfix">
				<h2>Reservation <span></span></h2>
				<h3 class="custom-month-year">
					<span id="custom-month" class="custom-month"></span>
					<span id="custom-year" class="custom-year"></span>
					<nav>
						<span id="custom-prev" class="custom-prev"></span>
						<span id="custom-next" class="custom-next"></span>
						<span id="custom-current" class="custom-current" title="Got to current date"></span>
					</nav>
				</h3>
			</div>
			<div id="calendar" class="fc-calendar-container"></div>
		</div>
	</div><!-- /container -->
</div>
<div class="md-overlay"></div><!-- the overlay element -->
