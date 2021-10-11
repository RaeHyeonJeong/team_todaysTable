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
<!-- Google fonts - Poppins-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
<!-- swiper-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
<!-- Magnigic Popup-->
<link rel="stylesheet" href="resources/vendor/magnific-popup/magnific-popup.css">
<!-- Leaflet Maps-->
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
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
</head>
<body style="padding-top: 72px;">
	<!-- HEADER include -->
	<jsp:include page="subHeader.jsp" />
	<div class="container-fluid py-5 px-lg-5">
		<div class="row border-bottom mb-4">
			<div class="col-12">
				<h4 class="display-10 fw-bold text-muted mb-4 d-flex justify-content-center">평점순 리스트</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-9">
				<div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
					<div class="me-3">
						<p class="mb-3 mb-md-0">
							<strong>Something</strong> 에 대한 검색 결과
						</p>
					</div>
				</div>
			</div>
			<div class="row row-col-2 d-flex justify-content-center">
				<!-- venue item-->
				<div class="col-sm-5 col-md-5 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
					<div class="card h-100 border-0 shadow">
						<!--가게 이미지  -->
						<div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(resources/img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
							<!--가게 상세 페이지 링크  -->
							<a class="tile-link" href="detail.html"></a>
							<div class="card-img-overlay-bottom z-index-20">
								<h4 class="text-white text-shadow">Blue Hill</h4>
							</div>
						</div>
						<div class="card-body">
							<p class="text-sm text-muted fw-bold mb-3">카테고리 : 일식, 스시</p>
							<p class="text-sm text-muted fw-bold mb-3">주소 : 서울시 특별구 강남구 역삼동 735-1</p>
							<p class="text-sm text-muted fw-bold mb-3">전화번호 : 000-000-0000</p>
							<div class="d-flex justify-content-between align-items-center">
								<p class="mb-2 text-sm fw-bold">
									<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
								</p>
								<!-- 찜한 가게 추가 sql -->
								<form action="#">
									<a class="position-relative z-index-40" href="javascript: void();">
										<button class="btn btn-primary btn-sm" type="submit">찜하기</button>
									</a>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- venue item-->
				<div class="col-sm-5 col-md-5 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
					<div class="card h-100 border-0 shadow">
						<!--가게 이미지  -->
						<div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(resources/img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
							<!--가게 상세 페이지 링크  -->
							<a class="tile-link" href="detail.html"></a>
							<div class="card-img-overlay-bottom z-index-20">
								<h4 class="text-white text-shadow">Blue Hill</h4>
							</div>
						</div>
						<div class="card-body">
							<p class="text-sm text-muted fw-bold mb-3">카테고리 : 일식, 스시</p>
							<p class="text-sm text-muted fw-bold mb-3">주소 : 서울시 특별구 강남구 역삼동 735-1</p>
							<p class="text-sm text-muted fw-bold mb-3">전화번호 : 000-000-0000</p>
							<div class="d-flex justify-content-between align-items-center">
								<p class="mb-2 text-sm fw-bold">
									<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
								</p>
								<!-- 찜한 가게 추가 sql -->
								<form action="#">
									<a class="position-relative z-index-40" href="javascript: void();">
										<button class="btn btn-primary btn-sm" type="submit">찜하기</button>
									</a>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- venue item-->
				<div class="col-sm-5 col-md-5 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
					<div class="card h-100 border-0 shadow">
						<!--가게 이미지  -->
						<div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(resources/img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
							<!--가게 상세 페이지 링크  -->
							<a class="tile-link" href="detail.html"></a>
							<div class="card-img-overlay-bottom z-index-20">
								<h4 class="text-white text-shadow">Blue Hill</h4>
							</div>
						</div>
						<div class="card-body">
							<p class="text-sm text-muted fw-bold mb-3">카테고리 : 일식, 스시</p>
							<p class="text-sm text-muted fw-bold mb-3">주소 : 서울시 특별구 강남구 역삼동 735-1</p>
							<p class="text-sm text-muted fw-bold mb-3">전화번호 : 000-000-0000</p>
							<div class="d-flex justify-content-between align-items-center">
								<p class="mb-2 text-sm fw-bold">
									<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
								</p>
								<!-- 찜한 가게 추가 sql -->
								<form action="#">
									<a class="position-relative z-index-40" href="javascript: void();">
										<button class="btn btn-primary btn-sm" type="submit">찜하기</button>
									</a>
								</form>
							</div>
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
	</div>
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
	<!-- Price Slider-->
	<script src="resources/vendor/nouislider/nouislider.min.js"></script>
	<script>
		var snapSlider = document.getElementById('slider-snap');

		noUiSlider.create(snapSlider, {
			start : [ 40, 110 ],
			snap : false,
			connect : true,
			step : 1,
			range : {
				'min' : 40,
				'max' : 110
			}
		});
		var snapValues = [ document.getElementById('slider-snap-value-from'), document.getElementById('slider-snap-value-to') ];
		var inputValues = [ document.getElementById('slider-snap-input-from'), document.getElementById('slider-snap-input-to') ];
		snapSlider.noUiSlider.on('update', function(values, handle) {
			snapValues[handle].innerHTML = values[handle];
			inputValues[handle].value = values[handle];
		})
	</script>
</body>
</html>