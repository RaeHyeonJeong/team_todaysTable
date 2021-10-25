<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>약관 동의</title>
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
<body>
	<div class="container-fluid px-3">
		<div class="row min-vh-100">
			<div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
				<div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
					<div class="mb-5">
						<img class="img-fluid mb-3" src="resources/img/logo-square.svg" alt="..." style="max-width: 4rem;">
						<h3>약관 동의</h3>
					</div>
					<form class="form-validate">
						<div class="mb-4">
							<input type="checkbox" style="width: 20px; height: 20px;" id="check1"><br> <span>이용 약관, 개인정보 수집 및 이용, 위치 정보 이용 약관(선택)에 모두 동의합니다.</span>
						</div>
						<div class="mb-4">
							<input type="checkbox" style="width: 20px; height: 20px;" id="check2">&nbsp;<span>이용 약관 동의<strong>(필수)</strong></span>
							<textarea class="form-control" name="" id="" style="width: 450px; height: 100px; resize: none;" readonly="readonly">본 서비스 약관에는 '오늘의식탁'의 사업 운영 방식, '오늘의식탁'에 적용되는 법률, '오늘의식탁'이 항상 진실이라고 여기는 특정 내용이 반영되어 있습니다. 따라서 귀하가 '오늘의식탁' 서비스와 상호작용하면 본 서비스 약관을 근거로 '오늘의식탁'과의 관계가 정의됩니다. 예를 들어, 약관에는 다음과 같은 제목의 주제들이 포함됩니다.
                 </textarea>
						</div>
						<div class="mb-4">
							<input type="checkbox" style="width: 20px; height: 20px;" id="check3">&nbsp;<span>개인정보 수집 및 이용<strong>(필수)</strong></span>
							<textarea class="form-control" name="" id="" style="width: 450px; resize: none;" readonly="readonly">「개인정보보호법 제 15조(개인정보의 수집이용),제 17조(개인정보의 제공),제 18조(개인정보의 이용 제공 제한), 제22조(동의를 받는 방법)」에 의거 개인정보처리에 관하여 고지를 받았으며 본인은 위와 같이 개인정보 수집 및 이용 제공에 동의합니다.
                </textarea>
						</div>
						<div class="mb-4">
							<input type="checkbox" style="width: 20px; height: 20px;" id="check4">&nbsp;<span>위치 정보 이용 약관<strong>(선택)</strong></span>
							<textarea class="form-control" name="" id="" style="width: 450px; resize: none;" readonly="readonly">제 1 조 (목적)
이 약관은 네이버 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
				</textarea>
						</div>
						<!-- Submit-->
						<div class="d-grid">
							<br>
							<button class="btn btn-lg btn-primary" type="button" id="okbtn" onclick="location.href='signup.jsp'">확인</button>
						</div>
					</form>
					<a class="close-absolute me-md-5 me-xl-6 pt-5" href="index.jsp">
						<svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg>
					</a>
				</div>
			</div>
			<div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
				<!-- Image -->
				<div class="bg-cover h-100 me-n3" style="background-image: url(resources/img/photo/cook.jpg);"></div>
			</div>
		</div>
	</div>
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