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
<style type="text/css">
div.ps-0-1 {
	padding-left: 0 !important;
	text-align: center;
}

div.pe-0-1 {
	padding-right: 1rem !important;
	text-align: left;
}

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
	<!-- <form action="/web/profileModify.do?cmd=profileModify" method="post" name="profileModify"> -->
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
							<h6>&emsp;</h6>
							<ul class="card-text text-muted">
							</ul>
							<ul>&emsp;
							</ul>
							<ul>&emsp;
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-9 ps-lg-5">
					<h3 class="hero-heading mb-0">프로필 관리</h3>
					<div class="d-flex d-block d-sm-flex review ">
						<div class="card-body">
							<table class="table text-sm mb-0">
								<tr>
									<th class="ps-0-1">비밀번호 변경</th>
									<td class="pe-0-1 ">
										<div class="row py-0">
											<div class="mb-1 col-md-6">
												<input class="form-text" type="text" name="pass1" id="pass1" value="현재 비밀번호 입력">
											</div>
										</div>
										<div class="row py-0">
											<div class="mb-1 col-md-6">
												<input class="form-text" type="text" name="pass2" id="pass2" value="새로운 비밀번호 입력">
											</div>
										</div>
										<div class="row py-0">
											<div class="mb-1 col-md-6">
												<input class="form-text" type="text" name="pass3" id="pass3" value="새로운 비밀번호 입력">
											</div>
										</div>
									</td>
									<td>
										<div>&emsp;</div>
									</td>
									<td>
										<div>&emsp;</div>
										<div>&emsp;</div>
										<div>&emsp;</div>
										<div>&emsp;</div>
									</td>
								</tr>
								<tr>
									<th class="ps-0-1">주소 변경</th>
									<td class="pe-0-1">
										<div class="row py-0">
											<div class="mb-1 col-md-6">
												<input class="form-text" type="text" name="zipcode" id="zipcode" value="우편번호">
											</div>
										</div>
										<div class="row py-0">
											<div class="mb-1 col-md-6">
												<input class="form-text" type="text" name="address1" id="address1" value="주소">
											</div>
										</div>
										<div class="row py-0">
											<div class="mb-1 col-md-6">
												<input class="form-text" type="text" name="address2" id="address2" value="상세 주소">
											</div>
										</div>
									</td>
									<td><div class="d-flex flex-row-reverse bd-highlight">
											<button class="btn btn-outline-primary" name="zipcode" id="zipcode">우편번호</button>
										</div></td>
									<td>
										<div>&emsp;</div>
										<div>&emsp;</div>
										<div>&emsp;</div>
										<div>&emsp;</div>
									</td>
								</tr>
								<tr>
									<th class="ps-0-1">연락처 변경</th>
									<td class="pe-0-1">
										<div class="row py-0">
											<div class="mb-1 col-md-6">
												<input class="form-text" type="text" name="tel" id="tel" value="010-xxxx-xxxx">
											</div>
										</div>
									</td>
									<td>
										<div>&emsp;</div>
									</td>
									<td>
										<div>&emsp;</div>
										<div>&emsp;</div>
										<div>&emsp;</div>
										<div>&emsp;</div>
									</td>
								</tr>
								<tr>
									<th class="ps-0-1">닉네임 변경</th>
									<td class="pe-0-1">
										<div class="row py-0">
											<div class="mb-1 col-md-6">
												<input class="form-text" type="text" name="nickname" id="nickname" value="새로운 닉네임 입력">
											</div>
										</div>
									</td>
									<td>
										<div class="d-flex flex-row-reverse bd-highlight">
											<button class="btn btn-outline-primary" id="nicknameCheck" name="nicknameCheck">중복확인</button>
										</div>
									</td>
									<td>
										<div>&emsp;</div>
										<div>&emsp;</div>
										<div>&emsp;</div>
										<div>&emsp;</div>
									</td>
								</tr>
								<tr>
									<th class="ps-0-1">프로필 이미지 변경</th>
									<td class="pe-0-1">
										<div class="row py-0">
											<div class="mb-1 col-md-6">
												<a class="d-inline-block" href="#">
													<img class="d-block avatar avatar-xxl p-2 mb-2" src="resources/img/avatar/avatar-10.jpg" alt="">
												</a>
												<input class="form-text" type="text" name="photo" id="photo" value="사용할 이미지 업로드">
											</div>
									</td>
									<td>
										<div class="d-flex flex-row-reverse bd-highlight">
											<button class="btn btn-outline-primary" id="photoUpload" name="photoUpload">업로드</button>
										</div>
									</td>
									<td>
										<div>&emsp;</div>
										<div>&emsp;</div>
										<div>&emsp;</div>
										<div>&emsp;</div>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="row2">
					<button class="btn btn-outline-primary mb-4" type="submit" id="cancel" name="cancel" onClick="location.href='personal_information.jsp'">돌아가기</button>
					<p>&emsp;&emsp;&emsp;</p>
					<button class="btn btn-outline-primary mb-4" type="submit" id="save" name="save" onClick="location.href='personal_information.jsp'">수정하기</button>
				</div>
				</form>
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