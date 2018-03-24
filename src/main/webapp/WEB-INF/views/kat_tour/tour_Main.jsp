<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%-- <section>
<article id="article_main">
<div class="service">
<div id="container">
<!-- 아시아 -->

<ul class="dropdown">
        <li><a class="dropbtn" onclick="myFunction1()">대한민국</a></li>
        <li><a class="dropbtn" onclick="myFunction2()">일본</a></li>  
	    <li><a class="dropbtn" onclick="myFunction3()">중국</a></li>
	    <li><a class="dropbtn" onclick="myFunction4()">태국</a></li>
</ul>
	    <div id="myDropdown1" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 || loop.index%2==0 }">	
            <c:if test="${menu.menu_loc=='아시아' && menu.menu_nation=='1' }">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			<c:otherwise></c:otherwise>
			</c:choose>
			</c:forEach>
	    </div>
	    <div id="myDropdown2" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 || loop.index%2==0 }">	
            <c:if test="${menu.menu_loc=='아시아' && menu.menu_nation=='2'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
	    <div id="myDropdown3" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">	
            <c:if test="${menu.menu_loc=='아시아' && menu.menu_nation=='3'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
	    <div id="myDropdown4" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
            <c:if test="${menu.menu_loc=='아시아' && menu.menu_nation=='4'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
</div>

 

<div id="container2">${allCount}  
   <!-- 유럽 -->
      <ul class="dropdown">
        <li><a class="dropbtn" onclick="myFunction5()">독일</a></li>
        <li><a class="dropbtn" onclick="myFunction6()">스페인</a></li>  
	    <li><a class="dropbtn" onclick="myFunction7()">프랑스</a></li>
	    <li><a class="dropbtn" onclick="myFunction8()">체코</a></li>
     </ul>
	    <div id="myDropdown5" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
              <c:if test="${menu.menu_loc=='유럽' && menu.menu_nation=='5'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
		</div>
	    <div id="myDropdown6" class="dropdown-content" style="width:1200px;">
	  
           <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
          <c:choose>
			 <c:when test="${loop.count%3==0 }">
			  
              <c:if test="${menu.menu_loc=='유럽' && menu.menu_nation=='6'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			 </c:if>
		 </c:when>
		 </c:choose>
		  </c:forEach>  
		
	    </div>
	    <div id="myDropdown7" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
            <c:if test="${menu.menu_loc=='유럽' && menu.menu_nation=='7'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
	    <div id="myDropdown8" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop" >
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
            <c:if test="${menu.menu_loc=='유럽' && menu.menu_nation=='8'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
</div>

 
 
 
   <div id="container3">
   <!-- 남미 -->
      <ul class="dropdown">
        <li><a class="dropbtn" onclick="myFunction9()">브라질</a></li>
        <li><a class="dropbtn" onclick="myFunction10()">아르헨티나</a></li>  
	    <li><a class="dropbtn" onclick="myFunction11()">칠레</a></li>
	    <li><a class="dropbtn" onclick="myFunction12()">온두라스</a></li>
     </ul>
	    <div id="myDropdown9" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
              <c:if test="${menu.menu_loc=='남미' && menu.menu_nation=='9'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
		</div>
	    <div id="myDropdown10" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
            <c:if test="${menu.menu_loc=='남미' && menu.menu_nation=='10'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
	    <div id="myDropdown11" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
			  <c:if test="${menu.menu_loc=='남미' && menu.menu_nation=='11'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
	    <div id="myDropdown12" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0}">
            <c:if test="${menu.menu_loc=='유럽' && menu.menu_nation=='12'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
   </div>
<!-- 북미 -->
<div id="container4">
<ul class="dropdown">
        <li><a class="dropbtn" onclick="myFunction13()">미국</a></li>
        <li><a class="dropbtn" onclick="myFunction14()">미국</a></li>  
	    <li><a class="dropbtn" onclick="myFunction15()">미국</a></li>
	    <li><a class="dropbtn" onclick="myFunction16()">캐나다</a></li>
     </ul>
	    <div id="myDropdown13" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
              <c:if test="${menu.menu_loc=='북미' && menu.menu_nation=='13'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
		</div>
	    <div id="myDropdown14" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
            <c:if test="${menu.menu_loc=='북미' && menu.menu_nation=='13'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
	    <div id="myDropdown15" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
            <c:if test="${menu.menu_loc=='북미' && menu.menu_nation=='13'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
	    <div id="myDropdown16" class="dropdown-content" style="width:1200px;">
            <c:forEach var="menu" items="${menuListInfo.getMenuInfoList()}" varStatus="loop">
            <c:choose>	
			  <c:when test="${loop.index%3==0 }">
            <c:if test="${menu.menu_loc=='북미' && menu.menu_nation=='14'}">
	          <a href="<%=request.getContextPath()%>/kat/tourMain/tour.do"><img alt="이미지 없음" id="menu_size" style="height:50px; background-color:#D8D8D8; height:300px; width:400px; text-align:center;" src="<%=request.getContextPath()%>/uploadfile/menuphoto/${menu.file_menuphoto}">${menu.menu_name}<br><br><br></a>
			</c:if>
			</c:when>
			</c:choose>
			</c:forEach>
	    </div>
  </div>
