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
	<div class="container-fluid pb-5 px-lg-5">
		<!-- Hero Section-->
		<section class="hero py-5 py-lg-6 mb-3">
			<div class="container position-relative">
				<!-- Breadcrumbs -->
				<ol class="breadcrumb ps-0  justify-content-center">
					<li class="breadcrumb-item active">Recommend Restaurant</li>
				</ol>
				<h1 class="hero-heading">맛집 추천 게시판</h1>
				<div class="row">
					<div class="col-xl-8 mx-auto">
						<p class="text-muted">여러분의 식탁을 공유해주세요!</p>
					</div>
				</div>
			</div>
		</section>
		<div class="container">
			<table class="table table-sm" style="height: 5px">
				<thead class="table-light text-center">
					<tr class="fw-bold">
						<th class="col-md-1" scope="col">#</th>
						<th class="col-md-4" scope="col">제목</th>
						<th class="col-md-1" scope="col">작성자</th>
						<th class="col-md-1" scope="col">조회수</th>
						<th class="col-md-1" scope="col">좋아요</th>
						<th class="col-md-1" scope="col">작성날짜</th>
					</tr>
				</thead>
				<tbody class="text-center text-break">
					<tr style="cursor: pointer;" onClick="location.href='index.html'">
						<th scope="row">1</th>
						<td>Mark </a>
						</td>
						<td>홍길동</td>
						<td>120</td>
						<td>88</td>
						<td>2021/10/5</td>
					</tr>
					<tr style="cursor: pointer;" onClick="location.href='index.html'">
						<th scope="row">2</th>
						<td>Marksdsdsadsa</td>
						<td>홍길동</td>
						<td>120</td>
						<td>88</td>
						<td>2021/10/5</td>
					</tr>
					<tr style="cursor: pointer;" onClick="location.href='index.html'">
						<th scope="row">3</th>
						<td>Mark</td>
						<td>홍길동</td>
						<td>120</td>
						<td>88</td>
						<td>2021/10/5</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="mb-5 d-grid gap-2 col-6 mx-auto">
		<button class="btn btn-primary h-100" onClick="location.href='boardWriteUpdate.html'">글쓰기</button>
	</div>
	<div class="mb-5">
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
	>
	<div class="row row-col-2 d-flex justify-content-center"></div>
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