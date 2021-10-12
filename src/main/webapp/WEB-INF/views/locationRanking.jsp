<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>관리자 - 지역 순위</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description" content="This is an example dashboard created using build-in elements and components.">
<meta name="msapplication-tap-highlight" content="no">

<link href="/controller/resources/adminResources/css/main.css" rel="stylesheet">
</head>
<body>
	<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<div class="app-header header-shadow">
			<div class="app-header__logo">
				<!-- 페이지 좌측 상단 로고 -->
				<div>오늘의 식탁</div>
				<div class="header__pane ml-auto">
					<div>
						<button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<div class="app-header__mobile-menu">
				<div>
					<button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
						<span class="hamburger-box"> <span class="hamburger-inner"></span>
						</span>
					</button>
				</div>
			</div>
			<div class="app-header__menu">
				<span>
					<button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
						<span class="btn-icon-wrapper"> <i class="fa fa-ellipsis-v fa-w-6"></i>
						</span>
					</button>
				</span>
			</div>
			<div class="app-header__content">
				<div class="app-header-left"></div>
				<div class="app-header-right">
					<ul class="header-menu nav">
						<li class="btn-group nav-item"><a href="dashBoard.jsp" class="nav-link"> <i class="nav-link-icon fa fa-arrow-circle-left"></i> 돌아가기
						</a></li>
						<li class="dropdown nav-item"><a href="javascript:void(0);" class="nav-link"> <i class="nav-link-icon fa fa-compass"></i> 사이트 이동
						</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="app-main">
			<div class="app-sidebar sidebar-shadow">
				<div class="app-header__logo">
					<div class="logo-src"></div>
					<div class="header__pane ml-auto">
						<div>
							<button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
								<span class="hamburger-box"> <span class="hamburger-inner"></span>
								</span>
							</button>
						</div>
					</div>
				</div>
				<div class="app-header__mobile-menu">
					<div>
						<button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
				<div class="app-header__menu">
					<span>
						<button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
							<span class="btn-icon-wrapper"> <i class="fa fa-ellipsis-v fa-w-6"></i>
							</span>
						</button>
					</span>
				</div>
				<div class="scrollbar-sidebar">
					<div class="app-sidebar__inner">
						<ul class="vertical-nav-menu">
						
							<!-- 좌측 LIST -->
							<li><a href="#"> <i class="metismenu-icon pe-7s-info"></i> <font color="#3162C7">매장 정보 관리</font> <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
							</a>
								<ul>
									<li><a href="store_search.jsp"> <i class="metismenu-icon"></i> 매장 검색
									</a></li>
									<li><a href="new_store_register.jsp"> <i class="metismenu-icon"></i> 신규 매장 등록
									</a></li>
									<li><a href="store_info_modify.jsp"> <i class="metismenu-icon"></i> 매장 정보 수정
									</a></li>
									<li><a href="#"> <i class="metismenu-icon"></i> 매장 삭제
									</a></li>
								</ul></li>
							<div class="app-sidebar__heading"></div>
							<li><a href="#"> <i class="metismenu-icon pe-7s-tools"></i><font color="#3162C7"> 사이트 관리</font> <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
							</a>
								<ul>
									<li><a href="design_manage.jsp"> <i class="metismenu-icon"></i> 디자인 관리
									</a></li>
									<li><a href="board_manage.jsp"> <i class="metismenu-icon"></i> 게시판 관리
									</a></li>
								</ul></li>
							<div class="app-sidebar__heading"></div>
							<li><a href="#"> <i class="metismenu-icon pe-7s-users"></i> <font color="#3162C7">회원 관리</font> <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
							</a>
								<ul>
									<li><a href="userManage.jsp"> <i class="metismenu-icon"></i> 일반회원 정보 관리
									</a></li>
									<li><a href="userRestore.jsp"> <i class="metismenu-icon"></i> 탈퇴회원 정보 관리
									</a></li>
								</ul></li>
							<div class="app-sidebar__heading"></div>
							<li><a href="#"> <i class="metismenu-icon pe-7s-display1"></i> <font color="#3162C7">통계 관리</font> <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
							</a>
								<ul>
									<li><a href="visitGraph.jsp"> <i class="metismenu-icon"></i> 방문자 수 그래프
									</a></li>
									<li><a href="signUpGraph.jsp"> <i class="metismenu-icon"></i> 회원 가입자 수 그래프
									</a></li>
									<li><a href="shopRanking.jsp"> <i class="metismenu-icon"></i> 매장 순위
									</a></li>
									<li><a href="locationRanking.jsp"> <i class="metismenu-icon"></i> 지역 순위
									</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="app-main__outer">
				<div class="app-main__inner">
					<div class="app-page-title">
						<div class="page-title-wrapper">
							<div class="page-title-heading">
								<div class="page-title-icon">
									<i class="pe-7s-display1 icon-gradient bg-mean-fruit"> </i>
								</div>
								<!-- PAGE 중앙 상단 -->
								<div>
									지역 순위
									<div class="page-title-subheading">지역별 조회수, 찜, 리뷰수순위</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- JQUERY -->
					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
					
					<!-- 지역선택 JS -->
					<script>
					$('document').ready(function() {
						 var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
						  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
						   var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
						   var area3 = ["대덕구","동구","서구","유성구","중구"];
						   var area4 = ["광산구","남구","동구","북구","서구"];
						   var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
						   var area6 = ["남구","동구","북구","중구","울주군"];
						   var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
						   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
						   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
						   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
						   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
						   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
						   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
						   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
						   var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
						   var area16 = ["서귀포시","제주시","남제주군","북제주군"];

						 // 시/도 선택 박스 초기화
						 $("select[name^=sido1]").each(function() {
						  $selsido = $(this);
						  $.each(eval(area0), function() {
						   $selsido.append("<option value='"+this+"'>"+this+"</option>");
						  });
						  $selsido.next().append("<option value=''>구/군 선택</option>");
						 });

						 // 시/도 선택시 구/군 설정
						 $("select[name^=sido1]").change(function() {
						  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
						  var $gugun = $(this).next(); // 선택영역 군구 객체
						  $("option",$gugun).remove(); // 구군 초기화

						  if(area == "area0")
						   $gugun.append("<option value=''>구/군 선택</option>");
						  else {
						   $.each(eval(area), function() {
						    $gugun.append("<option value='"+this+"'>"+this+"</option>");
						   });
						  }
						 });
						});
					</script>
					
					<!-- 지역 선택  -->
					<div class="position-relative form-group">
						<select class="custom-select" name="sido1" id="sido1" style="width: 200px"></select>
						<select class="custom-select" name="gugun1" id="gugun1" style="width: 200px"></select>
						<select class="custom-select" name="selectList" id="selectList" style="width: 200px">
							<option value="">정렬 선택</option>
							<option value="viewList">조회수 순</option>
							<option value="heartList">찜 순</option>
							<option value="reviewList">리뷰수 순</option>
						</select>
					</div>
					
					<!-- 매장 각각의 카드형 리스트 -->
					<div class="row">
						<div class="col-md-3">
							<div class="main-card mb-3 card">
								<img width="100%" src="/controller/resources/adminResources/img/avatars/1.jpg" alt="Card image cap" class="card-img-top">
								<div class="card-body">
									<h3 class="card-title" style="font-size: 20px">매장명</h3>
									<span class="fa fa-eye"></span>&nbsp;조회수: 5000<br> <span class="fa fa-heart"></span>&nbsp;찜 수: 215<br> <span class="fa fa-comment"></span>&nbsp;리뷰수: 100
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="main-card mb-3 card">
								<img width="100%" src="/controller/resources/adminResources/img/avatars/1.jpg" alt="Card image cap" class="card-img-top">
								<div class="card-body">
									<h3 class="card-title" style="font-size: 20px">매장명</h3>
									<span class="fa fa-eye"></span>&nbsp;조회수: 100<br> <span class="fa fa-heart"></span>&nbsp;찜 수: 200<br> <span class="fa fa-comment"></span>&nbsp;리뷰수: 400
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="main-card mb-3 card">
								<img width="100%" src="/controller/resources/adminResources/img/avatars/1.jpg" alt="Card image cap" class="card-img-top">
								<div class="card-body">
									<h3 class="card-title" style="font-size: 20px">매장명</h3>
									<span class="fa fa-eye"></span>&nbsp;조회수: 400<br> <span class="fa fa-heart"></span>&nbsp;찜 수: 50<br> <span class="fa fa-comment"></span>&nbsp;리뷰수: 198
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<script type="text/javascript" src="/controller/resources/adminResources/js/main.js"></script>
</body>
</html>
