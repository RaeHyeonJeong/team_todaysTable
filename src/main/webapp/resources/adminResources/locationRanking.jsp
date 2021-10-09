<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!--
    =========================================================
    * ArchitectUI HTML Theme Dashboard - v1.0.0
    =========================================================
    * Product Page: https://dashboardpack.com
    * Copyright 2019 DashboardPack (https://dashboardpack.com)
    * Licensed under MIT (https://github.com/DashboardPack/architectui-html-theme-free/blob/master/LICENSE)
    =========================================================
    * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
    -->
<link href="./css/main.css" rel="stylesheet">
</head>
<body>
	<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<div class="app-header header-shadow">
			<div class="app-header__logo">
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
						<li class="btn-group nav-item"><a href="dashBoard.html" class="nav-link"> <i class="nav-link-icon fa fa-arrow-circle-left"></i> 돌아가기
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
							<li><a href="#"> <i class="metismenu-icon pe-7s-info"></i> <font color="#3162C7">매장 정보 관리 </font><i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
							</a>
								<ul>
									<li><a href="#"> <i class="metismenu-icon"></i> 매장 검색
									</a></li>
									<li><a href="#"> <i class="metismenu-icon"></i> 신규 매장 등록
									</a></li>
									<li><a href="#"> <i class="metismenu-icon"></i> 매장 정보 수정
									</a></li>
									<li><a href="#"> <i class="metismenu-icon"></i> 매장 삭제
									</a></li>
								</ul></li>
							<div class="app-sidebar__heading"></div>
							<li><a href="#"> <i class="metismenu-icon pe-7s-tools"></i> <font color="#3162C7">사이트 관리</font> <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
							</a>
								<ul>
									<li><a href="#"> <i class="metismenu-icon"></i> 디자인 관리
									</a></li>
									<li><a href="#"> <i class="metismenu-icon"></i> 게시판 관리
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
								<div>
									지역 순위
									<div class="page-title-subheading">지역별 조회수, 찜, 리뷰수순위</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="position-relative form-group">
						<!-- <label for="exampleCustomSelect" class="">Custom Select</label> -->
						<select type="select" id="exampleCustomSelect" name="customSelect" class="custom-select" style="width: 200px">
							<option value="">----시, 도----</option>
							<option value="daysignup">서울특별시</option>
							<option value="monthsignup">인천광역시</option>
							<option value="yearsignup">경기도</option>
						</select>
						<!-- <label for="exampleCustomSelect" class="">Custom Select</label> -->
						<select type="select" id="exampleCustomSelect" name="customSelect" class="custom-select" style="width: 200px">
							<option value="">----구, 군----</option>
							<option value="daysignup">광진구</option>
							<option value="monthsignup">관악구</option>
							<option value="yearsignup">송파구</option>
						</select>
						<!-- <label for="exampleCustomSelect" class="">Custom Select</label> -->
						<select type="select" id="exampleCustomSelect" name="customSelect" class="custom-select" style="width: 200px">
							<option value="">Select</option>
							<option value="daysignup">조회수 순</option>
							<option value="monthsignup">찜 순</option>
							<option value="yearsignup">리뷰수 순</option>
						</select>
					</div>
					
					<div class="row">
						<div class="col-md-3">
							<div class="main-card mb-3 card">
								<img width="100%" src="12.jpg" alt="Card image cap" class="card-img-top">
								<div class="card-body">
									<h3 class="card-title" style="font-size: 20px">매장명</h3>
									<span class="fa fa-eye"></span>&nbsp;조회수: 5000<br> <span class="fa fa-heart"></span>&nbsp;찜 수: 215<br> <span class="fa fa-comment"></span>&nbsp;리뷰수: 100
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="main-card mb-3 card">
								<img width="100%" src="11.jpg" alt="Card image cap" class="card-img-top">
								<div class="card-body">
									<h3 class="card-title" style="font-size: 20px">매장명</h3>
									<span class="fa fa-eye"></span>&nbsp;조회수: 100<br> <span class="fa fa-heart"></span>&nbsp;찜 수: 200<br> <span class="fa fa-comment"></span>&nbsp;리뷰수: 400
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="main-card mb-3 card">
								<img width="100%" src="1.jpg" alt="Card image cap" class="card-img-top">
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
		<script type="text/javascript" src="./js/main.js"></script>
</body>
</html>
