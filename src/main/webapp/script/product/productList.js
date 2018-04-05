$(document).ready(function(){
	$(document).on("click", ".product_relate_photo_table > tbody img", function(){
		var select_img_src = $(this).attr("src");
		if($(this).attr("class")=='blank_image') {
			alert('없는 이미지 입니다.')
		} else { 
			$(".product_relate_photo_table > thead img").attr("src", select_img_src)		
		}
	})

	$(document).on("click","#calc_cost",function(){
		$(".calc_result").show();
		var people = $("#people_number").val();
		var product_cost = $("#product_cost").attr("class");
		var htmlCostResult = "<div><font>경비 계산 결과</font></div>"
							 + "<div><font>"+people+" X "+product_cost+"</font><font class='second_line_font'>₩"+(people * product_cost)+"</font></div>"
							 + "<div class='non_border reserve_btn_wrap'><button class='calc_cost reserve_btn'>예약하기</button></div>";
	 	$(".calc_result").html(htmlCostResult)
	})
})