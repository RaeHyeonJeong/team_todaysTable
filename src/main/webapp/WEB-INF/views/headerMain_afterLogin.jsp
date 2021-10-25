<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="header">
	<!-- Navbar-->
	<nav class="navbar navbar-expand-lg shadow navbar-light bg-white" style="padding-bottom: 10px; padding-top: 10px;">
		<div class="container-fluid">
			<div class="d-flex align-items-center">
				<a class="navbar-brand py-1" href="index.html">
					<img src="resources/img/logo.svg" alt="Directory logo">
				</a>
			</div>
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
					<li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block pe-5"><a class="btn btn-secondary" href="listAvgPoint.jsp">평점기준 식당 리스트</a></li>
					<li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-secondary" href="listDistance.jsp">거리기준 식당 리스트</a></li>
				</ul>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item  text-muted fw-bold pe-1 position-sticky">Jack London</li>
					<li class="nav-item dropdown ms-lg-3"><a id="userDropdownMenuLink" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<img class="avatar avatar-sm avatar-border-white me-2" src="resources/img/avatar/avatar-10.jpg" alt="Jack London">
						</a>
						<div class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdownMenuLink">
							<a class="dropdown-item" href="user-booking-1.html">마이페이지</a>
							<a class="dropdown-item" href="user-grid.html">예약 내역 관리</a>
							<a class="dropdown-item" href="user-booking-detail.html">내가 작성한 게시물</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="login.html">
								<i class="fas fa-sign-out-alt me-2 text-muted"></i> Sign out
							</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- /Navbar -->
</header>