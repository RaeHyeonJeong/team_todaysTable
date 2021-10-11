<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="header">
	<!-- Navbar-->
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
				<button class="btn btn-sm btn-primary" onclick="location.href='#'">Filter</button>
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
</header>