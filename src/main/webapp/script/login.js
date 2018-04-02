$(document).ready(function() {
	$(document).on("mouseenter",".loginFormLi",function(){
		$(this).css("background-color","#71bafd");
	})
	$(document).on("mouseleave",".loginFormLi",function(){
		$(this).css("background-color","#000000");
	})
	
	$("#userLogin").click(function(){
		$("#userLogin").attr("class","loginFormLi_click");
		$("#businessLogin").attr("class","loginFormLi");
	})
	$("#businessLogin").click(function(){
		$("#businessLogin").attr("class","loginFormLi_click");
		$("#userLogin").attr("class","loginFormLi");
	})
});

$(document).ready(function() {
	$("#gnb").mouseenter(function(){
		$(".gnb-submenu-wrap").addClass("on");
	})
	$(".gnb-submenu-wrap").mouseleave(function(){
		$(".gnb-submenu-wrap").removeClass("on");
	})
});

function businessLogin_hide() {
	var objDiv = document.getElementById("company_in");
	var objDiv1 = document.getElementById("member_in");

	objDiv1.style.display = "none";

	if (objDiv.style.display == "block") {
	} else {
		objDiv.style.display = "block";
	}
}

function userLogin_hide() {
	var objDiv = document.getElementById("member_in");
	var objDiv1 = document.getElementById("company_in");

	objDiv1.style.display = "none";

	if (objDiv.style.display == "block") {
	} else {
		objDiv.style.display = "block";
	}
}

function login() {
	var loginForm = document.getElementById("login_wrap");

	if (loginForm.style.display == "none") {
		loginForm.style.display = "block";
	} else if (loginForm.style.display == "block") {
		loginForm.style.display = "none";
	}
}

$(document).ready(function(){
    var $move_width = parseInt($('.content').css('width'));
    var $content_box = $('.content_box');
     
     //루프(순환)
     function ani_1(){
         animation()
         setTimeout(ani_2,3000+10);
     };
     function ani_2(){
         animation()
         setTimeout(ani_1,3000+10);
     };
     ani_1();
 
  
  //로직
  function animation(){
      $content_box.children().first().stop()
      .animate({marginLeft:+$move_width},1000,"linear",function(){
        $(this).appendTo($(this).parent()).css ({marginLeft:0});
      });
  }
});