</div>
</article>
</section>
</div>
<br>
<br>
<br>


<script type="text/javascript">

 function myFunction1() {
	 var info1 = document.getElementById("myDropdown1");
	 var info2 = document.getElementById("myDropdown2");
	 var info3 = document.getElementById("myDropdown3");
	 var info4 = document.getElementById("myDropdown4");
	 
	 info1.classList.toggle('show');
	 
	 if(info1.classList.contains('show')){
		 info2.classList.remove('show');
		 info3.classList.remove('show');
		 info4.classList.remove('show');
	 }
 }
 function myFunction2() {
	 var info1 = document.getElementById("myDropdown1");
	 var info2 = document.getElementById("myDropdown2");
	 var info3 = document.getElementById("myDropdown3");
	 var info4 = document.getElementById("myDropdown4");
	 
	 info2.classList.toggle('show');
	 
	 if(info2.classList.contains('show')){
		 info1.classList.remove('show');
		 info3.classList.remove('show');
		 info4.classList.remove('show');
	 }
 }
 function myFunction3() {
	 var info1 = document.getElementById("myDropdown1");
	 var info2 = document.getElementById("myDropdown2");
	 var info3 = document.getElementById("myDropdown3");
	 var info4 = document.getElementById("myDropdown4");
	 
	 info3.classList.toggle('show');
	 
	 if(info3.classList.contains('show')){
		 info1.classList.remove('show');
		 info2.classList.remove('show');
		 info4.classList.remove('show');
	 }
 }
 function myFunction4() {
	 var info1 = document.getElementById("myDropdown1");
	 var info2 = document.getElementById("myDropdown2");
	 var info3 = document.getElementById("myDropdown3");
	 var info4 = document.getElementById("myDropdown4");
	 
	 info4.classList.toggle('show');
	 
	 if(info4.classList.contains('show')){
		 info1.classList.remove('show');
		 info2.classList.remove('show');
		 info3.classList.remove('show');
	 }
 }
 function myFunction5() {
	 var info5 = document.getElementById("myDropdown5");
	 var info6 = document.getElementById("myDropdown6");
	 var info7 = document.getElementById("myDropdown7");
	 var info8 = document.getElementById("myDropdown8");
	 
	 info5.classList.toggle('show');
	 
	 if(info5.classList.contains('show')){
		 info6.classList.remove('show');
		 info7.classList.remove('show');
		 info8.classList.remove('show');
	 }
 }
 function myFunction6() {
	 var info5 = document.getElementById("myDropdown5");
	 var info6 = document.getElementById("myDropdown6");
	 var info7 = document.getElementById("myDropdown7");
	 var info8 = document.getElementById("myDropdown8");
	 
	 info6.classList.toggle('show');
	 
	 if(info6.classList.contains('show')){
		 info5.classList.remove('show');
		 info7.classList.remove('show');
		 info8.classList.remove('show');
	 }
 }
 function myFunction7() {
	 var info5 = document.getElementById("myDropdown5");
	 var info6 = document.getElementById("myDropdown6");
	 var info7 = document.getElementById("myDropdown7");
	 var info8 = document.getElementById("myDropdown8");
	 
	 info7.classList.toggle('show');
	 
	 if(info7.classList.contains('show')){
		 info5.classList.remove('show');
		 info6.classList.remove('show');
		 info8.classList.remove('show');
	 }
 }
 function myFunction8() {
	 var info5 = document.getElementById("myDropdown5");
	 var info6 = document.getElementById("myDropdown6");
	 var info7 = document.getElementById("myDropdown7");
	 var info8 = document.getElementById("myDropdown8");
	 
	 info8.classList.toggle('show');
	 
	 if(info8.classList.contains('show')){
		 info5.classList.remove('show');
		 info6.classList.remove('show');
		 info7.classList.remove('show');
	 }
 }
 function myFunction9() {
	 var info9 = document.getElementById("myDropdown9");
	 var info10 = document.getElementById("myDropdown10");
	 var info11 = document.getElementById("myDropdown11");
	 var info12 = document.getElementById("myDropdown12");
	 
	 info9.classList.toggle('show');
	 
	 if(info9.classList.contains('show')){
		 info10.classList.remove('show');
		 info11.classList.remove('show');
		 info12.classList.remove('show');
	 }
 }
 function myFunction10() {
	 var info9 = document.getElementById("myDropdown9");
	 var info10 = document.getElementById("myDropdown10");
	 var info11 = document.getElementById("myDropdown11");
	 var info12 = document.getElementById("myDropdown12");
	 
	 info10.classList.toggle('show');
	 
	 if(info10.classList.contains('show')){
		 info9.classList.remove('show');
		 info11.classList.remove('show');
		 info12.classList.remove('show');
	 }
 }
 function myFunction11() {
	 var info9 = document.getElementById("myDropdown9");
	 var info10 = document.getElementById("myDropdown10");
	 var info11 = document.getElementById("myDropdown11");
	 var info12 = document.getElementById("myDropdown12");
	 
	 info11.classList.toggle('show');
	 
	 if(info11.classList.contains('show')){
		 info9.classList.remove('show');
		 info10.classList.remove('show');
		 info12.classList.remove('show');
	 }
 }
 function myFunction12() {
	 var info9 = document.getElementById("myDropdown9");
	 var info10 = document.getElementById("myDropdown10");
	 var info11 = document.getElementById("myDropdown11");
	 var info12 = document.getElementById("myDropdown12");
	 
	 info12.classList.toggle('show');
	 
	 if(info12.classList.contains('show')){
		 info9.classList.remove('show');
		 info10.classList.remove('show');
		 info11.classList.remove('show');
	 }
 } 
 function myFunction13() {
	 var info13 = document.getElementById("myDropdown13");
	 var info14 = document.getElementById("myDropdown14");
	 var info15 = document.getElementById("myDropdown15");
	 var info16 = document.getElementById("myDropdown16");
	 
	 info13.classList.toggle('show');
	 
	 if(info13.classList.contains('show')){
		 info14.classList.remove('show');
		 info15.classList.remove('show');
		 info16.classList.remove('show');
	 }
 }
 function myFunction14() {
	 var info13 = document.getElementById("myDropdown13");
	 var info14 = document.getElementById("myDropdown14");
	 var info15 = document.getElementById("myDropdown15");
	 var info16 = document.getElementById("myDropdown16");
	 
	 info14.classList.toggle('show');
	 
	 if(info14.classList.contains('show')){
		 info13.classList.remove('show');
		 info15.classList.remove('show');
		 info16.classList.remove('show');
	 }
 }
 function myFunction15() {
	 var info13 = document.getElementById("myDropdown13");
	 var info14 = document.getElementById("myDropdown14");
	 var info15 = document.getElementById("myDropdown15");
	 var info16 = document.getElementById("myDropdown16");
	 
	 info15.classList.toggle('show');
	 
	 if(info15.classList.contains('show')){
		 info13.classList.remove('show');
		 info14.classList.remove('show');
		 info16.classList.remove('show');
	 }
 }
 function myFunction16() {
	 var info13 = document.getElementById("myDropdown13");
	 var info14 = document.getElementById("myDropdown14");
	 var info15 = document.getElementById("myDropdown15");
	 var info16 = document.getElementById("myDropdown16");
	 
	 info16.classList.toggle('show');
	 
	 if(info16.classList.contains('show')){
		 info13.classList.remove('show');
		 info14.classList.remove('show');
		 info15.classList.remove('show');
	 }
 } 
 
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("Slides");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
		x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 4000);
	}

	/* 대륙선택 */

	function area_select(area) {
		var objDiv1 = area;
		var area_style = document.getElementById("choice");

		document.getElementById("choice").value = objDiv1;
		area_style.style.color = "#fff";
		area_style.style.backgroundColor = "#16bab4";
	}
	
	
	/* 메뉴 값 선택 */

	function menu_select(menu) {
		var objDiv1 = menu;
		var area_style = document.getElementById("choice_1");

		document.getElementById("choice_1").value = objDiv1;
		area_style.style.color = "#fff";
		area_style.style.backgroundColor = "#16bab4";

	}

	/*대륙/ 메뉴 / 지역 / 키워드 히든처리 */

	function area_hide() {
		var objDiv = document.getElementById("area"); //대륙
		var objDiv1 = document.getElementById("menu"); //메뉴

		objDiv1.style.display = "none"; //메뉴 none;

		
		if (objDiv.style.display == "block") {
			objDiv.style.display = "none";
		} else {
			objDiv.style.display = "block";
		}
	}
	

	

	function menu_hide() {
		var objDiv1 = document.getElementById("menu");
		var objDiv = document.getElementById("area");
		

		objDiv.style.display = "none";
	
		if (objDiv1.style.display == "block") {
			objDiv1.style.display = "none";
		} else {
			objDiv1.style.display = "block";
		}

	}

	function key_hide() {
		var objDiv1 = document.getElementById("menu");
		var objDiv = document.getElementById("area1");
		var objDiv2 = document.getElementById("area2");

		objDiv1.style.display = "none";
		objDiv.style.display = "none";
		objDiv2.style.display = "none";

	}

	$(document).ready(function() {
		$("#content-slider").lightSlider({
			loop : true,
			keyPress : true
		});

	});

	$(document).ready(function() {
		$("#content-slider2").lightSlider({
			loop : true,
			keyPress : true
		});

	});
