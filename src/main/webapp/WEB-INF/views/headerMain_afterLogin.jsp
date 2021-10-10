<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="header">
	<!-- Navbar-->
	<nav class="navbar navbar-expand-lg shadow navbar-light bg-white">
		<div class="container-fluid d-flex">
			<div class="justify-content-start align-items-center">
				<a class="navbar-brand py-1 ps-4" href="index.html">
					<img src="resources/img/logo.svg">
				</a>
			</div>
			<ul class="navbar-nav  justify-content-conter">
				<li class="nav-item  pe-5">
					<button class="btn btn-secondary mb-1" type="button" onclick="location.href = '#' ">평점기준 식당 리스트</button>
				</li>
				<li class="nav-item">
					<button class="btn btn-secondary mb-1" type="button" onclick="location.href = '#' ">거리기준 식당 리스트</button>
				</li>
			</ul>
			<ul class="navbar-nav  justify-content-end">
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
	</nav>
	<!-- /Navbar -->
</header>
