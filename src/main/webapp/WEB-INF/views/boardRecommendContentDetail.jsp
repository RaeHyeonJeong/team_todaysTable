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
	<section class="py-5 bg-gray-100 mp-5">
		<div class="container">
			<div class="text-center pb-lg-4">
				<p class="subtitle text-secondary">Title</p>
				<h3 class="mb-4">이 곳 추천 합니다.!</h3>
			</div>
		</div>
		<div class="container">
			<!-- Slider main container-->
			<div class="swiper-container detail-slider slider-gallery">
				<!-- Additional required wrapper-->
				<div class="swiper-wrapper">
					<!-- Slides-->
					<div class="swiper-slide">
						<a href="resources/img/photo/photo-1426122402199-be02db90eb90.jpg" data-toggle="gallery-top" title="Our street">
							<img class="img-fluid" src="resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Our street">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" data-toggle="gallery-top" title="Outside">
							<img class="img-fluid" src="resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Outside">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="resources/img/photo/photo-1494526585095-c41746248156.jpg" data-toggle="gallery-top" title="Rear entrance">
							<img class="img-fluid" src="resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Rear entrance">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="resources/img/photo/photo-1484154218962-a197022b5858.jpg" data-toggle="gallery-top" title="Kitchen">
							<img class="img-fluid" src="resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Kitchen">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" data-toggle="gallery-top" title="Bedroom">
							<img class="img-fluid" src="resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Bedroom">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" data-toggle="gallery-top" title="Bedroom">
							<img class="img-fluid" src="resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Bedroom">
						</a>
					</div>
				</div>
				<div class="swiper-pagination swiper-pagination-white"></div>
				<div class="swiper-button-prev swiper-button-white"></div>
				<div class="swiper-button-next swiper-button-white"></div>
			</div>
		</div>
	</section>
	<div class="container col-lg-7 mt-5">
		<div class="text-block d-flex">
			<img class="avatar avatar-md p-1 flex-shrink-0 me-4" src="resources/img/avatar/avatar-10.jpg" alt="Jack London">
			<p class="col">
				<span class="text-muted text-uppercase text-sm">Write by </span> <br> <strong>Jack London</strong>
			</p>
			<p class="col">
				<span class="text-muted text-sm"> 작성일 </span> <br> 2021/10/31
			</p>
		</div>
		<div class="text-block">
			<div class="d-flex">
				<p class="text-muted text-sm mb-2">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
			</div>
		</div>
	</div>
	<div class="text-block"></div>
	<div class="container col-lg-7 mt-5">
		<div class="row">
			<div class="col-xxl">
				<div class="text-block">
					<p class="subtitle text-sm text-primary">Reply</p>
					<div class="d-flex d-block d-sm-flex review">
						<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
							<img class="d-block avatar avatar-md p-1 flex-shrink-0 me-4" src="resources/img/avatar/avatar-8.jpg" alt="Padmé Amidala">
							<span class="text-uppercase text-muted text-sm">댓글작성날짜</span>
						</div>
						<div>
							<h6 class="mt-2 mb-1">Padmé Amidala</h6>
							<div class="mb-2"></div>
							<p class="text-muted text-sm">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin</p>
						</div>
					</div>
					<div class="d-flex d-block d-sm-flex review">
						<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
							<img class="d-block avatar avatar-md p-1 flex-shrink-0 me-4" src="resources/img/avatar/avatar-2.jpg" alt="Luke Skywalker">
							<span class="text-uppercase text-muted text-sm">댓글작성날짜</span>
						</div>
						<div>
							<h6 class="mt-2 mb-1">Luke Skywalker</h6>
							<div class="mb-2"></div>
							<p class="text-muted text-sm">The bedding was hardly able to cover it and seemed ready to slide off any moment.</p>
						</div>
					</div>
					<div class="py-5">
						<button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">Leave a review</button>
						<div class="collapse mt-4" id="leaveReview">
							<h5 class="mb-4">Leave a review</h5>
							<form class="form" id="contact-form" method="get" action="#">
								<div class="row">
									<div class="col-sm-6">
										<div class="mb-4">
											<label class="form-label" for="name">Your name *</label> <input class="form-control" type="text" name="name" id="name" placeholder="Enter your name" required="required">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="mb-4">
											<label class="form-label" for="rating">Your rating *</label> <select class="form-select focus-shadow-0" name="rating" id="rating">
												<option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
												<option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
												<option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
												<option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
												<option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
											</select>
										</div>
									</div>
								</div>
								<div class="mb-4">
									<label class="form-label" for="email">Your email *</label> <input class="form-control" type="email" name="email" id="email" placeholder="Enter your  email" required="required">
								</div>
								<div class="mb-4">
									<label class="form-label" for="review">Review text *</label>
									<textarea class="form-control" rows="4" name="review" id="review" placeholder="Enter your review" required="required"></textarea>
								</div>
								<button class="btn btn-primary" type="submit">Post review</button>
							</form>
						</div>
					</div>
				</div>
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