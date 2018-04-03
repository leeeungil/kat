$(document).ready(function(){
	$(".product_choice_btn > div").on("click",function(){
		$(".product_choice_btn > div").css("background-color","#000000");
	})
	
	$(document).on("click",".total_btn",function(){
		$(this).css("background-color","#3f3f3f");
		$(".product_1").show();
		$(".product_2").show();
		$(".product_3").show();
		$(".product_4").show();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".product_1").css("transform", "scale(1.0)");
			$(".product_2").css("transform", "scale(1.0)");
			$(".product_3").css("transform", "scale(1.0)");
			$(".product_4").css("transform", "scale(1.0)");
		}, 300);
	})
	$(document).on("click",".tour_btn",function(){
		$(this).css("background-color","#0084fe");
		$(".product_1").show();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".product_1").css("transform", "scale(1.0)");
			$(".product_2").hide();
			$(".product_3").hide();
			$(".product_4").hide();
		}, 300);
	})
	$(document).on("click",".shuttle_btn",function(){
		$(this).css("background-color","#ffa500");
		$(".product_2").show();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".product_1").hide();
			$(".product_2").css("transform", "scale(1.0)");
			$(".product_3").hide();
			$(".product_4").hide();
		}, 300);
	})
	$(document).on("click",".ticket_btn",function(){
		$(this).css("background-color","#29a600");
		$(".product_3").show();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".product_1").hide();
			$(".product_2").hide();
			$(".product_3").css("transform", "scale(1.0)");
			$(".product_4").hide();
		}, 300);
	})
	$(document).on("click",".snap_btn",function(){
		$(this).css("background-color","#ff0000");
		$(".product_4").show();
		$(".product_1").css("transform", "scale(0.0)");
		$(".product_2").css("transform", "scale(0.0)");
		$(".product_3").css("transform", "scale(0.0)");
		$(".product_4").css("transform", "scale(0.0)");
		setTimeout(function() {
			$(".product_1").hide();
			$(".product_2").hide();
			$(".product_3").hide();
			$(".product_4").css("transform", "scale(1.0)");
		}, 300);
	})
})