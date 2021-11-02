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

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Directory Theme by Bootstrapious</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">

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

 .checkbox {
     display: none
 }

 .checkbox:checked+label svg #heart {
     transform: scale(0.2);
     fill: #E2264D;
     animation: animateHeart .3s linear forwards .25s
 }

 .checkbox:checked+label svg #main-circ {
     transition: all 2s;
     animation: animateCircle .3s linear forwards;
     opacity: 1
 }

 .checkbox:checked+label svg #heartgroup1 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup1 #heart1 {
     transform: scale(0) translate(0, -30px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup1 #heart2 {
     transform: scale(0) translate(10px, -50px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup2 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup2 #heart1 {
     transform: scale(0) translate(30px, -15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup2 #heart2 {
     transform: scale(0) translate(60px, -15px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup3 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup3 #heart1 {
     transform: scale(0) translate(30px, 0px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup3 #heart2 {
     transform: scale(0) translate(60px, 10px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup4 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup4 #heart1 {
     transform: scale(0) translate(30px, 15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup4 #heart2 {
     transform: scale(0) translate(40px, 50px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup5 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup5 #heart1 {
     transform: scale(0) translate(-10px, 20px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup5 #heart2 {
     transform: scale(0) translate(-60px, 30px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup6 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup6 #heart1 {
     transform: scale(0) translate(-30px, 0px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup6 #heart2 {
     transform: scale(0) translate(-60px, -5px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup7 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup7 #heart1 {
     transform: scale(0) translate(-30px, -15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup7 #heart2 {
     transform: scale(0) translate(-55px, -30px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup2 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 .checkbox:checked+label svg #heartgroup3 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 .checkbox:checked+label svg #heartgroup4 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 .checkbox:checked+label svg #heartgroup5 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 .checkbox:checked+label svg #heartgroup6 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 .checkbox:checked+label svg #heartgroup7 {
     opacity: 1;
     transition: .1s opacity .3s
 }

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
		
		$("button#submit").click(function(e) {
			e.preventDefault();
			
			/* var content = $("textarea#content").html();
			console.log(content.length);
			content = content.substring(0, content.length-1);
			console.log(content); */
			var form = $("#postUpReview")[0];
			var data = new FormData(form);
			data.append('taste_grade', $("select#taste_grade").val());
			data.append('service_grade', $("select#service_grade").val());
			data.append('mood_grade', $("select#mood_grade").val());
			data.append('content', $("textarea#content").text());
			data.append('store_no', '${param.store_no}');
			$.ajax({
				type:'POST',
				enctype:'multipart/form-data',
				url:'putUpReview.do',
				dataType:'json',
				data:data,
				processData:false,
				contentType:false,
				cache:false,
				timeout:600000,
				success: function(v) {
					var addHtml = "<div class='d-flex d-block d-sm-flex review'>"
								+	"<div class='text-md-center flex-shrink-0 me-4 me-xl-5'>"
								+	"<img class='d-block avatar avatar-xl p-2 mb-2'"
								+	"src='resources/img/avatar/avatar-8.jpg' alt='Padmé Amidala'>"
								+	"<span class='text-uppercase text-muted text-sm'>"
								+	v.reg_date
								+	"</span>"
								+	"</div>"
								+	"<div>"
								+	"<h6 class='mt-2 mb-1'>"
								+	"${nickname}</h6>"
								+	"<div class='mb-2'>";
								
					for(var i = 1; i <= 5; i++) {
						if(i <= v.avg_grade) {
							addHtml += "<i class='fa fa-xs fa-star text-primary'></i>"	
						} else {
							addHtml += "<i class='fa fa-xs fa-star text-gray-200'></i>"
						}
					}
					addHtml	+=	"</div>"
							+	"<p class='text-muted text-sm'>"
							+	v.content
							+	"</p>";
							
					addHtml += "<div class='row gallery mb-3 ms-n1 me-n1'>";
					/*for(var i = 0 ; i < v.image_list.length; i++) {
						addHtml +=  "<div class='col-lg-4 col-6 px-1 mb-2'>"
								+	"<a href='resources/img/review/"
								+	v.image_list[i].image_path
								+	"' data-fancybox='gallery' title='"+v.image_list[i].image_no+"'>"		
								+	"<img class='img-fluid' src='resources/img/review/"
								+	v.image_list[i].image_path
								+	"' alt='...'></a></div>";
					}*/
					for(var i = 0 ; i < v.image_list.length; i++) {
						addHtml +=  "<div class='col-lg-4 col-6 px-1 mb-2'>"
								+	"<img class='img-fluid' src='resources/img/review/"
								+	v.image_list[i].image_path
								+	"' alt='...'></div>";
					}
					addHtml +=	"</div>"
							+	"</div>"
							+	"</div>";
							
					$("#review").append(addHtml);
				},
				error:function(e) {
					alert(e);
				}
			});
		});
	});
</script>
</head>
<body style="padding-top: 72px;">
	<!-- HEADER include -->
	<jsp:include page="subHeader.jsp" />
	
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



	<div class="container py-5">
		<div class="row">
			<div class="col-lg-8">
					
				<div class="text-block">
					<p class="text-primary"><i class="fa-map-marker-alt fa me-1"></i>${param.name}</p>
					<h1>${store.name}</h1>
					
					<!-- 찜하기 버튼 (체크박스 활성화로 상태 값을 DB에 저장해야 함)-->
						<div class="heartbox" style="position: absolute; left: 850px; top:70px;">
					
							<input type="checkbox" class="checkbox" id="checkbox" /> 
							<label for="checkbox"> 
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





						<!-- 별점 -->
						<div class="mb-2">
							<i class="flex-shrink-1 mb-0 card-stars text-xs text-right"></i>
							<c:forEach var="i" begin="1" end="5">
								<c:choose>
									<c:when test="${i le avgGrade}">
										<i class="fa fa-star text-warning"></i>
									</c:when>
									<c:otherwise>
										<i class="fa fa-star text-gray-300"></i>		
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</div>
						
						<br>

						<ul class="text-muted font-weight-light">
							<li>주소 : ${store.address}</li>
							<li>전화번호 : ${store.tel}</li>
							<li>위치 : ${store.location}</li>
							<li>주차여부 : 
								<c:choose>
									<c:when test="${canPark eq 'Y'}">가능</c:when>
									<c:otherwise>불가능</c:otherwise>
								</c:choose>
							</li>
							<li>메뉴 : <br> 
								<c:forEach var="i" items="${menu}">
									${i.menu_name} - ${i.price}원 <br>
								</c:forEach>
							</li>
							<br>
						</ul>

						<!-- 예약페이지로 이동 -->
						<div class="form-group">
							<form action="moveToBookStore.do" method="post">
								<input type="hidden" name="store_no" value="${param.store_no}">
								<button class="btn btn-primary btn-block">예약</button>
							</form>
						</div>
					</div>



					<div class="text-block">
			            <h5 class="mb-4">사진</h5>
			            <div class="row gallery mb-3 ms-n1 me-n1">
			              <div class="col-lg-4 col-6 px-1 mb-2"><a href="resources/img/photo/photo-1426122402199-be02db90eb90.jpg" data-fancybox="gallery" title="Our street"><img class="img-fluid" src="resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="..."></a></div>
			              <div class="col-lg-4 col-6 px-1 mb-2"><a href="resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" data-fancybox="gallery" title="Outside"><img class="img-fluid" src="resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="..."></a></div>
			              <div class="col-lg-4 col-6 px-1 mb-2"><a href="resources/img/photo/photo-1494526585095-c41746248156.jpg" data-fancybox="gallery" title="Rear entrance"><img class="img-fluid" src="resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="..."></a></div>
			              <div class="col-lg-4 col-6 px-1 mb-2"><a href="resources/img/photo/photo-1484154218962-a197022b5858.jpg" data-fancybox="gallery" title="Kitchen"><img class="img-fluid" src="resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="..."></a></div>
			              <div class="col-lg-4 col-6 px-1 mb-2"><a href="resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" data-fancybox="gallery" title="Bedroom"><img class="img-fluid" src="resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="..."></a></div>
			              <div class="col-lg-4 col-6 px-1 mb-2"><a href="resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" data-fancybox="gallery" title="Bedroom"><img class="img-fluid" src="resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="..."></a></div>
			            </div>
		          	</div>



				<!-- Review -->
				<div class="py-5">
					<button class="btn btn-outline-primary collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#leaveReview"
						aria-expanded="false" aria-controls="leaveReview">리뷰 작성</button>
					<div class="mt-4 collapse" id="leaveReview" style="">
						<!-- <h5 class="mb-4"></h5> -->
				 		<form class="form" id="postUpReview" method="POST" enctype="multipart/form-data">
							<div class="row">
								<div class="col-sm-6">
									<!-- DB에 저장되어 있는 닉네임 값 불러와야함 -->
									<div class="mb-4">
										<label class="form-label" for="name">닉네임 *</label> <input
											class="form-control" type="text" name="nickname" id="nickname"
											placeholder="Database nickname stored value" disabled="disabled" value="${nickname}">
									</div>
								</div>
								
								<!-- 리뷰 상 남긴 평점 값을 DB에 저장해야함 -->
								<div class="col-sm-6">
									<div class="mb-4">
										<label class="form-label" for="taste_grade">맛 평점 *</label> <select
											class="form-select focus-shadow-0" name="taste_grade" id="taste_grade">
											<option value="5">★★★★★ (5/5)</option>
											<option value="4">★★★★☆ (4/5)</option>
											<option value="3">★★★☆☆ (3/5)</option>
											<option value="2">★★☆☆☆ (2/5)</option>
											<option value="1">★☆☆☆☆ (1/5)</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<!-- 리뷰 상 남긴 평점 값을 DB에 저장해야함 -->
								<div class="col-sm-6">
									<div class="mb-4">
										<label class="form-label" for="service_grade">서비스 평점 *</label> <select
											class="form-select focus-shadow-0" name="service_grade" id="service_grade">
											<option value="5">★★★★★ (5/5)</option>
											<option value="4">★★★★☆ (4/5)</option>
											<option value="3">★★★☆☆ (3/5)</option>
											<option value="2">★★☆☆☆ (2/5)</option>
											<option value="1">★☆☆☆☆ (1/5)</option>
										</select>
									</div>
								</div>
								
								<!-- 리뷰 상 남긴 평점 값을 DB에 저장해야함 -->
								<div class="col-sm-6">
									<div class="mb-4">
										<label class="form-label" for="mood_grade">분위기 평점 *</label> <select
											class="form-select focus-shadow-0" name="mood_grade" id="mood_grade">
											<option value="5">★★★★★ (5/5)</option>
											<option value="4">★★★★☆ (4/5)</option>
											<option value="3">★★★☆☆ (3/5)</option>
											<option value="2">★★☆☆☆ (2/5)</option>
											<option value="1">★☆☆☆☆ (1/5)</option>
										</select>
									</div>
								</div>
							</div>
							<div class="mb-4">
								<label class="form-label" for="content">내용 *</label>
								<textarea class="form-control" rows="4" name="content"
									id="content" placeholder="Enter your review" required="required"></textarea>
							</div>
							<div class="form-group mb-4">
								<label class="form-label" for="files">이미지 업로드 *</label> <input class="form-control" id="files" multiple="multiple" type="file" name="files">
							</div>
							<button id="submit" class="btn btn-primary">게시</button>
							<!-- <input class="btn btn-primary" type="submit" value="게시"> -->
						</form>
					</div>
				</div>


				<div id="review" class="text-block">
					<p class="subtitle text-sm text-primary">리뷰</p>
					<c:forEach var="i" items="${reviewList}">
						<div class="d-flex d-block d-sm-flex review">
							<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
								<img class="d-block avatar avatar-xl p-2 mb-2"
									src="resources/img/avatar/avatar-4.jpg" alt="Jabba Hut"><span
									class="text-uppercase text-muted text-sm">${i.reg_date}</span>
							</div>
							<div>
								<h6 class="mt-2 mb-1">${i.nickname}</h6>
								<div class="mb-2">
									<c:forEach var="cnt" begin="1" end="5">
										<c:choose>
											<c:when test="${cnt le i.avg_grade}">
												<i class="fa fa-xs fa-star text-primary"></i>
											</c:when>
											<c:otherwise>
												<i class='fa fa-xs fa-star text-gray-200'></i>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</div>
								<p class="text-muted text-sm">${i.content}</p>
								<div class="row gallery mb-3 ms-n1 me-n1">
									<c:forEach var="j" items="${i.image_list}">
										<div class="col-lg-4 col-6 px-1 mb-2"><a href="resources/img/review/${j.image_path}" data-fancybox="gallery" title="${j.image_no}"><img class="img-fluid" src="resources/img/review/${j.image_path}" alt="..."></a></div>
									</c:forEach>
				    			</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			            
			<!-- 지도 -->
			<div class="col-lg-4">
				<div class="p-4 shadow ml-lg-4 rounded sticky-top" style="top: 100px;">
					<h5 class="mb-4">위치</h5>
					<div class="map-wrapper-300 mb-3">
						<!-- <div class="h-100" id="detailMap"></div> -->
						<div id="map" style="width:100%;height:300px;"></div>
					</div>
					<!-- 길찾기 버튼 -->
					<div class="text-left mt-5">
						
						<button class="btn btn-outline-primary" id="txt" type="txt"
						 onclick="location.href='https://map.kakao.com/link/to/${param.name},${param.latitude},${param.longitude}';">길찾기
						 </button>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	
	
	<!-- 사용자 위치 기준 관련 매장 -->
	<div class="py-6 bg-gray-100">
		<div class="container">
			<h5 class="mb-0">관련 매장</h5>
			<p class="subtitle text-sm text-primary mb-4">You may also like</p>
			<!-- Slider main container-->
			<div class="swiper-container swiper-container-mx-negative swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
				<!-- Additional required wrapper-->
				<div class="swiper-wrapper pb-5">
					<!-- Slides-->
					<div class="swiper-slide h-auto px-2">
						<!-- place item-->
						<div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden gradient-overlay">
									<img class="img-fluid" src="resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Store name3" /><a class="tile-link" href="detail-rooms.html"></a>
									<div class="card-img-overlay-top text-right">
										<a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
									</div>
								</div>
								<div class="card-body d-flex align-items-center">
									<div class="w-100">
										<h6 class="card-title">
											<a class="text-decoration-none text-dark" href="detail-rooms.html">Store name1</a>
										</h6>
										<div class="d-flex card-subtitle mb-3">
											<p class="flex-shrink-1 mb-0 card-stars text-xs text-right">
												<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- place item-->
						<div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden gradient-overlay">
									<img class="img-fluid" src="resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Store name4" /><a class="tile-link" href="detail-rooms.html"></a>
									<div class="card-img-overlay-top text-right">
										<a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
									</div>
								</div>
								<div class="card-body d-flex align-items-center">
									<div class="w-100">
										<h6 class="card-title">
											<a class="text-decoration-none text-dark" href="detail-rooms.html">Store name2</a>
										</h6>
										<div class="d-flex card-subtitle mb-3">
											<p class="flex-shrink-1 mb-0 card-stars text-xs text-right">
												<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- place item-->
						<div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden gradient-overlay">
									<img class="img-fluid" src="resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Store name5" /><a class="tile-link" href="detail-rooms.html"></a>
									<div class="card-img-overlay-top text-right">
										<a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
									</div>
								</div>
								<div class="card-body d-flex align-items-center">
									<div class="w-100">
										<h6 class="card-title">
											<a class="text-decoration-none text-dark" href="detail-rooms.html">Store name3</a>
										</h6>
										<div class="d-flex card-subtitle mb-3">
											<p class="flex-shrink-1 mb-0 card-stars text-xs text-right">
												<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i><i class="fa fa-star text-gray-300"> </i>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- place item-->
						<div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden gradient-overlay">
									<img class="img-fluid" src="resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Store name" /><a class="tile-link" href="detail-rooms.html"></a>
									<div class="card-img-overlay-top text-right">
										<a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
									</div>
								</div>
								<div class="card-body d-flex align-items-center">
									<div class="w-100">
										<h6 class="card-title">
											<a class="text-decoration-none text-dark" href="detail-rooms.html">Store name4</a>
										</h6>
										<div class="d-flex card-subtitle mb-3">
											<p class="flex-shrink-1 mb-0 card-stars text-xs text-right">
												<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- place item-->
						<div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden gradient-overlay">
									<img class="img-fluid" src="resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="가게명" /><a class="tile-link" href="detail-rooms.html"></a>
									<div class="card-img-overlay-top text-right">
										<a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
									</div>
								</div>
								<div class="card-body d-flex align-items-center">
									<div class="w-100">
										<h6 class="card-title">
											<a class="text-decoration-none text-dark" href="detail-rooms.html">Store name5</a>
										</h6>
										<div class="d-flex card-subtitle mb-3">
											<p class="flex-shrink-1 mb-0 card-stars text-xs text-right">
												<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- place item-->
						<div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden gradient-overlay">
									<img class="img-fluid" src="resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Store name2" /><a class="tile-link" href="detail-rooms.html"></a>
									<div class="card-img-overlay-top text-right">
										<a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
									</div>
								</div>
								<div class="card-body d-flex align-items-center">
									<div class="w-100">
										<h6 class="card-title">
											<a class="text-decoration-none text-dark" href="detail-rooms.html">Store name6</a>
										</h6>
										<div class="d-flex card-subtitle mb-3">
											<p class="flex-shrink-1 mb-0 card-stars text-xs text-right">
												<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"> </i>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- If we need pagination (쪽수)-->
				<div class="swiper-pagination"></div>
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
	<!-- Map-->
	<script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
	<!-- Available tile layers-->
	<script src="resources/js/map-layers.js">
	</script>
	<!-- 지도 핀표시 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1738ef78b208b65a2926c9bbc75401d6"></script>
	<script>
	
	//latitude 위도
	var latitude = "<c:out value="${param.latitude}" />";
	//longitude 경도
	var longitude = "<c:out value="${param.longitude}" />";
	
	console.log(latitude +' '+longitude);
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
	        level: 5 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	if (navigator.geolocation) {

		// GeoLocation을 이용해서 접속 위치를 얻어옵니다
		navigator.geolocation.getCurrentPosition(function(position) {

			var lat = position.coords.latitude, // 위도
			lon = position.coords.longitude; // 경도

			var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			message = '<div style="padding:5px;">내 위치</div>'; // 인포윈도우에 표시될 내용입니다

			// 마커와 인포윈도우를 표시합니다
			displayMarker(locPosition, message);

		});

	}
	
	//가게명핀 나타낸 곳
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(latitude, longitude); 
	message = '<div style="padding:5px;"> ${param.name} </div>'; // 인포윈도우에 표시될 내용입니다
	
	// 마커와 인포윈도우를 표시합니다
	displayMarker(markerPosition, message);
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
	var iwContent = '<div style="padding:5px;"> ${param.name} </div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    content : iwContent,
	    removable : iwRemoveable
	});

	// 마커에 클릭이벤트를 등록합니다
	kakao.maps.event.addListener(marker, 'click', function() {
	      // 마커 위에 인포윈도우를 표시합니다
	      infowindow.open(map, marker);  
	});
	
	
	// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
	// marker.setMap(null);    
	
	
	// 지도에 마커와 인포윈도우를 표시하는 함수입니다
	function displayMarker(locPosition, message) {
		
		//내 위치핀 나타낸 곳
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			map : map,
			position : locPosition
		});

		var iwContent = message, // 인포윈도우에 표시할 내용
		iwRemoveable = true;

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			content : iwContent,
			removable : iwRemoveable
		});

		// 인포윈도우를 마커위에 표시합니다 
		infowindow.open(map, marker);
		
		// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
		var iwContent = '<div style="padding:5px;">내 위치</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    content : iwContent,
		    removable : iwRemoveable
		});

		// 마커에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'click', function() {
		      // 마커 위에 인포윈도우를 표시합니다
		      infowindow.open(map, marker);  
		});
		
	}
	
	</script>
	<script src="resources/js/map-detail.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js">
		
	</script>
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js"> </script>
    <script src="resources/js/datepicker-detail.js">   </script> -->
</body>
</html>