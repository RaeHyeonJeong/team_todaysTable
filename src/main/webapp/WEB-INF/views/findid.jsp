<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>아이디 찾기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Price Slider Stylesheets -->
<link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<!-- Google fonts - Poppins-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
<!-- swiper-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
<!-- Magnigic Popup-->
<link rel="stylesheet"
	href="resources/vendor/magnific-popup/magnific-popup.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="resources/css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="resources/css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="resources/img/favicon.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

</head>
<body>
	<div class="container-fluid px-3">
		<div class="row min-vh-100">
			<div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
				<div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
					<div class="mb-4">
						<img class="img-fluid mb-4" src="resources/img/logo-square.svg"
							alt="..." style="max-width: 4rem;">
						<h1>ID/PW 찾기</h1>
						<br>
						<h2>아이디 찾기</h2>
						<p class="text-muted">
							등록된 이메일로 아이디 찾기<br>가입 당시 입력한 이메일 주소를 통한 인증이 필요합니다.
						</p>
					</div>
					<!-- <form class="form-validate"> -->
						<div class="mb-4">
							<label class="form-label" for="name">NAME</label> <input
								class="form-control" name="name" id="name" type="text"
								placeholder="이름을 입력해 주세요" autocomplete="off" required
								data-msg="이름을 입력해 주세요"> <label class="form-label"
								for="Tel">TEL</label> <input class="form-control" name="tel" id="tel"
								placeholder="ex)010-1234-5678" type="tel" required
								data-msg="전화번호를 확인해 주세요">
						</div>
						<div class="d-grid gap-2">
							<button class="btn btn-lg btn-primary" id="IdCheck"
								onclick="findId_check()">아이디 확인</button>
								<p align="center" id="check">고객님의 아이디를 확인해 주세요.</p>
								<div align="center" id="SearchComplet" style="color: navy; font-size: x-large;"></div>
						</div>
						
					<!-- </form> -->
					<a class="close-absolute me-md-5 me-xl-6 pt-5" href="main.do">
						<svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg>
					</a>
				</div>
			</div>
			<div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
				<!-- Image-->
				<div class="bg-cover h-100 me-n3"
					style="background-image: url(resources/img/photo/cook.jpg);"></div>
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
	<script
		src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Smooth scroll-->
	<script
		src="resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
	<!-- Bootstrap Select-->
	<script
		src="resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
	<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
	<script src="resources/vendor/object-fit-images/ofi.min.js"></script>
	<!-- Swiper Carousel                       -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
	<script>
		var basePath = ''
	</script>
	<!-- Main Theme JS file    -->
	<script src="resources/js/theme.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script type="text/javascript">
		$("#check").hide();
		function findId_check() { 
			$.ajax({
				type : 'POST',
				url : 'findID.do',
				data : {
					name : $("input#name").val(),
					tel : $("input#tel").val()
				},
				dataType:'text',
				success : function(data) {
					$("#check").css("display", "inline-block");
					$("#SearchComplet").html(data);//아이디를 나타내줌
				}
			});
		}
	</script>
</body>
</html>