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
div.score-layout {
	color: orange;
	font-size: 1.6em;
}
</style>
<!-- HEADER include -->
<jsp:include page="subHeader.jsp" />
<body style="padding-top: 72px;">
	<section class="py-5">
		<div class="container">
			<div class="row">
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
							<h6>마이 리스트</h6>
							<ul class="card-text text-muted">
								<li>최근 본 가게</li>
								<li>찜 한 가게</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-9 ps-lg-5">
					<h2 class="hero-heading mb-0">최근 본 가게</h2>
					<div align="right">
						<button class="btn btn-outline-primary mb-4" type="submit" id="return" name="return" onClick="location.href='personal_information.jsp'">돌아가기</button>
					</div>
					<div class="d-flex d-block d-sm-flex review">
						<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
							<img class="d-block avatar avatar-xl p-2 mb-2" src="/resources/img/avatar/soi.png" alt="소이연남마오">
						</div>
						<div class="score-layout">
							<strong>3.4</strong>
						</div>
						<div>&emsp;</div>
						<div>&emsp;</div>
						<div>
							<h6 class="mt-2 mb-1">1. 소이연남마오</h6>
							<div class="mb-2">
								<i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
							</div>
							<p class="text-muted text-sm">서을특별시 강남구 도산대로 53길 30</p>
						</div>
					</div>
					<div class="d-flex d-block d-sm-flex review">
						<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
							<img class="d-block avatar avatar-xl p-2 mb-2" src="/resources/img/avatar/slow.png" alt="인딕슬로우">
						</div>
						<div class="score-layout">
							<strong>3.4</strong>
						</div>
						<div>&emsp;</div>
						<div>&emsp;</div>
						<div>
							<h6 class="mt-2 mb-1">2. 인딕슬로우</h6>
							<div class="mb-2">
								<i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
							</div>
							<p class="text-muted text-sm">서울특별시 강남구 압구정로4길 13 1F</p>
						</div>
					</div>
					<div class="d-flex d-block d-sm-flex review">
						<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
							<img class="d-block avatar avatar-xl p-2 mb-2" src="/resources/img/avatar/mangata.png" alt="만가타">
						</div>
						<div class="score-layout">
							<strong>3.4</strong>
						</div>
						<div>&emsp;</div>
						<div>&emsp;</div>
						<div>
							<h6 class="mt-2 mb-1">3. 만가타</h6>
							<div class="mb-2">
								<i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i> 4.7<i class="fa fa-xs fa-star text-primary"></i>
							</div>
							<p class="text-muted text-sm">서울특별시 종로구 삼청동 2길 2</p>
						</div>
					</div>
				</div>
				<!-- Pagination -->
				<nav aria-label="Page navigation example">
					<ul class="pagination pagination-template d-flex justify-content-center">
						<li class="page-item"><a class="page-link" href="#">
								<i class="fa fa-angle-left"></i>
							</a></li>
						<li class="page-item active"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">
								<i class="fa fa-angle-right"></i>
							</a></li>
					</ul>
				</nav>
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