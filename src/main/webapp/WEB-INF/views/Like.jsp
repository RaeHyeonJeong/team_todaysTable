<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Directory Theme by Bootstrapious</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">

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
.score-layout {
	color: orange;
	font-size: 1.6em;
}
</style>


<!-- heart toggle -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
 .heartbox {
     position: absolute;
     top: 50%;
     left: 50%;
     transform: translate(-50%, -50%)
 }
 svg {
     cursor: pointer;
     overflow: visible;
     width: 60px;
     margin: 20px
 }
 svg #heart {
     transform-origin: center;
     animation: animateHeartOut .3s linear forwards
 }
 svg #main-circ {
     transform-origin: 29.5px 29.5px
 }
/* 첫번째 하트 */
 .checkbox1 {
     display: none
 }
 .checkbox1:checked+label svg #heart {
     transform: scale(0.2);
     fill: #E2264D;
     animation: animateHeart .3s linear forwards .25s
 }
 .checkbox1:checked+label svg #main-circ {
     transition: all 2s;
     animation: animateCircle .3s linear forwards;
     opacity: 1
 }
 .checkbox1:checked+label svg #heartgroup1 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox1:checked+label svg #heartgroup1 #heart1 {
     transform: scale(0) translate(0, -30px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup1 #heart2 {
     transform: scale(0) translate(10px, -50px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup2 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox1:checked+label svg #heartgroup2 #heart1 {
     transform: scale(0) translate(30px, -15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup2 #heart2 {
     transform: scale(0) translate(60px, -15px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup3 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox1:checked+label svg #heartgroup3 #heart1 {
     transform: scale(0) translate(30px, 0px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup3 #heart2 {
     transform: scale(0) translate(60px, 10px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup4 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox1:checked+label svg #heartgroup4 #heart1 {
     transform: scale(0) translate(30px, 15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup4 #heart2 {
     transform: scale(0) translate(40px, 50px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup5 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox1:checked+label svg #heartgroup5 #heart1 {
     transform: scale(0) translate(-10px, 20px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup5 #heart2 {
     transform: scale(0) translate(-60px, 30px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup6 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox1:checked+label svg #heartgroup6 #heart1 {
     transform: scale(0) translate(-30px, 0px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup6 #heart2 {
     transform: scale(0) translate(-60px, -5px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup7 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox1:checked+label svg #heartgroup7 #heart1 {
     transform: scale(0) translate(-30px, -15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup7 #heart2 {
     transform: scale(0) translate(-55px, -30px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox1:checked+label svg #heartgroup2 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox1:checked+label svg #heartgroup3 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox1:checked+label svg #heartgroup4 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox1:checked+label svg #heartgroup5 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox1:checked+label svg #heartgroup6 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox1:checked+label svg #heartgroup7 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 
 /* 두번째 하트 */
 .checkbox2 {
     display: none
 }
 .checkbox2:checked+label svg #heart {
     transform: scale(0.2);
     fill: #E2264D;
     animation: animateHeart .3s linear forwards .25s
 }
 .checkbox2:checked+label svg #main-circ {
     transition: all 2s;
     animation: animateCircle .3s linear forwards;
     opacity: 1
 }
 .checkbox2:checked+label svg #heartgroup1 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox2:checked+label svg #heartgroup1 #heart1 {
     transform: scale(0) translate(0, -30px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup1 #heart2 {
     transform: scale(0) translate(10px, -50px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup2 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox2:checked+label svg #heartgroup2 #heart1 {
     transform: scale(0) translate(30px, -15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup2 #heart2 {
     transform: scale(0) translate(60px, -15px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup3 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox2:checked+label svg #heartgroup3 #heart1 {
     transform: scale(0) translate(30px, 0px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup3 #heart2 {
     transform: scale(0) translate(60px, 10px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup4 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox2:checked+label svg #heartgroup4 #heart1 {
     transform: scale(0) translate(30px, 15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup4 #heart2 {
     transform: scale(0) translate(40px, 50px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup5 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox2:checked+label svg #heartgroup5 #heart1 {
     transform: scale(0) translate(-10px, 20px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup5 #heart2 {
     transform: scale(0) translate(-60px, 30px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup6 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox2:checked+label svg #heartgroup6 #heart1 {
     transform: scale(0) translate(-30px, 0px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup6 #heart2 {
     transform: scale(0) translate(-60px, -5px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup7 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox2:checked+label svg #heartgroup7 #heart1 {
     transform: scale(0) translate(-30px, -15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup7 #heart2 {
     transform: scale(0) translate(-55px, -30px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox2:checked+label svg #heartgroup2 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox2:checked+label svg #heartgroup3 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox2:checked+label svg #heartgroup4 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox2:checked+label svg #heartgroup5 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox2:checked+label svg #heartgroup6 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox2:checked+label svg #heartgroup7 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 
 /* 세번째 하트 */
 .checkbox3 {
     display: none
 }
 .checkbox3:checked+label svg #heart {
     transform: scale(0.2);
     fill: #E2264D;
     animation: animateHeart .3s linear forwards .25s
 }
 .checkbox3:checked+label svg #main-circ {
     transition: all 2s;
     animation: animateCircle .3s linear forwards;
     opacity: 1
 }
 .checkbox3:checked+label svg #heartgroup1 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox3:checked+label svg #heartgroup1 #heart1 {
     transform: scale(0) translate(0, -30px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup1 #heart2 {
     transform: scale(0) translate(10px, -50px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup2 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox3:checked+label svg #heartgroup2 #heart1 {
     transform: scale(0) translate(30px, -15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup2 #heart2 {
     transform: scale(0) translate(60px, -15px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup3 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox3:checked+label svg #heartgroup3 #heart1 {
     transform: scale(0) translate(30px, 0px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup3 #heart2 {
     transform: scale(0) translate(60px, 10px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup4 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox3:checked+label svg #heartgroup4 #heart1 {
     transform: scale(0) translate(30px, 15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup4 #heart2 {
     transform: scale(0) translate(40px, 50px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup5 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox3:checked+label svg #heartgroup5 #heart1 {
     transform: scale(0) translate(-10px, 20px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup5 #heart2 {
     transform: scale(0) translate(-60px, 30px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup6 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox3:checked+label svg #heartgroup6 #heart1 {
     transform: scale(0) translate(-30px, 0px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup6 #heart2 {
     transform: scale(0) translate(-60px, -5px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup7 {
     opacity: 1;
     transition: .1s all .3s
 }
 .checkbox3:checked+label svg #heartgroup7 #heart1 {
     transform: scale(0) translate(-30px, -15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup7 #heart2 {
     transform: scale(0) translate(-55px, -30px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }
 .checkbox3:checked+label svg #heartgroup2 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox3:checked+label svg #heartgroup3 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox3:checked+label svg #heartgroup4 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox3:checked+label svg #heartgroup5 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox3:checked+label svg #heartgroup6 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 .checkbox3:checked+label svg #heartgroup7 {
     opacity: 1;
     transition: .1s opacity .3s
 }
 
 
 
 
 /* 하트 애니메이션 */
 @keyframes animateCircle {
     40% {
         transform: scale(10);
         opacity: 1;
         fill: #DD4688
     }
     55% {
         transform: scale(11);
         opacity: 1;
         fill: #D46ABF
     }
     65% {
         transform: scale(12);
         opacity: 1;
         fill: #CC8EF5
     }
     75% {
         transform: scale(13);
         opacity: 1;
         fill: transparent;
         stroke: #CC8EF5;
         stroke-width: .5
     }
     85% {
         transform: scale(17);
         opacity: 1;
         fill: transparent;
         stroke: #CC8EF5;
         stroke-width: .2
     }
     95% {
         transform: scale(18);
         opacity: 1;
         fill: transparent;
         stroke: #CC8EF5;
         stroke-width: .1
     }
     100% {
         transform: scale(19);
         opacity: 1;
         fill: transparent;
         stroke: #CC8EF5;
         stroke-width: 0
     }
 }
 @keyframes animateHeart {
     0% {
         transform: scale(0.2)
     }
     40% {
         transform: scale(1.2)
     }
     100% {
         transform: scale(1)
     }
 }
 @keyframes animateHeartOut {
     0% {
         transform: scale(1.4)
     }
     100% {
         transform: scale(1)
     }
 }
</style>


<!-- Price Slider Stylesheets -->
<link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
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

</head>
<body style="padding-top: 72px;">
	<!-- HEADER include -->
	<div>
	<jsp:include page="subHeader_afterLogin.jsp" />
	<div>
	<jsp:include page="subHeader_myPage.jsp" /></div>
	</div>
	
	<section class="py-5">
		<div class="container">
			<div class="row2">
				<div class="col-lg-3 me-lg-auto">
					<div class="card border-0 shadow mb-6 mb-lg-0">
						<div class="card-header bg-gray-100 py-4 border-0 text-center">
							<a class="d-inline-block" href="#">
								<img class="d-block avatar avatar-xxl p-2 mb-2" src="resources/img/avatar/avatar-10.jpg" alt="">
							</a>
							<h5>이름</h5>
							<p class="text-muted text-sm mb-0">닉네임</p>
						</div>
						<div class="card-body p-4">
														
							<h6>마이 리스트</h6>
							<ul class="card-text text-muted">
								<li>최근 본 가게</li>
								<li>찜한 가게</li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="col-lg-9 ps-lg-5">
	
					<h2 class="hero-heading mb-0">찜 한 가게</h2>
				
					<div class="d-flex flex-column d-block d-sm-flex review ">
						<div class="d-flex flex-row bd-highlight mb-3">
							<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
								<img class="d-block avatar avatar-xl p-2 mb-2" src="resources/img/avatar/seoulke.png" alt="이동">
							</div>
							<div class="score-layout">
								<strong>3.4</strong>
							</div>
							<div>&emsp;</div>
							<div>&emsp;</div>
							<div>
								<h6 class="mt-2 mb-1">1.서울케밥</h6>
								<div class="mb-2">
									<i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i>
								</div>
								<p class="text-muted text-sm">서울특별시 용산구 새참로 181</p>
							</div>
							
							
							<!-- 찜하기 버튼 (체크박스 활성화로 상태 값을 DB에 저장해야 함)-->
						<div class="heartbox" style="position: absolute;  left: 630px; top:100px; ">
					
							<input type="checkbox" class="checkbox1" id="checkbox1" /> 
							<label for="checkbox1"> 
							<svg id="heart-svg1" viewBox="-80 -40 58 57" xmlns="http://www.w3.org/2000/svg">
					         <g id="Group" fill="none" fill-rule="evenodd" transform="translate(-80 -40)">
			                 <path d="M29.144 20.773c-.063-.13-4.227-8.67-11.44-2.59C7.63 28.795 28.94 43.256 29.143 43.394c.204-.138 21.513-14.6 11.44-25.213-7.214-6.08-11.377 2.46-11.44 2.59z" id="heart" fill="#AAB8C2" />
			                 <circle id="main-circ" fill="#E2264D" opacity="0" cx="29.5" cy="29.5" r="1.5" />
			                 
			                 <g id="heartgroup7" opacity="0" transform="translate(7 6)">
			                     <circle id="heart1" fill="#9CD8C3" cx="2" cy="6" r="2" />
			                     <circle id="heart2" fill="#8CE8C3" cx="5" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup6" opacity="0" transform="translate(0 28)">
			                     <circle id="heart1" fill="#CC8EF5" cx="2" cy="7" r="2" />
			                     <circle id="heart2" fill="#91D2FA" cx="3" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup3" opacity="0" transform="translate(52 28)">
			                     <circle id="heart2" fill="#9CD8C3" cx="2" cy="7" r="2" />
			                     <circle id="heart1" fill="#8CE8C3" cx="4" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup2" opacity="0" transform="translate(44 6)">
			                     <circle id="heart2" fill="#CC8EF5" cx="5" cy="6" r="2" />
			                     <circle id="heart1" fill="#CC8EF5" cx="2" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup5" opacity="0" transform="translate(14 50)">
			                     <circle id="heart1" fill="#91D2FA" cx="6" cy="5" r="2" />
			                     <circle id="heart2" fill="#91D2FA" cx="2" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup4" opacity="0" transform="translate(35 50)">
			                     <circle id="heart1" fill="#F48EA7" cx="6" cy="5" r="2" />
			                     <circle id="heart2" fill="#F48EA7" cx="2" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup1" opacity="0" transform="translate(24)">
			                     <circle id="heart1" fill="#9FC7FA" cx="2.5" cy="3" r="2" />
			                     <circle id="heart2" fill="#9FC7FA" cx="7.5" cy="2" r="2" />
			                 </g>
			             </g>
			         </svg>
					</label>
				</div>
						</div>			
					</div>
					<div class="d-flex flex-column d-block d-sm-flex review ">
						<div class="d-flex flex-row bd-highlight mb-3">
							<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
								<img class="d-block avatar avatar-xl p-2 mb-2" src="resources/img/avatar/batos.png" alt="바토스페이지">
							</div>
							<div class="score-layout">
								<strong>3.7</strong>
							</div>
							<div>&emsp;</div>
							<div>&emsp;</div>
							<div>
								<h6 class="mt-2 mb-1">2.바토스</h6>
								<div class="mb-2">
									<i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i>
								</div>
								<p class="text-muted text-sm">서울특별시 송파구 올림픽로 240</p>
							</div>
						</div>
						
							<!-- 찜하기 버튼 (체크박스 활성화로 상태 값을 DB에 저장해야 함)-->
						<div class="heartbox" style="position: absolute;  left: 630px; top:300px; ">
							<input type="checkbox" class="checkbox2" id="checkbox2" /> 
							<label for="checkbox2"> 
							<svg id="heart-svg" viewBox="-80 -40 58 57" xmlns="http://www.w3.org/2000/svg">
					         <g id="Group" fill="none" fill-rule="evenodd" transform="translate(-80 -40)">
			                 <path d="M29.144 20.773c-.063-.13-4.227-8.67-11.44-2.59C7.63 28.795 28.94 43.256 29.143 43.394c.204-.138 21.513-14.6 11.44-25.213-7.214-6.08-11.377 2.46-11.44 2.59z" id="heart" fill="#AAB8C2" />
			                 <circle id="main-circ" fill="#E2264D" opacity="0" cx="29.5" cy="29.5" r="1.5" />
			                 
			                 <g id="heartgroup7" opacity="0" transform="translate(7 6)">
			                     <circle id="heart1" fill="#9CD8C3" cx="2" cy="6" r="2" />
			                     <circle id="heart2" fill="#8CE8C3" cx="5" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup6" opacity="0" transform="translate(0 28)">
			                     <circle id="heart1" fill="#CC8EF5" cx="2" cy="7" r="2" />
			                     <circle id="heart2" fill="#91D2FA" cx="3" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup3" opacity="0" transform="translate(52 28)">
			                     <circle id="heart2" fill="#9CD8C3" cx="2" cy="7" r="2" />
			                     <circle id="heart1" fill="#8CE8C3" cx="4" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup2" opacity="0" transform="translate(44 6)">
			                     <circle id="heart2" fill="#CC8EF5" cx="5" cy="6" r="2" />
			                     <circle id="heart1" fill="#CC8EF5" cx="2" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup5" opacity="0" transform="translate(14 50)">
			                     <circle id="heart1" fill="#91D2FA" cx="6" cy="5" r="2" />
			                     <circle id="heart2" fill="#91D2FA" cx="2" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup4" opacity="0" transform="translate(35 50)">
			                     <circle id="heart1" fill="#F48EA7" cx="6" cy="5" r="2" />
			                     <circle id="heart2" fill="#F48EA7" cx="2" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup1" opacity="0" transform="translate(24)">
			                     <circle id="heart1" fill="#9FC7FA" cx="2.5" cy="3" r="2" />
			                     <circle id="heart2" fill="#9FC7FA" cx="7.5" cy="2" r="2" />
			                 </g>
			             </g>
			         </svg>
					</label>
				</div>
										</div>
				
					<div class="d-flex flex-column d-block d-sm-flex review ">
						<div class="d-flex flex-row bd-highlight mb-3">
							<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
								<img class="d-block avatar avatar-xl p-2 mb-2" src="resources/img/avatar/kku.png" alt="꾸잉페이지">
							</div>
							<div class="score-layout">
								<strong>4.1</strong>
							</div>
							<div>&emsp;</div>
							<div>&emsp;</div>
							<div>
								<h6 class="mt-2 mb-1">3.꾸잉</h6>
								<div class="mb-2">
									<i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i> <i class="fa fa-xs fa-star text-primary"></i>
								</div>
								<p class="text-muted text-sm">서울특별시 용산구 이태원로 189</p>
							</div>
						</div>
							
							<!-- 찜하기 버튼 (체크박스 활성화로 상태 값을 DB에 저장해야 함)-->
						<div class="heartbox" style="position: absolute;  left: 630px; top:500px; ">
					
							<input type="checkbox" class="checkbox3" id="checkbox3" /> 
							<label for="checkbox3"> 
							<svg id="heart-svg" viewBox="-80 -40 58 57" xmlns="http://www.w3.org/2000/svg">
					         <g id="Group" fill="none" fill-rule="evenodd" transform="translate(-80 -40)">
			                 <path d="M29.144 20.773c-.063-.13-4.227-8.67-11.44-2.59C7.63 28.795 28.94 43.256 29.143 43.394c.204-.138 21.513-14.6 11.44-25.213-7.214-6.08-11.377 2.46-11.44 2.59z" id="heart" fill="#AAB8C2" />
			                 <circle id="main-circ" fill="#E2264D" opacity="0" cx="29.5" cy="29.5" r="1.5" />
			                 
			                 <g id="heartgroup7" opacity="0" transform="translate(7 6)">
			                     <circle id="heart1" fill="#9CD8C3" cx="2" cy="6" r="2" />
			                     <circle id="heart2" fill="#8CE8C3" cx="5" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup6" opacity="0" transform="translate(0 28)">
			                     <circle id="heart1" fill="#CC8EF5" cx="2" cy="7" r="2" />
			                     <circle id="heart2" fill="#91D2FA" cx="3" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup3" opacity="0" transform="translate(52 28)">
			                     <circle id="heart2" fill="#9CD8C3" cx="2" cy="7" r="2" />
			                     <circle id="heart1" fill="#8CE8C3" cx="4" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup2" opacity="0" transform="translate(44 6)">
			                     <circle id="heart2" fill="#CC8EF5" cx="5" cy="6" r="2" />
			                     <circle id="heart1" fill="#CC8EF5" cx="2" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup5" opacity="0" transform="translate(14 50)">
			                     <circle id="heart1" fill="#91D2FA" cx="6" cy="5" r="2" />
			                     <circle id="heart2" fill="#91D2FA" cx="2" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup4" opacity="0" transform="translate(35 50)">
			                     <circle id="heart1" fill="#F48EA7" cx="6" cy="5" r="2" />
			                     <circle id="heart2" fill="#F48EA7" cx="2" cy="2" r="2" />
			                 </g>
			                 <g id="heartgroup1" opacity="0" transform="translate(24)">
			                     <circle id="heart1" fill="#9FC7FA" cx="2.5" cy="3" r="2" />
			                     <circle id="heart2" fill="#9FC7FA" cx="7.5" cy="2" r="2" />
			                 </g>
			             </g>
			         </svg>
					</label>
				</div>
						
						<div>
				<a class="close-absolute " href="myPageMove.do">
						<svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg>
					</a>
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
	
	<!-- heart toggle -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	
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
	
	<!-- subHeader 유지 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js">
	</script>
	
</body>
</html>