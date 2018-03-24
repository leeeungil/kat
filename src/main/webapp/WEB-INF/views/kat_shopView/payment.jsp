<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약 결제 창</title>

<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

#payment_table {
	border: 1px solid #8C8C8C;
	width: 500px;
	height: 500px;
	text-align: center;
}

#payment_table td {
	border: 1px solid #8C8C8C;
}

#size_1 {
	height: 10%;
}

#size_2 {
	height: 40%;
}

#size_3 {
	height: 30%;
}

#size_4 {
	height: 20%;
}

#payment {
	padding: 5px 10px 5px 10px;
	margin: 5px;
	color: #fff;
	background-color: #16bab4;
	border-color: #16bab4;
	display: inline-block;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	cursor: pointer;
	border-radius: .25em;
	width: 100px;
}
</style>

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	function paymentclose() {
		
		 $.ajax({
		        url:'<%=request.getContextPath()%>/shopInfoSeat/AjaxpaymentController.do',
					data : 'seatno=${chkseat.chkno}',

					success : function(data) {

						$("#payment").val(data);

						chkcomplete();
					}
				});
	}

	
	function chkcomplete() {
		var resultnum = document.getElementById("payment").value;

		if (resultnum == 1) {
			alert("예약 되었습니다. 감사합니다.");
			self.close();
			window.opener.routnormality();
			alert("처리중입니다. 확인을 누른후 잠시만 기다려주세요");
		} else if (resultnum == 2) {
			alert("예약 가능 여부를 확인해주세요!");
			self.close();
			window.opener.routback();
		} else {
			alert("잘못된 경로입니다. 처음으로 돌아갑니다.");
			self.close();
			window.opener.routemain();
		}
	}
	
</script>

</head>
<body>
	<table id="payment_table">
		<tr id="size_1">
			<td>결제 하기</td>
		</tr>
		<tr id="size_2">
			<td>
				<p>kat은 웹판매중개자로서 오픈마켓</p>
				<p>kat의 거래당사자가 아니며,</p>
				<p>입점판매자가 등록한 상품정보 및 거래에 대해</p>
				<p>kat은 일체의 책임을 지지 않습니다.</p>
			</td>
		</tr>
		<tr id="size_3">
			<td>
				<p>예약금 [ 5000원 ]</p>
			</td>
		</tr>
		<tr id="size_4">
			<td><button type="button" name="ch" id="payment"
					onclick="paymentclose();" value="0">최종결제</button></td>
		</tr>
	</table>
</body>
</html>
