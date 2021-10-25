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
<!--   Google fonts - Playfair Display-->
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
	<!-- <form action="/web/accountDelete.do?cmd=accountDelete" method="post" name="accountDelete"> -->
	<section class="py-5">
		<div class="container">
			<div class="row2">
				<div class="col-lg-9 ps-lg-5">
					<h2 class="hero-heading mb-0">회원 탈퇴</h2>
					<div class="text-block">
						<p class="text-muted" align="center">
						<div class="card">
							<div class="card-body p-5">
								<strong class="text-uppercase text-secondary d-inline-block mb-2 text-sm"></strong>
								<h5 class="mb-3">회원 탈퇴 및 복구에 대한 안내</h5>
								<br>
								<p class="text-muted">
									탈퇴 후 회원 복구를 원하시는 경우 회원 탈퇴 결정 날짜로부터<br> 2주 이내 xxx@sist.com으로 발송시 탈퇴 철회 가능하시며 기간이 지난 후에는 복구가 불가능합니다. <br>회원 탈퇴를 진행하실 경우 관련된 모든 데이터가 소멸되어 확인할 수 없습니다. <br>정말로 탈퇴하시겠습니까?
								</p>
								<a class="btn btn-link p-0" href="resources/post.html"> </a>
							</div>
						</div>
						<div class="mb-2">
							<div class="form-check">
								<input class="form-check-input" id="idDelete" type="checkbox"> <label class="form-check-label text-muted" for="idDelete"> <span class="text-sm">동의합니다</span>
								</label>
							</div>
						</div>
					</div>
					<br>
					<div align="center">
						<button class="btn btn-outline-primary mb-4" id="cancel" name="cancel" type="submit" onClick="location.href='personal_information.jsp'">취소</button>
						<!-- 기본 정보 출력 페이지로 이동 -->
						&emsp;
						<button class="btn btn-outline-primary mb-4" id="save" type="submit" name="submit" onclick.location="'#';">
							<!--  메인페이지로 이동 예정 -->
							확인
						</button>
					</div>
				</div>
			</div>
	</section>
	<!-- </form> -->
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
				document.body.insertBefore(div, document.body.chilsdNodes[0]);
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