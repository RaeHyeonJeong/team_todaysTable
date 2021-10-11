<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>관리자 - 메인페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description" content="This is an example dashboard created using build-in elements and components.">
<meta name="msapplication-tap-highlight" content="no">

<link href="css/main.css" rel="stylesheet">
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
						<li class="btn-group nav-item"><a href="javascript:void(0);" class="nav-link"> <i class="nav-link-icon fa fa-arrow-circle-left"></i> 돌아가기
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
									<i class="pe-7s-user icon-gradient bg-mean-fruit"> </i>
								</div>
								<div>
									관리자 메인페이지
									<div class="page-title-subheading">관리자 로그인 후 이용하실 수 있습니다</div>
								</div>
							</div>
						</div>
					</div>

					<div class="main-card mb-3 card">
						<div class="card-body">
							<h5 class="card-title" style="font-size: 20px">관리자 메뉴</h5>
							<div class="row">
								<div class="col">
									<!-- 페이지 링크연결 -->
									<ul class="nav flex-column">
										<li class="nav-item-header nav-item" style="font-size: 15px">매장 정보 관리</li>
										<li class="nav-item"><a href="store_search.jsp" class="nav-link">매장 검색 </a></li>
										<li class="nav-item"><a href="new_store_register.jsp" class="nav-link">신규 매장 등록</a></li>
										<li class="nav-item"><a href="store_info_modify.jsp" class="nav-link">매장 정보 수정</a></li>
										<li class="nav-item"><a href="javascript:void(0);" class="nav-link">매장 삭제</a></li>
										<li class="nav-item-divider nav-item"></li>

										<li class="nav-item-header nav-item" style="font-size: 15px">사이트 관리</li>
										<li class="nav-item"><a href="design_manage.jsp" class="nav-link">디자인 관리 </a></li>
										<li class="nav-item"><a href="board_manage.jsp" class="nav-link">게시판관리 </a></li>
									</ul>
								</div>
								<div class="col">
									<ul class="nav flex-column">
										<li class="nav-item-header nav-item" style="font-size: 15px">회원 관리</li>
										<li class="nav-item"><a href="userManage.jsp" class="nav-link"><span>일반회원 정보 관리</span> </a></li>
										<li class="nav-item"><a href="userRestore.jsp" class="nav-link"><span>탈퇴회원 정보 관리</span></a></li>
										<li class="nav-item-divider nav-item"></li>

										<li class="nav-item-header nav-item" style="font-size: 15px">통계 관리</li>
										<li class="nav-item"><a href="visitGraph.jsp" class="nav-link"><span>방문자 수 그래프</span> </a></li>
										<li class="nav-item"><a href="signUpGraph.jsp" class="nav-link"><span>회원 가입자 수 그래프</span> </a></li>
										<li class="nav-item"><a href="shopRanking.jsp" class="nav-link"><span>매장 순위</span></a></li>
										<li class="nav-item"><a href="locationRanking.jsp" class="nav-link"><span>지역 순위</span></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
