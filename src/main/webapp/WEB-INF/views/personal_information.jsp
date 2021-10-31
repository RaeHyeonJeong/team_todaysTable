
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %> 

<%
// 세션값 가져오기
String id = (String) session.getAttribute("id");

%>
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
	<section class="py-5">
		<div class="container">
			<!-- Breadcrumbs -->
			<h2 class="hero-heading mb-0">기본 정보</h2>
			<div class="row2">
				<!-- 테이블 정렬을 위해  css default에 row2추가 -->
				<div class="col-lg-7 mb-5 mb-lg-0">
					<div class="text-block">
						<div class="row mb-3">
							<div class="col-sm-9">
								<br> <br>
								<!--   테이블 형식으로 만들기 -->
 								<form id="mypage" name="mypage" action="getPersonalInfo.do">
 								<div class="card-body">
									<table class="table text-sm mb-0">
										<tr>
											<!-- ps-0-1 회원정보 테이블의 텍스트 가운데 정렬 css default에 추가 -->
											<!-- pe-0-1 회원정보 테이블의 텍스트 가운데 정렬 css default에 추가 -->
											<th class="ps-0-1">아이디</th>
											<td class="pe-0-1 ">${list.id }</td>
										</tr>
										<tr>
											<th class="ps-0-1">이름</th>
											<td class="pe-0-1">${list.name }</td>
										</tr>
										<tr>
											<th class="ps-0-1">닉네임</th>
											<td class="pe-0-1">${list.nickname }</td>
										</tr>
										<tr>
											<th class="ps-0-1">생년월일</th>
											<td class="pe-0-1 ">${list.birthdate }</td>
										</tr>
										<tr>
											<th class="ps-0-1">이메일</th>
											<td class="pe-0-1">${list.email }</td>
										</tr>
										<tr>
											<th class="ps-0-1">연락처</th>
											<td class="pe-0-1">${list.tel }</td>
										</tr>
										
										<tr>
											<th class="ps-0-1">주소</th>
											<td class="pe-0-1">${list.address }
											</td>
										</tr>
									</table>
								</div>
								</form> 
							</div>
						</div>
						<br> <br>
						<button class="btn btn-outline-primary mb-4" type="submit" id="accountDelete" name="accountDelete" onClick="location.href='account_delete.jsp'">회원 탈퇴</button>
						<button class="btn btn-outline-primary mb-4" type="submit" id="accountModify" name="accountModify" onClick="location.href='profileMove.do'">회원 정보 수정</button>
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