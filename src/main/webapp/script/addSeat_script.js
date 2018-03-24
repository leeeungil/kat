jQuery(document).ready(function($) {
	// hide the menu when the page load
	$("#navigation-list").hide();
	// when .menuBtn is clicked, do this
	$(".btnSize").click(function() {
		// open the menu with slide effect
		$("#navigation-list").slideToggle(400);
	});
});

$(document).ready(function() {

	$(".companybtn").click(function() {
		$("#University_display1").hide();
		$("#University_display2").hide();
		$("#company_display").show();

	});
	$(".Universitybtn").click(function() {
		$("#University_display1").show();
		$("#University_display2").show();
		$("#company_display").hide();
	});
	$(".default").click(function() {
		$("#company_display").hide();
		$("#University_display1").hide();
		$("#University_display2").hide();
	});
});

// 클릭시 히든처리 사용안함
/*
 * function menuTabs(tabName) { var i; var x =
 * document.getElementsByClassName("Tabs"); for (i = 0; i < x.length; i++) {
 * x[i].style.display = "none"; } document.getElementById(tabName).style.display =
 * "block"; }
 */

$(document)
		.ready(
				function() {
					var fileTarget = $('.filebox .upload-hidden');

					fileTarget.on('change', function() {
						if (window.FileReader) {
							// 파일명 추출
							var filename = $(this)[0].files[0].name;
						} else {
							// Old IE 파일명 추출
							var filename = $(this).val().split('/').pop()
									.split('\\').pop();
						}
						;

						$(this).siblings('.upload-name').val(filename);
					});

					// preview image
					var imgTarget = $('.preview-image .upload-hidden');

					imgTarget
							.on(
									'change',
									function() {
										var parent = $(this).parent();
										parent.children('.upload-display')
												.remove();

										if (window.FileReader) {
											// image 파일만
											if (!$(this)[0].files[0].type
													.match(/image\//))
												return;

											var reader = new FileReader();
											reader.onload = function(e) {
												var src = e.target.result;
												parent
														.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'
																+ src
																+ '" class="upload-thumb"></div></div>');
											}
											reader
													.readAsDataURL($(this)[0].files[0]);
										} else {
											$(this)[0].select();
											$(this)[0].blur();
											var imgSrc = document.selection
													.createRange().text;
											parent
													.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

											var img = $(this).siblings(
													'.upload-display').find(
													'img');
											img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""
													+ imgSrc + "\")";
										}
									});
				});