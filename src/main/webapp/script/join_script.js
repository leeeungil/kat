function checkBox(f) {

	if (f.agree.checked == false) {
		alert('동의하지 않으면 다음으로 이동할수 없습니다.');
		return false;
	}
	return true;

}

$(document).ready(function() {

	$(".memberbtn").click(function() {
		$("#business_display1").hide();
		$("#business_display2").hide();
		$("#business_display3").hide();
		$("#business_display4").hide();
	});

	$(".businessbtn").click(function() {
		$("#business_display1").show();
		$("#business_display2").show();
		$("#business_display3").show();
		$("#business_display4").show();
	});
});
