<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="asideSize_p">
	<div id="asideSize_add">
		<form method="post" name="htmlfile" id="htmlsave">
			<button onclick="myFunction()" value="" name="htmlfilevalue"
				id="btnhover">저장</button>
		</form>
		<div id="redips-drag">
			<div id="tbl1html">
				<table class="tbl1">
					<tbody>
						<tr>
							<th colspan="13" class="redips-mark">매장 좌석 위치</th>
						</tr>
						<tr class="rl">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr class="rl">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr class="rl">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr class="rl">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr class="rl">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr class="rl">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr class="rl">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr class="rl">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr class="rl">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="aside">
				<span id="Seat_list"> ※ 등록된 좌석</span>
				<table class="tbl2">
					<tr class="rl">
						<td>
							<div class="redips-drag blue">
								<img alt="이미지 없음" id="photoPosition"
									src="<%=request.getContextPath()%>/uploadfile/memberphoto/Door-icon.png">
							</div>
						</td>

						<c:forEach var="seatphoto"
							items="${SeatListPhoto.getSeatInfoList()}">

							<td>
								<div class="redips-drag blue">
									<img alt="이미지 없음" id="photoPosition"
										src="<%=request.getContextPath()%>/uploadfile/memberphoto/${seatphoto.file_seatphoto}">
									인원수 ${seatphoto.file_seat}
								</div>
							</td>
						</c:forEach>
					</tr>

				</table>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		function myFunction() {
			var x = document.getElementById("tbl1html").innerHTML;
			document.getElementById("demo").innerHTML = x;
			document.htmlfile.htmlfilevalue.value = x;
		}
	</script>
</div>

<p id="demo"></p>