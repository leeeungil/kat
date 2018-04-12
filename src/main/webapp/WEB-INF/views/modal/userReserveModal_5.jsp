<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- css 가져오기 -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/modal/component.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/calendar/calendar.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/calendar/custom_1.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/script/calendar/modernizr.custom.63321.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/calendar/jquery.calendario.js"></script>
<script> 
$(document).ready(function() {
	test = [];
	$.ajax({
		url: '<%=request.getContextPath()%>/reserv/selectReservList',
		type : 'post',
		dataType : 'json',
		data: { "product_no": $("#product_no").val()},
		success : function(data) {
			var max_people = $("#max_people").val();
			var dataLength = data.length;
			var now = new Date();
			var year= now.getFullYear();
			var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
			var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
			$("#modal-5 h2").html("최대"+max_people+"명까지 예약 가능합니다.")
			for(i=0; i<dataLength; i++) {
				emptyPeople = max_people - data[i].reserv_count;
				convertDate = data[i].daily.split('-');
				reDate = convertDate[1]+"-"+convertDate[2]+"-"+convertDate[0];
				var json = {};
				if(convertDate[0] < year || (convertDate[0] == year && convertDate[1] < mon)
						|| (convertDate[0] == year && convertDate[1] == mon && convertDate[2] < day) ) {
				} else if(convertDate[0] < year || (convertDate[0] == year && convertDate[1] < mon)
						|| (convertDate[0] == year && convertDate[1] == mon && convertDate[2]==day) ) {
					$(".fc-date")
					json[reDate] = '<a> 당일 예약시 <p>직접 문의해주세요. </a>';
				} else {
					if(emptyPeople >= 1){
						var resultComment = '<span>'+emptyPeople+'명 남음 </span>';
						json[reDate] = resultComment;
					} else if (emptyPeople == 0) {
						json[reDate] = '<a>예약 끝</a>';
					}
				}
				test.push(json);
				if($(".fc-row > div").attr("class")!='fc-content') {
					$(".fc-row > div").append("djalsdj;flasd")
				}
			}
		}, error: function() {
			alert('error')
		}
	})
	$("#start_date_picker").click(function() {
		cal = $('#calendar').calendario({
							onDayClick : function($el, $contentEl, dateProperties) {
								for(var key in dateProperties) {
									console.log(key + ' = ' + dateProperties[key]);
								}   
							}
						}),
						$month = $('#custom-month').html(cal.getMonthName()),
						$year = $('#custom-year').html(cal.getYear());
		
		for(var i=0; i<test.length; i++){
			cal.setData(test[i]);
		}
	});
	
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
	$(document).on("click", ".fc-calendar .fc-row > div", function() {
		var selectYear = cal.getYear();
		var selectMonth = cal.getMonth();
		var selectDay = $(this).children(".fc-date").html();
		if($(this).children("div").children("a").length) {
			alert("다른 날짜를 선택해주세요.")			
		} else {
			$("#start_date_picker").val(selectYear+"-"+selectMonth+"-"+selectDay)
			$("#modal-5").removeClass("md-show")
		}
		/* var htmlCode = "<div class='choice'>"
					+ "<button class='plus su_btn'>+</button>"
					+ "<label class='su'>1</label>"
					+ "<button class='minus su_btn'>-</button>"
					+"</div>"
		$(".choice").remove();
		$(this).append(htmlCode) */
	})
	/* $(document).on("mouseleave", ".fc-calendar .fc-row > div > div", function() {
		$(".choice").remove();
	}) */

	$(document).on("click", "#modal_close", function() {
		$(this).parent().parent(".md-modal").removeClass("md-show");
	})
	$(document).on("click", ".edit_btn", function() {
		$("#content_update_form").submit();
	})
})
</script>
<style>
#modal-5 {
	overflow-y: overlay;
	top: 47%!important;
}
/* .choice {
	background-color: #000000;
    padding: 10px 15px;
    z-index: 9999;
    border-radius: 6px;
    position: fixed;
    margin-top: 10px;
    margin-left: -8px;
}
.su_btn {
	padding: 2px;
    width: 32px;
    border-radius: 20px;
    font-size: 25px;
    border: 0px solid;
    background-color: #ffffff;
}
.su {
    font-size: 25px;
    color: #ffffff;
    padding: 0 12px;	
} */
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
				<h2></h2>
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
