<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- 메인 부분 -->
<div id="main">
	<section>
		<article id="article_main">
			<div class="service">
				<div class="wrap_div">
					<ul class="total_Ul">
						<li class="total_Li">
							<div><font></font></div>
						</li>
					</ul>
					<ul class="siteTotal">
						<li class="sitem1">
							<div class="wrap">
								<a href="<%=request.getContextPath()%>/kat_main.do">
									<img class="siteImage" src="<%=request.getContextPath()%>/img/hotelroom-2205447_640.jpg">
			                    </a>
							</div>
						</li>
						<li class="sitem1">
							<a href="<%=request.getContextPath()%>/kat_main.do">
								<img class="siteImage" src="<%=request.getContextPath()%>/img/costa-rica-shuttle-service-1619362_640.jpg">
							</a>
						</li>
						<li class="sitem1">
							<a href="<%=request.getContextPath()%>/kat/tourMain/tour.do">
								<img class="siteImage" src="<%=request.getContextPath()%>/img/city-3142651_640.jpg">
							</a>
						</li>
						<li class="sitem1">
							<a href="<%=request.getContextPath()%>/kat_main.do">
								<img class="siteImage" src="<%=request.getContextPath()%>/img/admission-2974645_640.jpg">
							</a>
						</li>
					</ul>
				</div>
			</div>
           
			<!-- Traveler Review -->
			<div class="ReviewBox"	>
				<ul class="review1" id="review1"><li>후기</li></ul>
				<ul id="content-slider3" class="content-slider3">
					<li style="text-align:center; margin-left:51px;">
						<c:forEach var="review" items="${ListInfoReview.getMainreviewList()}" varStatus="status">
						<div class="a1">
							<span>${review.review_title}</span>
							<div class="map_i">
							</div>
							<div class="review_i">
								<table>
									<tbody><tr>
										<td style="font-size: 12px; text-align: right;"><fmt:formatDate pattern="yyyy-MM-dd" value="${review.regdate}"/></td>
									</tr>
									<tr>
										<td style="font-size: 14px; text-align: left;">${review.user_id}</td>
										<td style="font-size: 14px; text-align: left;">${review.review_point}</td>
									</tr>
									<tr>
										<td style="font-size: 12px; text-align: left;">${review.review_content}</td>
									</tr></tbody>
								</table>
							</div>
						</div>
						</c:forEach>
					</li>
				</ul>
			</div>
		</article>
	</section>
</div>

<script type="text/javascript">
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("mainSlider");
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
</script> 