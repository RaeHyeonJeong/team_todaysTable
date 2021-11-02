<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<style type="text/css">
.CattoBorderRadius {
	border-radius: 25px;
}
</style>
<head>
<!-- dropdown timepicker -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>  
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css"> -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Directory Theme by Bootstrapious</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Price Slider Stylesheets -->
<link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">

<!-- DateTimePicker  -->
<link href="resources/window-date-picker-master/dist/css/window-date-picker.css" rel="stylesheet">


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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		if('${alreadyBooked}' == 'Y') {
			alert('해당 시간에 이미 예약되어 있는 방입니다.');
		}
	});
</script>
</head>

<body style="padding-top: 72px;">
	<header class="header">
		<!-- Navbar-->
		<nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
			<div class="container-fluid">
				<div class="d-flex align-items-center">
					<a class="navbar-brand py-1" href="index.html"><img src="resources/img/logo.svg" alt="Directory logo"></a>
					<form class="form-inline d-none d-sm-flex" action="#" id="search">
						<div class="input-label-absolute input-label-absolute-left input-reset input-expand ml-lg-2 ml-xl-3">
							<label class="label-absolute" for="search_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label> <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="search_search" placeholder="검색" aria-label="Search">
							<button class="btn btn-reset btn-sm" type="reset">
								<i class="fa-times fas"></i>
							</button>
						</div>
					</form>
				</div>
				<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
					<i class="fa fa-bars"></i>
				</button>
				<!-- Navbar Collapse -->
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<form class="form-inline mt-4 mb-2 d-sm-none" action="#" id="searchcollapsed">
						<div class="input-label-absolute input-label-absolute-left input-reset w-100">
							<label class="label-absolute" for="searchcollapsed_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label> <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="searchcollapsed_search" placeholder="Search" aria-label="Search">
							<button class="btn btn-reset btn-sm" type="reset">
								<i class="fa-times fas"> </i>
							</button>
						</div>
					</form>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="homeDropdownMenuLink" href="index.html" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Home</a>
							<div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
								<a class="dropdown-item" href="index.html">Rooms</a><a class="dropdown-item" href="index-2.html">Restaurants</a><a class="dropdown-item" href="index-3.html">Travel</a><a class="dropdown-item" href="index-4.html">Real Estate <span class="badge badge-info-light ml-1 mt-n1">New</span></a>
							</div></li>
						<!-- Megamenu-->
						<li class="nav-item dropdown position-static"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Template</a>
							<div class="dropdown-menu megamenu py-lg-0">
								<div class="row">
									<div class="col-lg-9">
										<div class="row p-3 pr-lg-0 pl-lg-5 pt-lg-5">
											<div class="col-lg-3">
												<!-- Megamenu list-->
												<h6 class="text-uppercase">Homepage</h6>
												<ul class="megamenu-list list-unstyled">
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="index.html">Rooms </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="index-2.html">Restaurants </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="index-3.html">Travel </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="index-4.html">Real estate <span class="badge badge-info-light ml-1">New</span>
													</a></li>
												</ul>
												<!-- Megamenu list-->
												<h6 class="text-uppercase">Restaurants</h6>
												<ul class="megamenu-list list-unstyled">
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="category.html">Category - Map on the top </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2.html">Category - Map on the right </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3.html">Category - no map </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="detail.html">Restaurant detail </a></li>
												</ul>
											</div>
											<div class="col-lg-3">
												<!-- Megamenu list-->
												<h6 class="text-uppercase">Rooms</h6>
												<ul class="megamenu-list list-unstyled">
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="category-rooms.html">Category - Map on the top </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2-rooms.html">Category - Map on the right </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3-rooms.html">Category - no map </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="detail-rooms.html">Room detail </a></li>
												</ul>
												<!-- Megamenu list-->
												<h6 class="text-uppercase">Blog</h6>
												<ul class="megamenu-list list-unstyled">
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="blog.html">Blog </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="post.html">Post </a></li>
												</ul>
												<!-- Megamenu list-->
												<h6 class="text-uppercase">Pages</h6>
												<ul class="megamenu-list list-unstyled">
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="compare.html">Comparison </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="team.html">Team </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="contact.html">Contact </a></li>
												</ul>
											</div>
											<div class="col-lg-3">
												<!-- Megamenu list-->
												<h6 class="text-uppercase">Pages</h6>
												<ul class="megamenu-list list-unstyled">
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="pricing.html">Pricing </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="text.html">Text page </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="faq.html">F.A.Q.s </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="coming-soon.html">Coming soon </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="404.html">404 page </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base.html">Knowledge Base <span class="badge badge-info-light ml-1">New</span>
													</a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base-topic.html">Knowledge Base &mdash; Topic<span class="badge badge-info-light ml-1">New</span>
													</a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="terms.html">Terms & Conditions <span class="badge badge-info-light ml-1">New</span>
													</a></li>
												</ul>
												<!-- Megamenu list-->
												<h6 class="text-uppercase">Host</h6>
												<ul class="megamenu-list list-unstyled">
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-add-0.html">Add new listing - 6 pages </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-list.html">Bookings &mdash; list view </a></li>
												</ul>
											</div>
											<div class="col-lg-3">
												<!-- Megamenu list-->
												<h6 class="text-uppercase">User</h6>
												<ul class="megamenu-list list-unstyled">
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-profile.html">Profile </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-account.html">Account </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-personal.html">Personal info - forms </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-security.html">Password & security - forms </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="login.html">Sign in </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="signup.html">Sign up </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-1.html">Booking process - 4 pages </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-grid.html">Bookings &mdash; grid view </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-detail.html">Booking detail </a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-invoice.html">Invoice <span class="badge badge-info-light ml-1">New</span>
													</a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages.html">Messages <span class="badge badge-info-light ml-1">New</span>
													</a></li>
													<li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages-detail.html">Message Detail <span class="badge badge-info-light ml-1">New</span>
													</a></li>
												</ul>
											</div>
										</div>
										<div class="row megamenu-services d-none d-lg-flex pl-lg-5">
											<div class="col-xl-3 col-lg-6 d-flex">
												<div class="megamenu-services-item">
													<svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#destination-map-1"> </use>
                            </svg>
													<div>
														<h6 class="text-uppercase">Best rentals</h6>
														<p class="mb-0 text-muted text-sm">Find the perfect place</p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-lg-6 d-flex">
												<div class="megamenu-services-item">
													<svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#money-box-1"> </use>
                            </svg>
													<div>
														<h6 class="text-uppercase">Earn points</h6>
														<p class="mb-0 text-muted text-sm">And get great rewards</p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-lg-6 d-flex">
												<div class="megamenu-services-item">
													<svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#customer-support-1"> </use>
                            </svg>
													<div>
														<h6 class="text-uppercase">020-800-456-747</h6>
														<p class="mb-0 text-muted text-sm">24/7 Available Support</p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-lg-6 d-flex">
												<div class="megamenu-services-item">
													<svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#secure-payment-1"> </use>
                            </svg>
													<div>
														<h6 class="text-uppercase">Secure Payment</h6>
														<p class="mb-0 text-muted text-sm">Secure Payment</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-3 d-none d-lg-block">
										<img class="bg-image" src="resources/img/photo/photo-1521170665346-3f21e2291d8b.jpg" alt="">
									</div>
								</div>
							</div></li>
						<!-- /Megamenu end-->
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Docs</a>
							<div class="dropdown-menu dropdown-menu-right" aria-labelledby="docsDropdownMenuLink">
								<h6 class="dropdown-header font-weight-normal">Documentation</h6>
								<a class="dropdown-item" href="docs/docs-introduction.html">Introduction </a><a class="dropdown-item" href="docs/docs-directory-structure.html">Directory structure </a><a class="dropdown-item" href="docs/docs-gulp.html">Gulp </a><a class="dropdown-item" href="docs/docs-customizing-css.html">Customizing CSS </a><a class="dropdown-item" href="docs/docs-credits.html">Credits </a><a class="dropdown-item" href="docs/docs-changelog.html">Changelog </a>
								<div class="dropdown-divider"></div>
								<h6 class="dropdown-header font-weight-normal">Components</h6>
								<a class="dropdown-item" href="docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-directory.html">Theme </a>
							</div></li>
						<li class="nav-item"><a class="nav-link" href="login.html">Sign in</a></li>
						<li class="nav-item"><a class="nav-link" href="signup.html">Sign up</a></li>
						<li class="nav-item mt-3 mt-lg-0 ml-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="user-add-0.html">Rating List</a></li>
						<li class="nav-item mt-3 mt-lg-0 ml-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="user-add-0.html">Distance List</a></li>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<li><img class="img-responsive CattoBorderRadius" src="resources/img/avatar/avatar-8.jpg" alt="User_Image" style="width: 40px; height: 40px;">
					</ul>
				</div>
			</div>
		</nav>
		<!-- /Navbar -->
	</header>
	<section>
		<!-- Slider main container-->
		<div class="swiper-container detail-slider slider-gallery">
			<!-- Additional required wrapper-->
			<div class="swiper-wrapper">
				<!-- Slides-->
				<div class="swiper-slide">
					<a href="resources/img/photo/photo-1426122402199-be02db90eb90.jpg" data-toggle="gallery-top" title="Our street"><img class="img-fluid" src="resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Our street"></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" data-toggle="gallery-top" title="Outside"><img class="img-fluid" src="resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Outside"></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/photo/photo-1494526585095-c41746248156.jpg" data-toggle="gallery-top" title="Rear entrance"><img class="img-fluid" src="resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Rear entrance"></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/photo/photo-1484154218962-a197022b5858.jpg" data-toggle="gallery-top" title="Kitchen"><img class="img-fluid" src="resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Kitchen"></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" data-toggle="gallery-top" title="Bedroom"><img class="img-fluid" src="resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Bedroom"></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" data-toggle="gallery-top" title="Bedroom"><img class="img-fluid" src="resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Bedroom"></a>
				</div>
			</div>
			<div class="swiper-pagination swiper-pagination-white"></div>
			<div class="swiper-button-prev swiper-button-white"></div>
			<div class="swiper-button-next swiper-button-white"></div>
		</div>
	</section>
	
	<form action="bookStoreSubmit.do" class="form" id="booking-form" method="POST" autocomplete="off">
	<input type="hidden" name="store_no" value="${store_no}">
	<div class="container py-5">
		<div class="row">
			<div class="col-lg-8">
				<div class="text-block">
					<h1>${store.name}</h1>
					<div class="text-left">
						<br>
						<p>
							<i class="fa fa-heart"></i>&nbsp;알림
						</p>
						<ul class="text-muted font-weight-light">
							<li>토요일은 18시까지만 예약이 가능합니다.</li>
							<li>자리 지정은 어려우며 방문 해주시는 순서대로 착석을 도와드리고 있습니다.</li>
							<li>방문이 어려우실 경우 반드시 하루 전 취소 부탁드립니다.</li>
						</ul>
					</div>
					<br>
					<!-- 예약자 정보 DB에 저장 -->
					<div class="text-block" style="top: 100px;">
						<span class="text-primary h3">예약자 정보</span>
						<hr class="my-4">
						<!-- <form class="form" id="booking-form" method="get" action="" autocomplete="off"> -->
							<div class="form-group">
								<label class="form-label" for="name">예약자 명</label> <input class="form-control" name="name" id="name" type="text" autocomplete="off" required data-msg="Please enter your Name">
							</div>
							<div class="form-group">
								<label class="form-label" for="tel">연락처</label> <input class="form-control" name="tel" id="tel" type="text" placeholder="0001115678" autocomplete="off" required data-msg="Please enter your phone number" pattern="^[0-9]+$">
							</div>
							<div class="form-group">
								<label class="form-label" for="email">이메일</label> <input class="form-control" name="email" id="email" type="email" placeholder="name@address.com" autocomplete="off" required data-msg="Please enter your email">
							</div>
						<!-- </form> -->
						
						
						<br>
						<hr class="my-4">
						<div class="text-left">
							<p>
								<i class="fa fa-heart"></i>&nbsp;매장 정보
							</p>
							<p class="text-sm text-muted">상호 : ${store.name}</p>
							<p class="text-sm text-muted">카테고리 : ${store.category}</p>
							<p class="text-sm text-muted">소재지 : ${store.address}</p>
							<p class="text-sm text-muted">연락처 : ${store.tel}</p>
						</div>
						<br>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" id="select_userInfo_0" type="checkbox"> 
							<label class="custom-control-label" for="select_userInfo_0">
								<p class="text-sm text-muted">개인정보 수집 동의</p>
							</label>
							<div style="overflow:scroll; width:700px; height:70px; border: 1px solid gray">
								<p class="text-sm text-muted">개인정보 수집 동의 관련 내용 첨부</p>
							</div>
						</div>
						<br>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" id="select_userInfo_1" type="checkbox"> 
							<label class="custom-control-label" for="select_userInfo_1">
								<p class="text-sm text-muted">개인정보 제공 동의</p>
							</label>
							<div style="overflow:scroll; width:700px; height:70px; border: 1px solid gray">
								<p class="text-sm text-muted">개인정보 제공 동의 관련 내용 첨부</p>
								
							</div>
						</div>
						<br>
						<br>
						<p class="text-sm text-muted">예약 서비스 이용을 위한 개인정보 수집 및 제 3자 제공을 확인하였으며 이에 동의합니다.</p>
					</div>
					<!-- 객실 선택(체크박스 상태 DB에 저장해야 함)-->
					<div class="text-block" style="top: 100px;">
						<br>
						<br> <span class="text-primary h3">객실 선택</span>
						<hr class="my-4">
						<!-- <form class="form" id="booking-form" method="get" action="bookComplete.do" autocomplete="off"> -->

							<div class="list-group shadow mb-5">
								<c:forEach var="i" items="${rooms}" varStatus="cnt">
									<div class="list-group-item list-group-item-action p-4">
										<div class="row">
											<div
												class="col-2 col-lg-1 align-self-lg-center py-3 d-flex align-items-lg-center z-index-10">
												<div class="form-check">
													<input class="form-check-input" id="room_no" name="room_no" value="${i.room_no}"
														type="radio">
												</div>
											</div>
											<div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
												<div class="d-flex align-items-center mb-1 mb-lg-3">
													<h2 class="h5 mb-0">객실${cnt.count}</h2>
												</div>
												<p class="text-sm text-muted">수용가능인원:${i.capacity}</p>
											</div>
											<div class="col-10 ms-auto col-lg-7">
												<div class="row">
													<div class="col-md-8 py-3">
													
													<img src="resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Jack London" width="300" height="200">
													
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>




							<div class="form-group">
								<input type="submit" class="btn btn-primary btn-block" value="예약하기">
							</div>
						<!-- </form> -->
					</div>
				</div>
			</div>
			
			
			<div class="col-lg-4">
				<div class="p-4 shadow ml-lg-4 rounded sticky-top" style="top: 100px;">
					<span class="text-primary h3">날짜 / 인원 수 / 시간</span>
					<hr class="my-4">
					<!-- <form class="form" id="booking-form" method="get" action="#" autocomplete="off"> -->
						
						<!-- 날짜 선택 -->
						<div class="form-group">
							<label class="form-label" for="bookingDate">날짜</label>
							
							<div id="picker" class="wdp" style="left: 50px; top: 259.6px;">
								<div class="wdp-container">
									<div class="wdp-header">
										<span>Fri, 1 Oct 2021</span>
										<div>
											<div>
												<svg width="16" height="16" viewBox="0 0 1792 1792"
													class="wdp-non-opaque">
													<path
														d="M192 1664h1408v-1024h-1408v1024zm384-1216v-288q0-14-9-23t-23-9h-64q-14 0-23 9t-9 23v288q0 14 9 23t23 9h64q14 0 23-9t9-23zm768 0v-288q0-14-9-23t-23-9h-64q-14 0-23 9t-9 23v288q0 14 9 23t23 9h64q14 0 23-9t9-23zm384-64v1280q0 52-38 90t-90 38h-1408q-52 0-90-38t-38-90v-1280q0-52 38-90t90-38h128v-96q0-66 47-113t113-47h64q66 0 113 47t47 113v96h384v-96q0-66 47-113t113-47h64q66 0 113 47t47 113v96h128q52 0 90 38t38 90z"></path></svg>
												<svg width="16" height="16" viewBox="0 0 1792 1792">
													<path
														d="M1024 544v448q0 14-9 23t-23 9h-320q-14 0-23-9t-9-23v-64q0-14 9-23t23-9h224v-352q0-14 9-23t23-9h64q14 0 23 9t9 23zm416 352q0-148-73-273t-198-198-273-73-273 73-198 198-73 273 73 273 198 198 273 73 273-73 198-198 73-273zm224 0q0 209-103 385.5t-279.5 279.5-385.5 103-385.5-103-279.5-279.5-103-385.5 103-385.5 279.5-279.5 385.5-103 385.5 103 279.5 279.5 103 385.5z"></path></svg>
											</div>
											<div>
												<svg width="16" height="16" viewBox="0 0 1792 1792"
													xmlns="http://www.w3.org/2000/svg">
													<path
														d="M1490 1322q0 40-28 68l-136 136q-28 28-68 28t-68-28l-294-294-294 294q-28 28-68 28t-68-28l-136-136q-28-28-28-68t28-68l294-294-294-294q-28-28-28-68t28-68l136-136q28-28 68-28t68 28l294 294 294-294q28-28 68-28t68 28l136 136q28 28 28 68t-28 68l-294 294 294 294q28 28 28 68z"></path></svg>
											</div>
										</div>
									</div>
									<div class="wdp-body">
										<div class="wdp-date-container">
											<div class="wdp-date-header">
												<span>October 2021</span>
												<div>
													<div>
														<svg width="20" height="20" viewBox="0 0 1792 1792"
															xmlns="http://www.w3.org/2000/svg">
															<path
																d="M1395 1184q0 13-10 23l-50 50q-10 10-23 10t-23-10l-393-393-393 393q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l466 466q10 10 10 23z"></path></svg>
													</div>
													<div>
														<svg width="20" height="20" viewBox="0 0 1792 1792"
															xmlns="http://www.w3.org/2000/svg">
															<path
																d="M1395 736q0 13-10 23l-466 466q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l393 393 393-393q10-10 23-10t23 10l50 50q10 10 10 23z"></path></svg>
													</div>
												</div>
											</div>
											<div class="wdp-date-body">
												<div class="wdp-week-container">
													<div class="wdp-week-header">
														<ul class="wdp-week">
															<li>Mo</li>
															<li>Tu</li>
															<li>We</li>
															<li>Th</li>
															<li>Fr</li>
															<li>Sa</li>
															<li>Su</li>
														</ul>
													</div>
													<div class="wdp-week-body">
														<ul class="wdp-week">
															<li date="27-9-2021" class="wdp-muted">27</li>
															<li date="28-9-2021" class="wdp-muted">28</li>
															<li date="29-9-2021" class="wdp-muted">29</li>
															<li date="30-9-2021" class="wdp-muted">30</li>
															<li date="1-10-2021" class="wdp-active">1</li>
															<li date="2-10-2021">2</li>
															<li date="3-10-2021">3</li>
														</ul>
														<ul class="wdp-week">
															<li date="4-10-2021">4</li>
															<li date="5-10-2021">5</li>
															<li date="6-10-2021">6</li>
															<li date="7-10-2021">7</li>
															<li date="8-10-2021">8</li>
															<li date="9-10-2021">9</li>
															<li date="10-10-2021">10</li>
														</ul>
														<ul class="wdp-week">
															<li date="11-10-2021">11</li>
															<li date="12-10-2021">12</li>
															<li date="13-10-2021">13</li>
															<li date="14-10-2021">14</li>
															<li date="15-10-2021">15</li>
															<li date="16-10-2021">16</li>
															<li date="17-10-2021">17</li>
														</ul>
														<ul class="wdp-week">
															<li date="18-10-2021">18</li>
															<li date="19-10-2021">19</li>
															<li date="20-10-2021">20</li>
															<li date="21-10-2021">21</li>
															<li date="22-10-2021">22</li>
															<li date="23-10-2021">23</li>
															<li date="24-10-2021">24</li>
														</ul>
														<ul class="wdp-week">
															<li date="25-10-2021">25</li>
															<li date="26-10-2021">26</li>
															<li date="27-10-2021">27</li>
															<li date="28-10-2021">28</li>
															<li date="29-10-2021">29</li>
															<li date="30-10-2021">30</li>
															<li date="31-10-2021">31</li>
														</ul>
														<ul class="wdp-week">
															<li date="1-11-2021" class="wdp-muted">1</li>
															<li date="2-11-2021" class="wdp-muted">2</li>
															<li date="3-11-2021" class="wdp-muted">3</li>
															<li date="4-11-2021" class="wdp-muted">4</li>
															<li date="5-11-2021" class="wdp-muted">5</li>
															<li date="6-11-2021" class="wdp-muted">6</li>
															<li date="7-11-2021" class="wdp-muted">7</li>
														</ul>
													</div>
												</div>
												<div class="wdp-list-container"></div>
												<div class="wdp-list-container"></div>
											</div>
										</div>
										<div class="wdp-hour-container wdp-d-none">
											<div class="wdp-hour-arrow-container">
												<div>
													<svg viewBox="0 0 1792 1792"
														xmlns="http://www.w3.org/2000/svg">
														<path
															d="M1395 1184q0 13-10 23l-50 50q-10 10-23 10t-23-10l-393-393-393 393q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l466 466q10 10 10 23z"></path></svg>
												</div>
												<div>
													<svg viewBox="0 0 1792 1792"
														xmlns="http://www.w3.org/2000/svg">
														<path
															d="M1395 1184q0 13-10 23l-50 50q-10 10-23 10t-23-10l-393-393-393 393q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l466 466q10 10 10 23z"></path></svg>
												</div>
												<div>
													<svg viewBox="0 0 1792 1792"
														xmlns="http://www.w3.org/2000/svg">
														<path
															d="M1395 1184q0 13-10 23l-50 50q-10 10-23 10t-23-10l-393-393-393 393q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l466 466q10 10 10 23z"></path></svg>
												</div>
											</div>
											<div class="wdp-hour-el-container">
												<input type="text" spellcheck="false" class="wdp-hour-el">
												<input type="text" spellcheck="false" class="wdp-hour-el">
												<input type="text" spellcheck="false" class="wdp-hour-el">
											</div>
											<div class="wdp-hour-arrow-container">
												<div>
													<svg viewBox="0 0 1792 1792"
														xmlns="http://www.w3.org/2000/svg">
														<path
															d="M1395 736q0 13-10 23l-466 466q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l393 393 393-393q10-10 23-10t23 10l50 50q10 10 10 23z"></path></svg>
												</div>
												<div>
													<svg viewBox="0 0 1792 1792"
														xmlns="http://www.w3.org/2000/svg">
														<path
															d="M1395 736q0 13-10 23l-466 466q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l393 393 393-393q10-10 23-10t23 10l50 50q10 10 10 23z"></path></svg>
												</div>
												<div>
													<svg viewBox="0 0 1792 1792"
														xmlns="http://www.w3.org/2000/svg">
														<path
															d="M1395 736q0 13-10 23l-466 466q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l393 393 393-393q10-10 23-10t23 10l50 50q10 10 10 23z"></path></svg>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
						
								<!-- 이 곳의 id는 변경하지 말아주세요. -->
							<input class="form-control" type="text" name="bookingDate" id="demo" placeholder="원하는 예약 날짜를 선택해주세요." required="required">
							<br>
              				<button class="btn btn-outline-primary" id="toggle" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="true" aria-controls="leaveReview">날짜 선택</button>
							<br><br>
							
						<div class="form-group">
							<label class="form-label" for="headcount">인원 수</label> <input class="form-control" name="headcount" id="headcount" type="number" placeholder="0" autocomplete="off" required data-msg="Please enter your capacity" pattern="^[0-9]+$">
						</div>
						<br>
						<label class="form-label" for="time">시간 선택</label> <input type="text" id="time" name="time" class="form-control" style="width: 200px;">
					<!-- </form> -->
				</div>
			</div>
			
			
			
		</div>
	</div>
	</form>
	<!-- Footer-->
	<footer class="position-relative z-index-10 d-print-none">
		<!-- Main block - menus, subscribe form-->
		<div class="py-6 bg-gray-200 text-muted">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 mb-5 mb-lg-0">
						<div class="font-weight-bold text-uppercase text-dark mb-3">Directory</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
						<ul class="list-inline">
							<li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
							<li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
							<li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
							<li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
							<li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
						</ul>
					</div>
					<div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
						<h6 class="text-uppercase text-dark mb-3">Rentals</h6>
						<ul class="list-unstyled">
							<li><a class="text-muted" href="index.html">Rooms </a></li>
							<li><a class="text-muted" href="category-rooms.html">Map on top </a></li>
							<li><a class="text-muted" href="category-2-rooms.html">Side map </a></li>
							<li><a class="text-muted" href="category-3-rooms.html">No map </a></li>
							<li><a class="text-muted" href="detail-rooms.html">Room detail </a></li>
						</ul>
					</div>
					<div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
						<h6 class="text-uppercase text-dark mb-3">Pages</h6>
						<ul class="list-unstyled">
							<li><a class="text-muted" href="compare.html">Comparison </a></li>
							<li><a class="text-muted" href="team.html">Team </a></li>
							<li><a class="text-muted" href="contact.html">Contact </a></li>
						</ul>
					</div>
					<div class="col-lg-4">
						<h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>
						<p class="mb-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
						<form action="#" id="newsletter-form">
							<div class="input-group mb-3">
								<input class="form-control bg-transparent border-dark border-right-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
								<div class="input-group-append">
									<button class="btn btn-outline-dark border-left-0" type="submit">
										<i class="fa fa-paper-plane text-lg"></i>
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Copyright section of the footer-->
		<div class="py-4 font-weight-light bg-gray-800 text-gray-300">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-6 text-center text-md-left">
						<p class="text-sm mb-md-0">&copy; 2020, Your company. All rights reserved.</p>
					</div>
					<div class="col-md-6">
						<ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-right">
							<li class="list-inline-item"><img class="w-2rem" src="resources/img/visa.svg" alt="..."></li>
							<li class="list-inline-item"><img class="w-2rem" src="resources/img/mastercard.svg" alt="..."></li>
							<li class="list-inline-item"><img class="w-2rem" src="resources/img/paypal.svg" alt="..."></li>
							<li class="list-inline-item"><img class="w-2rem" src="resources/img/western-union.svg" alt="..."></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
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
	
	<!-- dateTimepicker.js -->
	<script src="resources/window-date-picker-master/dist/js/window-date-picker.js"></script>
	<script type="text/javascript">
	const picker = new WindowDatePicker({
	      el: '#picker',
	      toggleEl: '#toggle',
	      inputEl: '#demo'
	});
	
	</script>
	
	<!-- timepicker dropdown -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js">
		
	</script>
	<script type="text/javascript">
		$(function() {
			$("#time").timepicker({
				timeFormat : 'h:mm p',
				interval : 60,
				minTime : '10',
				maxTime : '6:00pm',
				defaultTime : '11',
				startTime : '10:00',
				dynamic : false,
				dropdown : true,
				scrollbar : true
			});
		});
	</script>
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
	<!-- Map-->
	<!--     <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
 -->
	<!-- Available tile layers-->
	<script src="resources/js/map-layers.js">
		
	</script>
	<!-- <script src="resources/js/map-detail.js"></script> -->
	<!-- <script>
      createDetailMap({
          mapId: 'detailMap',
          mapZoom: 14,
          mapCenter: [40.732346, -74.0014247],
          circleShow: true,
          circlePosition: [40.732346, -74.0014247]
      })
      
    </script> -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js">
		
	</script>
<!-- 	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js">
 -->		
	</script>
<!-- 	<script src="resources/js/datepicker-detail.js">
 -->		
	</script>
</body>
</html>