</script> --%>

 
 <!---------------------------------------------------------------- 새로 작업 ------------------------------------------------------------------>
<section>
<article>
<div class="serviceq">
<div class="container" style="overflow:hidden; margin:10px auto;">
<div class="content_box" style="height:600px; width:1600px; float:left;">
	<div class="content" style="float:left; width:0px; height:600px; box-sizing:border-box;">
	   <img src="<%=request.getContextPath()%>/img/car-2564391_1920.jpg" style="width: 1600px; height: 600px;">
	</div>
	<div class="content" style="float:left; width:1600px; height:600px; box-sizing:border-box;">
	   <img src="<%=request.getContextPath()%>/img/airport-2373727_1920.jpg" style="width: 1600px; height: 600px;">
	</div>
	<div class="content" style="float:left; width:1600px; height:600px; box-sizing:border-box;">
	   <img src="<%=request.getContextPath()%>/img/passenger-362169_1920.jpg" style="width: 1600px; height: 600px;">
	</div>
	<div class="content" style="float:left; width:1600px; height:600px; box-sizing:border-box;">
	   <img src="<%=request.getContextPath()%>/img/car-2564391_1920.jpg" style="width: 1600px; height: 600px;">
	</div>
</div>
</div>
<!-- <div id="imgtext"><img src="" width="500px"></div>  -->
<div id="hd">
    <div id="gnb">
    <ul>
    <li class="menu1"><a href="#">로마</a></li>
    <li class="menu2"><a href="#">바르셀로나</a></li>
    <li class="menu3"><a href="#">파리</a></li>
    <li class="menu4"><a href="#">오사카</a></li>
    <li class="menu5"><a href="#">샌프란시스코</a></li>
    <li class="menu6"><a href="#"><strong>전체 도시 보기</strong></a>
       <dl class="dropdown">
         <dd>
            <a href="#"><img src="<%=request.getContextPath()%>/img/kr.png" class="flag"><span>대한민국</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/jp.png" class="flag"><span>일본</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/cn.png" class="flag"><span>중국</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/my.png" class="flag"><span>말레이시아</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/ph.png" class="flag"><span>필리핀</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/ph.png" class="flag"><span>필리핀</span></a>
         </dd>
         <dd>
            <a href="#"><img src="<%=request.getContextPath()%>/img/gb.png" class="flag"><span>영국</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/fr.png" class="flag"><span>프랑스</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/es.png" class="flag"><span>스페인</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/it.png" class="flag"><span>이탈리아</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/cl.png" class="flag"><span>체코</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/cl.png" class="flag"><span>체코</span></a>
         </dd>
         <dd>
            <a href="#"><img src="<%=request.getContextPath()%>/img/us.png" class="flag"><span>미국</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/ca.png" class="flag"><span>캐나다</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/ba.png" class="flag"><span>브라질</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/ar.png" class="flag"><span>아르헨티나</span></a>
            <a href="#"><img src="<%=request.getContextPath()%>/img/uy.png" class="flag"><span>우루과이</span></a>
         </dd>
       </dl>
       </li>
    </ul>
    </div>    
	    <div id="friendkakao">
		   <img src="<%=request.getContextPath()%>/img/plusfriend.png"><br><br><span>유어플랫폼 카카오톡 실시간 문의</span><br><br>
		   <span>유어 플랫폼 플러스 친구를 이용한 카카오톡 문의가 가능하며, 숙소 서비스 관련 문의는 고객센터를 이용해주세요</span>
	   </div>
</div>
</div>

</article>
</section>

<br>
<br>
<br>
