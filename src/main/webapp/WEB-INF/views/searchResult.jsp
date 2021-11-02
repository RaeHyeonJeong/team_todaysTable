<%@page import="java.util.ArrayList"%>
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
	<section>
		<!-- 지도 -->
		<div id="map" class="map-wrapper-450" style="width: auto; height: 400px;"></div>
	</section>
	<section class="py-5">
		<div class="container">
			<div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
				<div class="me-3">
					<p class="mb-3 mb-md-0">
						<!-- 검색어 삽입 -->
						<%
						String search_value = request.getParameter("search");
						String location_value = request.getParameter("location");
						if(location_value.isEmpty() && search_value.isEmpty()){
						%>
							검색어가 입력되지 않은 경우 전체리스트를 보여드립니다.
						<%}
						else if(location_value.isEmpty()){%>
							'<strong>${param.search}</strong>' 에 대한 검색 결과
						<% }
						else{
						%>
						'<strong>${param.location}</strong>' 지역의 '<strong>${param.search}</strong>' 에 대한 검색 결과
						<%	
						}
						%>
					</p>
				</div>
				<div>
					<label class="form-label me-2" for="form_sort">Sort by</label> <select class="selectpicker" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
						<option value="sortBy_0">평점순</option>
						<option value="sortBy_1">거리순</option>
						<option value="sortBy_2">상호명순</option>
					</select>
				</div>
			</div>
			
			<!-- Infinity Scroll-->
			<div class="listbody"style="margin:auto;">
				<article>
				<div class="storelist" id="storelist">
				
				</div>
				</article>
			</div>
			
			<a me></a>
			
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
	<script type="text/javascript">
	var key = '${param.search}';
	var key2 = '${param.location}';
	console.log(key);
	console.log(key2);
	
	function searchList(){
		$.ajax({
			type : 'POST',
			url : 'storelist.do',
			data : "",
			async : false,
			contentType : "json",
			success : function(data) {
				
				//리스트출력하기
				if (data.length == 0) {
					alert('데이터가 존재하지 않습니다.');
				} else {
					 $(data).each(function(idx){
						
						//페이지 로드 시 0~2번의 가게정보데이터를 추가해준다.
						if(idx <=2)
						{
							//Object 변수를 이용한 url 파라미터 만들기		
							var obj = data[idx];
							var url = 'moveTostoreDetail.do';
							Object.keys(obj).forEach(function(key, index) {
								  url = url + (index === 0 ? "?" : "&") + key + "=" + obj[key];
							});
							
							
							$("div#storelist").append(
									
									'<div class="storeInfo" id="storeInfo">'+'<div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92" style="margin-left:10%; width:900px;">'+
									'<p style="display:none;">'+ url +'</p> <div class="card h-100 border-0 shadow">'+
										'<div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(resources/img/photo/restaurant-1436018626274-89acd1d6ec9d.jpg); min-height: 200px;">'+
											'<a class="tile-link" href=" '+ url +' "></a>' +
											'<div class="card-img-overlay-bottom z-index-20">'+
												'<h4 class="text-white text-shadow">'+data[idx].name+'</h4>'+
											'</div>'+
										'</div>'+
										'<div class="card-body">'+
											'<p class="text-sm text-muted fw-bold mb-3">카테고리 :'+ data[idx].category   +'</p>'+
											'<p class="text-sm text-muted fw-bold mb-3">주소 :'+  data[idx].address  +'</p>'+
											'<p class="text-sm text-muted fw-bold mb-3">전화번호 :'+  data[idx].tel  +'</p>'+
											'<div class="d-flex justify-content-between align-items-center">'+
												'<p class="mb-2 text-sm fw-bold">'+
													'<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>'+
												'</p>'+
												'<form action="#"> <a class="position-relative z-index-40" href="javascript: void();">'+
														'<button class="btn btn-primary btn-sm" type="submit">찜하기'+ '</button>'+
												'</a></form> </div> </div> </div> </div> </div>'
							)
						}
						else
						{
							
							//시작 변수 : 그냥 idx를 사용하면 여기서는 each함수를 사용했기 때문에 바로 길이개수끝까지 돌아가기 때문에 카운트변수로 지정해준 뒤 안에서 자동증가하게끔 바꾸었음.
							var count = 3;
							
							//스크롤 바닥 감지
							window.onscroll = function(e) {
							    //window height + window scrollY 값이 document height보다 클 경우,
							    if((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
									if(count >= data.length - 1 )return;//비교 다 했으면 탈출
							    	
							    	if(count>=3 && count < data.length)count++; //count를 받아온 정보길이 개수만큼 자동증가
							    	
							    	//Object 변수를 이용한 url 파라미터 만들기		
									var obj = data[count];
									var url = 'moveTostoreDetail.do';
									Object.keys(obj).forEach(function(key, index) {
										  url = url + (index === 0 ? "?" : "&") + key + "=" + obj[key];
									});
									
							    	
							    	//실행할 로직 (콘텐츠 추가 = 가게정보 데이터)
							        var addContent = '<div class="storeInfo" id="storeInfo">'+'<div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92" style="margin-left:10%;width:900px;">'+
							        '<p style="display:none;">'+ url +'</p> <div class="card h-100 border-0 shadow">'+
									'<div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(resources/img/photo/restaurant-1436018626274-89acd1d6ec9d.jpg); min-height: 200px;">'+
										'<a class="tile-link" href=" '+ url +' "></a>' +
										'<div class="card-img-overlay-bottom z-index-20">'+
											'<h4 class="text-white text-shadow">'+data[count].name+'</h4>'+
										'</div>'+
									'</div>'+
									'<div class="card-body">'+
										'<p class="text-sm text-muted fw-bold mb-3">카테고리 :'+ data[count].category   +'</p>'+
										'<p class="text-sm text-muted fw-bold mb-3">주소 :'+  data[count].address  +'</p>'+
										'<p class="text-sm text-muted fw-bold mb-3">전화번호 :'+  data[count].tel  +'</p>'+
										'<div class="d-flex justify-content-between align-items-center">'+
											'<p class="mb-2 text-sm fw-bold">'+
												'<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>'+
											'</p>'+
											'<form action="#"> <a class="position-relative z-index-40" href="javascript: void();">'+
													'<button class="btn btn-primary btn-sm" type="submit">찜하기'+ '</button>'+
											'</a></form> </div> </div> </div> </div> </div>' ;
							        
									//article에 추가되는 콘텐츠를 append
							        $('article').append(addContent);
							    }
							};
							 
						}
						
						
					});
					 
				}
			},
			error : function(request, status, error) {
				alert(error);
			}
		});
	}
	
	
	function wordSearch()
	{
		
		$.ajax({
			type : 'POST',
			url : 'storelist.do',
			data : "",
			async : false,
			contentType : "json",
			success : function(data) {
				
				//리스트출력하기
				if (data.length == 0) {
					alert('데이터가 존재하지 않습니다.');
				} else {
					var storeArray = new Array();
		 			var word_count = 0;
		 			$(data).each(function(idx){
							//Object 변수를 이용한 url 파라미터 만들기		
							var obj = data[idx];
							var url = 'moveTostoreDetail.do';
							Object.keys(obj).forEach(function(key, index) {
								  url = url + (index === 0 ? "?" : "&") + key + "=" + obj[key];
							});
							
							//매장리스트에 검색단어가 포함되어있는지 확인 후 출력
							var text = data[idx].name;
							var findStr = key;
							
								if (text.indexOf(findStr) != -1) {
									word_count++;
									if(word_count <= 3)
									{
										$("div#storelist").append(
												
												'<div class="storeInfo" id="storeInfo">'+'<div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92" style="margin-left:10%; width:900px;">'+
												'<p style="display:none;">'+ url +'</p> <div class="card h-100 border-0 shadow">'+
													'<div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(resources/img/photo/restaurant-1436018626274-89acd1d6ec9d.jpg); min-height: 200px;">'+
														'<a class="tile-link" href=" '+ url +' "></a>' +
														'<div class="card-img-overlay-bottom z-index-20">'+
															'<h4 class="text-white text-shadow">'+data[idx].name+'</h4>'+
														'</div>'+
													'</div>'+
													'<div class="card-body">'+
														'<p class="text-sm text-muted fw-bold mb-3">카테고리 :'+ data[idx].category   +'</p>'+
														'<p class="text-sm text-muted fw-bold mb-3">주소 :'+  data[idx].address  +'</p>'+
														'<p class="text-sm text-muted fw-bold mb-3">전화번호 :'+  data[idx].tel  +'</p>'+
														'<div class="d-flex justify-content-between align-items-center">'+
															'<p class="mb-2 text-sm fw-bold">'+
																'<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>'+
															'</p>'+
															'<form action="#"> <a class="position-relative z-index-40" href="javascript: void();">'+
																	'<button class="btn btn-primary btn-sm" type="submit">찜하기'+ '</button>'+
															'</a></form> </div> </div> </div> </div> </div>'
										)
									}
									else
									{
										//console.log("store_no : "+ data[idx].store_no);
										//console.log("idx :" +idx);
										storeArray.push(idx);
									}
								}
							
					});
		 			
		 			//스크롤 바닥 감지
					window.onscroll = function(e) {
					    //window height + window scrollY 값이 document height보다 클 경우,
					    if((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
							//더이상 리스트에 값이 없으면 탈출
							if(data[storeArray[0]]==null)return;
							
							//Object 변수를 이용한 url 파라미터 만들기		
							var obj = data[storeArray[0]];
							var url = 'moveTostoreDetail.do';
							Object.keys(obj).forEach(function(key, index) {
								  url = url + (index === 0 ? "?" : "&") + key + "=" + obj[key];
							});
							
							
							//실행할 로직 (콘텐츠 추가 = 가게정보 데이터)
					        var addContent = '<div class="storeInfo" id="storeInfo">'+'<div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92" style="margin-left:10%;width:900px;">'+
					        '<p style="display:none;">'+ url +'</p> <div class="card h-100 border-0 shadow">'+
							'<div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(resources/img/photo/restaurant-1436018626274-89acd1d6ec9d.jpg); min-height: 200px;">'+
								'<a class="tile-link" href=" '+ url +' "></a>' +
								'<div class="card-img-overlay-bottom z-index-20">'+
									'<h4 class="text-white text-shadow">'+data[storeArray[0]].name+'</h4>'+
								'</div>'+
							'</div>'+
							'<div class="card-body">'+
								'<p class="text-sm text-muted fw-bold mb-3">카테고리 :'+ data[storeArray[0]].category   +'</p>'+
								'<p class="text-sm text-muted fw-bold mb-3">주소 :'+  data[storeArray[0]].address  +'</p>'+
								'<p class="text-sm text-muted fw-bold mb-3">전화번호 :'+ data[storeArray[0]].tel  +'</p>'+
								'<div class="d-flex justify-content-between align-items-center">'+
									'<p class="mb-2 text-sm fw-bold">'+
										'<i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>'+
									'</p>'+
									'<form action="#"> <a class="position-relative z-index-40" href="javascript: void();">'+
											'<button class="btn btn-primary btn-sm" type="submit">찜하기'+ '</button>'+
									'</a></form> </div> </div> </div> </div> </div>' ;
					        
							//article에 추가되는 콘텐츠를 append
					        $('article').append(addContent);
							storeArray.shift();//배열 첫번째 아이템 제거
					    }
		 			}
					 
				}
			},
			error : function(request, status, error) {
				alert(error);
			}
		});
		
	}
	
	
	window.onload = function()
	{
		//검색어없이 search를 누른 경우
		<%if(location_value.isEmpty() && search_value.isEmpty()){%>
		searchList();
		<%} //지역만 검색한 경우
		else if(search_value.isEmpty()){
		%>
			
		<%	
		} //단어만 검색한 경우
		else if(location_value.isEmpty()){
		%>
			wordSearch();
		<% }//둘 다 있는 경우
		else{
		%>
			
		<%	
		}
		%>
		
		
	}
	
	
	
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
	<script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
	<!-- Available tile layers-->
	<script src="resources/js/map-layers.js">
		
	</script>
	<script src="resources/js/map-category.js">
		
	</script>
	<!-- 현재 위치 가져오기 (와이파이, IP에 따라 정확도 낮음) -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1738ef78b208b65a2926c9bbc75401d6"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 2
		// 지도의 확대 레벨 
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

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

			displayMarker(locPosition, message);
		}

		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {

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

			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
			
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
</body>
</html>