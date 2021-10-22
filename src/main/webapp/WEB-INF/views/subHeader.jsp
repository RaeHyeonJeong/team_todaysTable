<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="header">
	<!-- Navbar-->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
 
        function fliterBtn(){
	            if($('#filter_list').css('display') == 'none'){
	            $('#filter_list').fadeIn(1000);
	        }else{
	            $('#filter_list').hide();
	        }
        }
    </script>
	<nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white" style="padding-bottom: 10px; padding-top: 10px;">
		<div class="container-fluid">
			<div class="d-flex align-items-center">
				<a class="navbar-brand py-1" href="index.html">
					<img src="resources/img/logo.svg" alt="Directory logo">
				</a>
			</div>
			<form class="form-inline d-none d-sm-flex" action="#" id="search">
				<div class="input-label-absolute input-label-absolute-left ms-lg-2 ms-xl-3">
					<label class="label-absolute" for="search_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label> <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="search_search" placeholder="Search" aria-label="Search" type="search">
				</div>
				<button class="btn btn-sm btn-primary mx-1" onclick="location.href='#'" type="submit">search</button>
				<button class="btn btn-primary h-100 inline-block" onclick="fliterBtn()" type="button" data-bs-toggle="collapse" data-bs-target="#moreFilters" aria-expanded="false" aria-controls="moreFilters">
							<i class="fas fa-filter me-1"></i>FILTER
				</button>
				
			</form>
			<!-- 화면이 접혔을때 펼침 버튼 -->
			<button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<i class="fa fa-bars"></i>
			</button>
			<!-- Navbar Collapse -->
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<form class="form-inline mt-4 mb-2 d-sm-none" action="#" id="searchcollapsed">
					<div class="input-label-absolute input-label-absolute-left w-100">
						<label class="label-absolute" for="searchcollapsed_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label> <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="searchcollapsed_search" placeholder="Search" aria-label="Search" type="search">
					</div>
					<button class="btn btn-sm btn-primary mx-1 my-2" onclick="location.href='#'" type="submit">search</button>
					<button class="btn btn-sm btn-primary my-2" onclick="location.href='#'">Filter</button>
				</form>
				<ul class="navbar-nav  ms-auto">
					<li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block pe-3"><a class="btn btn-secondary" href="listAvgPoint.jsp">평점기준 식당 리스트</a></li>
					<li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-secondary" href="listDistance.jsp">거리기준 식당 리스트</a></li>
				</ul>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="login.html">Sign in</a></li>
					<li class="nav-item"><a class="nav-link" href="signup.html">Sign up</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- /Navbar -->
			<div id="filter_list" style="display: none;">
			<br><br>
			<div class="container d-flex justify-content-left">
			<form action="#">
				<div class="row">
					<div class="search-bar rounded col-11 p-lg-4 px-4 py-4 position-relative mt-n5 z-index-20">
						<div class="collapse" id="moreFilters">
							<div class="col-12 mb-4">
								<label class="form-label">Menu Option</label>
								<ul class="list-inline mb-0">
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_0" name="type[]"> <label class="form-check-label" for="type_0">아침 메뉴</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_1" name="type[]"> <label class="form-check-label" for="type_1">점심 메뉴</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_2" name="type[]"> <label class="form-check-label" for="type_2">어린이메뉴</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_3" name="type[]"> <label class="form-check-label" for="type_3">글루텐 프리</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_4" name="type[]"> <label class="form-check-label" for="type_4">베지테리언</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="type_4" name="type[]"> <label class="form-check-label" for="type_4">콜키지 프리</label>
										</div>
									</li>
								</ul>
							</div>
							<div class="mb-4">
								<label class="form-label">매장 추가 정보</label>
								<ul class="list-inline mb-0">
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="cuisine_0" name="cuisine[]"> <label class="form-check-label" for="cuisine_0">주차장</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="cuisine_1" name="cuisine[]"> <label class="form-check-label" for="cuisine_1">FREE WIFI</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="cuisine_2" name="cuisine[]"> <label class="form-check-label" for="cuisine_2">예약 가능</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="cuisine_3" name="cuisine[]"> <label class="form-check-label" for="cuisine_3">포장 가능</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="cuisine_4" name="cuisine[]"> <label class="form-check-label" for="cuisine_4">애완동물 가능</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="cuisine_5" name="cuisine[]"> <label class="form-check-label" for="cuisine_5">대관 가능</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="cuisine_5" name="cuisine[]"> <label class="form-check-label" for="cuisine_5">외부 좌석</label>
										</div>
									</li>
									
								</ul>
							</div>
							<div class="row">
								<div class="col-xl-6 mb-3">
									<label class="form-label">유아, 어린이</label>
									<ul class="list-inline mb-0">
										<li class="list-inline-item">
											<div class="form-check">
												<input class="form-check-input" type="radio" id="vegetarians_0" name="vegetarians"> <label class="form-check-label" for="vegetarians_0">유아용 의자</label>
											</div>
										</li>
										<li class="list-inline-item">
											<div class="form-check">
												<input class="form-check-input" type="radio" id="vegetarians_1" name="vegetarians"> <label class="form-check-label" for="vegetarians_1">키즈존</label>
											</div>
										</li>
										<li class="list-inline-item">
											<div class="form-check">
												<input class="form-check-input" type="radio" id="vegetarians_1" name="vegetarians"> <label class="form-check-label" for="vegetarians_1">노키즈존</label>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			</div>
			<br>
			</div>
</header>