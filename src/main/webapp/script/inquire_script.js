(function($){
$(document).ready(function(){

	var formObj = $("form[role='form']");

	console.log(formObj);

	$(".btn-warning")
			.on(
					"click",
					function() {
						self.location = "/list?page=${cri.page}&perPageNum=${cri.perPageNum}";
					});

	$(".btn-primary").on("click", function() {
		formObj.submit();
});

});

})(jQuery);

