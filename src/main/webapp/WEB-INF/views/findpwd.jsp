<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>비밀번호 찾기</title>
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
<style type="text/css">
.correct {
	color: blue;
}

.incorrect {
	color: red;
}
</style>	
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
						<h2>비밀번호 찾기</h2>
						<p class="text-muted">
							등록된 이메일로 비밀번호 찾기<br>가입 당시 입력한 이메일를 통한 인증이 필요합니다.
						</p>
					</div>
					<!-- 	<form class="form-validate"> -->
					<div class="mb-4">
						<label class="form-label">EMAIL ADDRESS</label>
						<div class="input-group mb-3">
							<input class="form-control" name="email" id="email"
								placeholder="name@address.com" required data-msg="이메일을 입력해 주세요"
								aria-describedby="idcheck">
							<div class="mail_check_button">
								<button type="button" class="btn btn-primary btn-outline ms-3"
									id="idcheck" >인증번호 받기</button>
							</div>
						</div>
					<!-- 확인버튼 실행시 나타나게 -->
					<p id="sendcheck">
						<small style="color: blue;">가입시 등록된 이메일로 인증번호가 발송되었습니다. <br>인증번호를
							확인해 주세요.
						</small>
					</p>
					</div>

					<div class="mb-4">
						<div class="authnum_box">
							<input class="form-control" name="authnum" id="authnum"
								placeholder="인증번호 입력" type="text" required
								data-msg="인증번호를 확인해 주세요">
						</div>
					</div>
					<div>
						<span id="mail_check_warn"></span>
					</div>
					<div class="d-grid gap-2">
						<button class="btn btn-lg btn-primary" type="submit" id="numcheck" >인증번호
							확인</button>
						<p align="center" id="check">고객님의 비밀번호를 확인해 주세요.</p>
						<div align="center" id="SearchComplet"
							style="color: navy; font-size: x-large;"></div>
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
		/* 인증번호 이메일 전송 */
		var code = ""; //이메일전송 인증번호 저장위한 코드
		$("#sendcheck").hide();
		$(".mail_check_button").click(function() {
			var email = $("#email").val(); // 입력한 이메일
			var numcheckBox1 = $("#authnum"); // 인증번호 입력란
			$.ajax({
				type : "GET",
				url : "searchPWD.do?email=" + email,
				success : function(data) {
					numcheckBox1.attr("disabled", false);
					$("#sendcheck").css("display", "inline-block");
					code = data;

				}
			});
		});
	</script>
	<script type="text/javascript">
		/* 인증번호 비교 */
		$("input#authnum").blur(function() {
			var obj = document.getElementsByClassName('form-control');
			var inputNum = $("#authnum").val(); // 입력코드    
			var checkResult = $("span#mail_check_warn"); // 비교 결과  
			if (inputNum == code) { // 일치할 경우
				checkResult.html("인증번호가 일치합니다.");
				checkResult.attr("class", "correct");
				findPWD_check(); //이메일과 인증번호가 일치하면 비밀번호가 뜸
				
			} else { // 일치하지 않을 경우
				checkResult.html("인증번호를 다시 확인해주세요.");
				checkResult.attr("class", "incorrect");
				for (var i = 0; i < obj.length; i++) { //지워짐
					obj[i].value = '';
				}
			}
		});
	</script>
	
	<script type="text/javascript">
	$("#check").hide();
	function findPWD_check() { 
		$.ajax({
			type : 'POST',
			url : 'findPWDcheck.do',
			data : {
				email : $("input#email").val()
			},
			dataType:'text',
			success : function(data) {
				$("#check").css("display", "inline-block");
				$("#SearchComplet").html(data);//비밀번호를 나타냄
			}
		});
	}
	</script>
</body>
</html>