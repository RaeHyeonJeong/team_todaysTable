<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Directory Theme by Bootstrapious</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Price Slider Stylesheets -->
<link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<!--  Google fonts - Poppins-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
<!-- swiper-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
<!-- Magnigic Popup-->
<link rel="stylesheet" href="resources/vendor/magnific-popup/magnific-popup.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="resources/css/style.default.css" id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="resources/css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="resources/img/favicon.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- Font Awesome CSS-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<style type="text/css">
div.row2 { -
	-bs-gutter-x: 1.5rem; -
	-bs-gutter-y: 0;
	display: flex;
	flex-wrap: wrap;
	margin-top: calc(var(- -bs-gutter-y)* -1);
	margin-right: calc(var(- -bs-gutter-x)* -.5);
	margin-left: calc(var(- -bs-gutter-x)* -.5);
	justify-content: space-evenly;
}
</style>
</head>
<body style="padding-top: 72px;">
	<!-- HEADER include -->
	<jsp:include page="subHeader.jsp" />
	<section class="py-5">
		<div class="container">
			<div class="row2">
				<div class="col-lg-3 me-lg-auto">
					<div class="card border-0 shadow mb-6 mb-lg-0">
						<div class="card-header bg-gray-100 py-4 border-0 text-center">
							<a class="d-inline-block" href="#">
								<img class="d-block avatar avatar-xxl p-2 mb-2" src="resources/img/avatar/avatar-10.jpg" alt="">
							</a>
							<h5>조유주</h5>
							<p class="text-muted text-sm mb-0">유주</p>
						</div>
						<div class="card-body p-4">
							<div class="d-flex align-items-center mb-3">
								<div class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
									<svg class="svg-icon text-primary svg-icon-md"> <!-- 리뷰 아이콘 모양자체 -->
                      <use xlink:href="#diploma-1"> </use>
                    </svg>
								</div>
								<div>
									<p class="mb-0">리뷰 12개</p>
								</div>
							</div>
							<hr>
							<h6>예약 내역 관리</h6>
							<ul class="card-text text-muted">
								<li>예약 내역 확인</li>
								<li>예약 수정</li>
								<li>예약 취소</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-9 ps-lg-5">
					<h2 class="hero-heading mb-0">예약 확인</h2>
					<div class="d-flex d-block d-sm-flex review ">
						<table width="700px" cellpadding="10">
							<colgroup>
								<col width="20%">
								<col width="60%">
								<col width="20%">
							</colgroup>
							<tr>
								<td scope="col" colspan="3" style="background: gray">현재 예약중</td>
							</tr>
							<tr>
								<td scope="col" align="center">1</td>
								<td scope="col"><p>청초수물회</p>
									<p>
										<span style="color: gray; font-size: 10pt">결제 날짜 : 2021.08.12<br> 예약 날짜 : 2021.08.14
										</span>
									</p></td>
								<td scope="col">
									<button class="btn btn-outline-primary mb-4" type="submit" id="bookingModify1" name="bookingModify1" onclick.location="'예약 수정 페이지';">
										예약 수정
										<!-- 예약 수정 페이지로 이동 예정 -->
									</button> <br>
									<button class="btn btn-outline-primary mb-4" type="submit" id="bookingCancel1" name="bookingCancel1" onClick="location.href='booking-cancel.jsp'">예약 취소</button>
								</td>
							</tr>
							<tr>
								<td scope="col" align="center">2</td>
								<td scope="col"><p>강릉 한옥집</p>
									<p>
										<span style="color: gray; font-size: 10pt">결제 날짜 : 2021.09.01<br> 예약 날짜 : 2021.09.10
										</span>
									</p></td>
								<td scope="col">
									<button class="btn btn-outline-primary mb-4" type="submit" id="bookingModify2" name="bookingModify2" onclick.location="'예약 수정 페이지';">
										예약 수정
										<!-- 예약 수정 페이지로 이동 예정 -->
									</button> <br>
									<button class="btn btn-outline-primary mb-4" type="submit" id="bookingCancel2" name="bookingCancel2" onClick="location.href='booking-cancel.jsp'">예약 취소</button>
								</td>
							</tr>
							<tr>
								<td scope="col" align="center">3</td>
								<td scope="col"><p>포폴로 피자</p>
									<p>
										<span style="color: gray; font-size: 10pt">결제 날짜 : 2021.09.03<br> 예약 날짜 : 2021.09.25
										</span>
									</p></td>
								<td scope="col">
									<button class="btn btn-outline-primary mb-4" type="submit" id="bookingModify3" name="bookingModify3" onclick.location="'예약 수정 페이지';">
										예약 수정
										<!-- 예약 수정 페이지로 이동 예정 -->
									</button> <br>
									<button class="btn btn-outline-primary mb-4" type="submit" id="bookingCancel3" name="bookingCancel3" onClick="location.href='booking-cancel.jsp'">예약 취소</button>
								</td>
							</tr>
							<tr>
								<td scope="col" colspan="3" style="background: gray">예약 취소 내역</td>
							</tr>
							<tr>
								<td scope="col" align="center">1</td>
								<td scope="col"><p>심학산 도토리</p>
									<p>
										<span style="color: gray; font-size: 10pt">결제 날짜 : 2021.05.23<br> 예약 날짜 : 2021.05.25
										</span>
									</p></td>
								<td scope="col">&emsp;</td>
							</tr>
							<tr>
								<td scope="col" align="center">2</td>
								<td scope="col"><p>윤밀원</p>
									<p>
										<span style="color: gray; font-size: 10pt">결제 날짜 : 2021.06.12<br> 예약 날짜 : 2021.06.17
										</span>
									</p></td>
								<td scope="col">&emsp;</td>
							</tr>
						</table>
					</div>
					<br>
					<div align="left">
						<button class="btn btn-outline-primary mb-4" type="submit" id="return" name="return" onClick="location.href='personal_information.jsp'">돌아가기</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<jsp:include page="footer.jsp" />
	<!-- JavaScript files-->
	<script>
		// ------------------------------------------------------- //
		//   Inject SVG Sprite - 
		//   see more here 
		//   https://css-tricks.com/ajaxing-svg-sprite/
		// ------------------------------------------------------ //
		function injectSvgSprite(path) {

			var ajax = new XMLHttpRequest();
			ajax.open("GET", path, true);
			ajax.send();
			ajax.onload = function(e) {
				var div = document.createElement("div");
				div.className = 'd-none';
				div.innerHTML = ajax.responseText;
				document.body.insertBefore(div, document.body.childNodes[0]);
			}
		}
		// to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
		// use your own URL in production, please :)
		// https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
		//- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
		injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');
	</script>
	<!-- jQuery-->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Magnific Popup - Lightbox for the gallery-->
	<script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Smooth scroll-->
	<script src="resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
	<!-- Bootstrap Select-->
	<script src="resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
	<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
	<script src="resources/vendor/object-fit-images/ofi.min.js"></script>
	<!-- Swiper Carousel                       -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
	<script>
		var basePath = ''
	</script>
	<!-- Main Theme JS file    -->
	<script src="resources/js/theme.js"></script>
</body>
</html>