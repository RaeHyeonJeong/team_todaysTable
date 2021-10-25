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
<!--  Price Slider Stylesheets -->
<link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
<!--  Google fonts - Playfair Display-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<!-- Google fonts - Poppins-->
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
<!--  Font Awesome CSS-->
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
			<div class="row">
				<div class="col-lg-7">
					<h1 class="h2 mb-5">알림</h1>
				</div>
				<div align="right">
					<button class="btn btn-outline-primary mb-4" type="submit" id="return" name="return" onClick="location.href='personal_information.jsp'">돌아가기</button>
				</div>
				<div class="text-block">
					<div class="row2">
						<div class="alert alert-warning text-sm mb-3">
							<div class="d-flex align-items-center">
								<svg class="svg-icon svg-icon svg-icon-light w-2rem h-2rem me-3 text-reset flex-shrink-0 ">
                    <use xlink:href="#heart-1"> </use>
                  </svg>
								<div>
									<strong>D - 13</strong>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row2">
				<div class="col-lg-5 ps-xl-5">
					<div class="card border-0 shadow">
						<div class="card-body p-4">
							<div class="text-block pb-3">
								<div class="d-flex align-items-center">
									<div>
										<h4>
											<a class="text-reset" href="resources/detail-rooms.html">더백푸드트럭</a>
										</h4>
										<p class="text-muted text-sm mb-0">치즈가 쭈욱쭈욱!</p>
										<div class="mt-n1">
											<i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
										</div>
									</div>
									<a class="flex-shrink-0" href="더백푸드트럭">
										<img class="ms-3 rounded" src="resources/img/avatar/theback.png" alt="" width="200">
									</a>
								</div>
							</div>
							<div class="text-block py-3">
								<ul class="list-unstyled mb-0">
									<li class="mb-3"><i class="far fa-calendar fa-fw text-muted me-2"></i>일정:2021.11.09(화) 오후 06:00</li>
									<li class="mb-3"><i class="fas fa-users fa-fw text-muted me-2"></i>3명</li>
									<li class="mb-3"><i class="fas fa-door-open fa-fw text-muted me-2"></i>객실:개인룸</li>
									<li class="mb-3"><i class="fas fa-id-card fa-fw text-muted me-2"></i>결제 날짜:2021.09.17</li>
								</ul>
							</div>
						</div>
						<div class="card-footer bg-primary-light py-4 border-0">
							<div class="row2">
								<div class="d-flex align-items-center">
									<div class="row2">
										<div>
											<button class="btn btn-outline-primary mb-4" type="submit" id="cancel" name="cancel" onClick="location.href='booking-cancel.jsp'">예약 취소</button>
											<button class="btn btn-outline-primary mb-4" type="submit" id="modify" id="modify" onclick.location="'예약 수정 페이지';">
												예약 수정
												<!-- 예약 수정 페이지로 이동 예정 -->
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
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