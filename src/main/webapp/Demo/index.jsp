<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button").click(function() {
			if (this.id == 'btn1')
				document.location.href = '/controller/storeDetail.do';
			else if (this.id == 'btn2')
				document.location.href = '/controller/bookStore.do';
			else if (this.id == 'btn3')
				document.location.href = '/controller/review.do';
		});
	});
</script>
</head>
<body>

	<button id="btn1">음식점 상세 페이지</button>
	<button id="btn2">예약 페이지</button>
	<button id="btn3">리뷰 페이지</button>
	<button id="btn4">개인정보</button>
	<h1>hi github!</h1>

</body>
</html>