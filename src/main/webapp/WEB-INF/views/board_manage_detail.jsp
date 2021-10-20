<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>관리자 - 매장 검색</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description"
	content="This is an example dashboard created using build-in elements and components.">
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
<link href="/controller/resources/adminResources/css/main.css" rel="stylesheet">
</head>
<body>
	<div
		class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
		<div class="app-header header-shadow">
			<div class="app-header__logo">
				<div>오늘의 식탁</div>
				<div class="header__pane ml-auto">
					<div>
						<button type="button"
							class="hamburger close-sidebar-btn hamburger--elastic"
							data-class="closed-sidebar">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<div class="app-header__mobile-menu">
				<div>
					<button type="button"
						class="hamburger hamburger--elastic mobile-toggle-nav">
						<span class="hamburger-box"> <span class="hamburger-inner"></span>
						</span>
					</button>
				</div>
			</div>
			<div class="app-header__menu">
				<span>
					<button type="button"
						class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
						<span class="btn-icon-wrapper"> <i
							class="fa fa-ellipsis-v fa-w-6"></i>
						</span>
					</button>
				</span>
			</div>
			<div class="app-header__content">
				<div class="app-header-left"></div>
				<div class="app-header-right">
                    <ul class="header-menu nav">
                        <li class="btn-group nav-item">
                            <a href="dashBoard.jsp" class="nav-link">
                                <i class="nav-link-icon fa fa-arrow-circle-left"></i>
                                돌아가기
                            </a>
                        </li>
                        <li class="dropdown nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <i class="nav-link-icon fa fa-compass"></i>
                                 사이트 이동
                            </a>
                        </li>
                    </ul>
					<div class="header-btn-lg pr-0">
						<div class="widget-content p-0">
							<div class="widget-content-wrapper">
								<div class="widget-content-left">
									<div class="btn-group">
										<a data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false" class="p-0 btn"> <img width="42"
											class="rounded-circle" src="assets/images/avatars/1.jpg"
											alt=""> <i class="fa fa-angle-down ml-2 opacity-8"></i>
										</a>
										<div tabindex="-1" role="menu" aria-hidden="true"
											class="dropdown-menu dropdown-menu-right">
											<button type="button" tabindex="0" class="dropdown-item">User
												Account</button>
											<button type="button" tabindex="0" class="dropdown-item">Settings</button>
											<h6 tabindex="-1" class="dropdown-header">Header</h6>
											<button type="button" tabindex="0" class="dropdown-item">Actions</button>
											<div tabindex="-1" class="dropdown-divider"></div>
											<button type="button" tabindex="0" class="dropdown-item">Dividers</button>
										</div>
									</div>
								</div>
								<div class="widget-content-left  ml-3 header-user-info">
									<div class="widget-heading">Alina Mclourd</div>
									<div class="widget-subheading">VP People Manager</div>
								</div>
								<div class="widget-content-right header-user-info ml-3">
									<button type="button"
										class="btn-shadow p-1 btn btn-primary btn-sm show-toastr-example">
										<i class="fa text-white fa-calendar pr-1 pl-1"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="ui-theme-settings">
			<button type="button" id="TooltipDemo"
				class="btn-open-options btn btn-warning">
				<i class="fa fa-cog fa-w-16 fa-spin fa-2x"></i>
			</button>
			<div class="theme-settings__inner">
				<div class="scrollbar-container">
					<div class="theme-settings__options-wrapper">
						<h3 class="themeoptions-heading">Layout Options</h3>
						<div class="p-3">
							<ul class="list-group">
								<li class="list-group-item">
									<div class="widget-content p-0">
										<div class="widget-content-wrapper">
											<div class="widget-content-left mr-3">
												<div class="switch has-switch switch-container-class"
													data-class="fixed-header">
													<div class="switch-animate switch-on">
														<input type="checkbox" checked data-toggle="toggle"
															data-onstyle="success">
													</div>
												</div>
											</div>
											<div class="widget-content-left">
												<div class="widget-heading">Fixed Header</div>
												<div class="widget-subheading">Makes the header top
													fixed, always visible!</div>
											</div>
										</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="widget-content p-0">
										<div class="widget-content-wrapper">
											<div class="widget-content-left mr-3">
												<div class="switch has-switch switch-container-class"
													data-class="fixed-sidebar">
													<div class="switch-animate switch-on">
														<input type="checkbox" checked data-toggle="toggle"
															data-onstyle="success">
													</div>
												</div>
											</div>
											<div class="widget-content-left">
												<div class="widget-heading">Fixed Sidebar</div>
												<div class="widget-subheading">Makes the sidebar left
													fixed, always visible!</div>
											</div>
										</div>
									</div>
								</li>
								<li class="list-group-item">
									<div class="widget-content p-0">
										<div class="widget-content-wrapper">
											<div class="widget-content-left mr-3">
												<div class="switch has-switch switch-container-class"
													data-class="fixed-footer">
													<div class="switch-animate switch-off">
														<input type="checkbox" data-toggle="toggle"
															data-onstyle="success">
													</div>
												</div>
											</div>
											<div class="widget-content-left">
												<div class="widget-heading">Fixed Footer</div>
												<div class="widget-subheading">Makes the app footer
													bottom fixed, always visible!</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<h3 class="themeoptions-heading">
							<div>Header Options</div>
							<button type="button"
								class="btn-pill btn-shadow btn-wide ml-auto btn btn-focus btn-sm switch-header-cs-class"
								data-class="">Restore Default</button>
						</h3>
						<div class="p-3">
							<ul class="list-group">
								<li class="list-group-item">
									<h5 class="pb-2">Choose Color Scheme</h5>
									<div class="theme-settings-swatches">
										<div class="swatch-holder bg-primary switch-header-cs-class"
											data-class="bg-primary header-text-light"></div>
										<div class="swatch-holder bg-secondary switch-header-cs-class"
											data-class="bg-secondary header-text-light"></div>
										<div class="swatch-holder bg-success switch-header-cs-class"
											data-class="bg-success header-text-dark"></div>
										<div class="swatch-holder bg-info switch-header-cs-class"
											data-class="bg-info header-text-dark"></div>
										<div class="swatch-holder bg-warning switch-header-cs-class"
											data-class="bg-warning header-text-dark"></div>
										<div class="swatch-holder bg-danger switch-header-cs-class"
											data-class="bg-danger header-text-light"></div>
										<div class="swatch-holder bg-light switch-header-cs-class"
											data-class="bg-light header-text-dark"></div>
										<div class="swatch-holder bg-dark switch-header-cs-class"
											data-class="bg-dark header-text-light"></div>
										<div class="swatch-holder bg-focus switch-header-cs-class"
											data-class="bg-focus header-text-light"></div>
										<div class="swatch-holder bg-alternate switch-header-cs-class"
											data-class="bg-alternate header-text-light"></div>
										<div class="divider"></div>
										<div
											class="swatch-holder bg-vicious-stance switch-header-cs-class"
											data-class="bg-vicious-stance header-text-light"></div>
										<div
											class="swatch-holder bg-midnight-bloom switch-header-cs-class"
											data-class="bg-midnight-bloom header-text-light"></div>
										<div class="swatch-holder bg-night-sky switch-header-cs-class"
											data-class="bg-night-sky header-text-light"></div>
										<div
											class="swatch-holder bg-slick-carbon switch-header-cs-class"
											data-class="bg-slick-carbon header-text-light"></div>
										<div class="swatch-holder bg-asteroid switch-header-cs-class"
											data-class="bg-asteroid header-text-light"></div>
										<div class="swatch-holder bg-royal switch-header-cs-class"
											data-class="bg-royal header-text-light"></div>
										<div
											class="swatch-holder bg-warm-flame switch-header-cs-class"
											data-class="bg-warm-flame header-text-dark"></div>
										<div
											class="swatch-holder bg-night-fade switch-header-cs-class"
											data-class="bg-night-fade header-text-dark"></div>
										<div
											class="swatch-holder bg-sunny-morning switch-header-cs-class"
											data-class="bg-sunny-morning header-text-dark"></div>
										<div
											class="swatch-holder bg-tempting-azure switch-header-cs-class"
											data-class="bg-tempting-azure header-text-dark"></div>
										<div class="swatch-holder bg-amy-crisp switch-header-cs-class"
											data-class="bg-amy-crisp header-text-dark"></div>
										<div
											class="swatch-holder bg-heavy-rain switch-header-cs-class"
											data-class="bg-heavy-rain header-text-dark"></div>
										<div
											class="swatch-holder bg-mean-fruit switch-header-cs-class"
											data-class="bg-mean-fruit header-text-dark"></div>
										<div
											class="swatch-holder bg-malibu-beach switch-header-cs-class"
											data-class="bg-malibu-beach header-text-light"></div>
										<div class="swatch-holder bg-deep-blue switch-header-cs-class"
											data-class="bg-deep-blue header-text-dark"></div>
										<div
											class="swatch-holder bg-ripe-malin switch-header-cs-class"
											data-class="bg-ripe-malin header-text-light"></div>
										<div
											class="swatch-holder bg-arielle-smile switch-header-cs-class"
											data-class="bg-arielle-smile header-text-light"></div>
										<div
											class="swatch-holder bg-plum-plate switch-header-cs-class"
											data-class="bg-plum-plate header-text-light"></div>
										<div
											class="swatch-holder bg-happy-fisher switch-header-cs-class"
											data-class="bg-happy-fisher header-text-dark"></div>
										<div
											class="swatch-holder bg-happy-itmeo switch-header-cs-class"
											data-class="bg-happy-itmeo header-text-light"></div>
										<div
											class="swatch-holder bg-mixed-hopes switch-header-cs-class"
											data-class="bg-mixed-hopes header-text-light"></div>
										<div
											class="swatch-holder bg-strong-bliss switch-header-cs-class"
											data-class="bg-strong-bliss header-text-light"></div>
										<div
											class="swatch-holder bg-grow-early switch-header-cs-class"
											data-class="bg-grow-early header-text-light"></div>
										<div class="swatch-holder bg-love-kiss switch-header-cs-class"
											data-class="bg-love-kiss header-text-light"></div>
										<div
											class="swatch-holder bg-premium-dark switch-header-cs-class"
											data-class="bg-premium-dark header-text-light"></div>
										<div
											class="swatch-holder bg-happy-green switch-header-cs-class"
											data-class="bg-happy-green header-text-light"></div>
									</div>
								</li>
							</ul>
						</div>
						<h3 class="themeoptions-heading">
							<div>Sidebar Options</div>
							<button type="button"
								class="btn-pill btn-shadow btn-wide ml-auto btn btn-focus btn-sm switch-sidebar-cs-class"
								data-class="">Restore Default</button>
						</h3>
						<div class="p-3">
							<ul class="list-group">
								<li class="list-group-item">
									<h5 class="pb-2">Choose Color Scheme</h5>
									<div class="theme-settings-swatches">
										<div class="swatch-holder bg-primary switch-sidebar-cs-class"
											data-class="bg-primary sidebar-text-light"></div>
										<div
											class="swatch-holder bg-secondary switch-sidebar-cs-class"
											data-class="bg-secondary sidebar-text-light"></div>
										<div class="swatch-holder bg-success switch-sidebar-cs-class"
											data-class="bg-success sidebar-text-dark"></div>
										<div class="swatch-holder bg-info switch-sidebar-cs-class"
											data-class="bg-info sidebar-text-dark"></div>
										<div class="swatch-holder bg-warning switch-sidebar-cs-class"
											data-class="bg-warning sidebar-text-dark"></div>
										<div class="swatch-holder bg-danger switch-sidebar-cs-class"
											data-class="bg-danger sidebar-text-light"></div>
										<div class="swatch-holder bg-light switch-sidebar-cs-class"
											data-class="bg-light sidebar-text-dark"></div>
										<div class="swatch-holder bg-dark switch-sidebar-cs-class"
											data-class="bg-dark sidebar-text-light"></div>
										<div class="swatch-holder bg-focus switch-sidebar-cs-class"
											data-class="bg-focus sidebar-text-light"></div>
										<div
											class="swatch-holder bg-alternate switch-sidebar-cs-class"
											data-class="bg-alternate sidebar-text-light"></div>
										<div class="divider"></div>
										<div
											class="swatch-holder bg-vicious-stance switch-sidebar-cs-class"
											data-class="bg-vicious-stance sidebar-text-light"></div>
										<div
											class="swatch-holder bg-midnight-bloom switch-sidebar-cs-class"
											data-class="bg-midnight-bloom sidebar-text-light"></div>
										<div
											class="swatch-holder bg-night-sky switch-sidebar-cs-class"
											data-class="bg-night-sky sidebar-text-light"></div>
										<div
											class="swatch-holder bg-slick-carbon switch-sidebar-cs-class"
											data-class="bg-slick-carbon sidebar-text-light"></div>
										<div class="swatch-holder bg-asteroid switch-sidebar-cs-class"
											data-class="bg-asteroid sidebar-text-light"></div>
										<div class="swatch-holder bg-royal switch-sidebar-cs-class"
											data-class="bg-royal sidebar-text-light"></div>
										<div
											class="swatch-holder bg-warm-flame switch-sidebar-cs-class"
											data-class="bg-warm-flame sidebar-text-dark"></div>
										<div
											class="swatch-holder bg-night-fade switch-sidebar-cs-class"
											data-class="bg-night-fade sidebar-text-dark"></div>
										<div
											class="swatch-holder bg-sunny-morning switch-sidebar-cs-class"
											data-class="bg-sunny-morning sidebar-text-dark"></div>
										<div
											class="swatch-holder bg-tempting-azure switch-sidebar-cs-class"
											data-class="bg-tempting-azure sidebar-text-dark"></div>
										<div
											class="swatch-holder bg-amy-crisp switch-sidebar-cs-class"
											data-class="bg-amy-crisp sidebar-text-dark"></div>
										<div
											class="swatch-holder bg-heavy-rain switch-sidebar-cs-class"
											data-class="bg-heavy-rain sidebar-text-dark"></div>
										<div
											class="swatch-holder bg-mean-fruit switch-sidebar-cs-class"
											data-class="bg-mean-fruit sidebar-text-dark"></div>
										<div
											class="swatch-holder bg-malibu-beach switch-sidebar-cs-class"
											data-class="bg-malibu-beach sidebar-text-light"></div>
										<div
											class="swatch-holder bg-deep-blue switch-sidebar-cs-class"
											data-class="bg-deep-blue sidebar-text-dark"></div>
										<div
											class="swatch-holder bg-ripe-malin switch-sidebar-cs-class"
											data-class="bg-ripe-malin sidebar-text-light"></div>
										<div
											class="swatch-holder bg-arielle-smile switch-sidebar-cs-class"
											data-class="bg-arielle-smile sidebar-text-light"></div>
										<div
											class="swatch-holder bg-plum-plate switch-sidebar-cs-class"
											data-class="bg-plum-plate sidebar-text-light"></div>
										<div
											class="swatch-holder bg-happy-fisher switch-sidebar-cs-class"
											data-class="bg-happy-fisher sidebar-text-dark"></div>
										<div
											class="swatch-holder bg-happy-itmeo switch-sidebar-cs-class"
											data-class="bg-happy-itmeo sidebar-text-light"></div>
										<div
											class="swatch-holder bg-mixed-hopes switch-sidebar-cs-class"
											data-class="bg-mixed-hopes sidebar-text-light"></div>
										<div
											class="swatch-holder bg-strong-bliss switch-sidebar-cs-class"
											data-class="bg-strong-bliss sidebar-text-light"></div>
										<div
											class="swatch-holder bg-grow-early switch-sidebar-cs-class"
											data-class="bg-grow-early sidebar-text-light"></div>
										<div
											class="swatch-holder bg-love-kiss switch-sidebar-cs-class"
											data-class="bg-love-kiss sidebar-text-light"></div>
										<div
											class="swatch-holder bg-premium-dark switch-sidebar-cs-class"
											data-class="bg-premium-dark sidebar-text-light"></div>
										<div
											class="swatch-holder bg-happy-green switch-sidebar-cs-class"
											data-class="bg-happy-green sidebar-text-light"></div>
									</div>
								</li>
							</ul>
						</div>
						<h3 class="themeoptions-heading">
							<div>Main Content Options</div>
							<button type="button"
								class="btn-pill btn-shadow btn-wide ml-auto active btn btn-focus btn-sm">Restore
								Default</button>
						</h3>
						<div class="p-3">
							<ul class="list-group">
								<li class="list-group-item">
									<h5 class="pb-2">Page Section Tabs</h5>
									<div class="theme-settings-swatches">
										<div role="group" class="mt-2 btn-group">
											<button type="button"
												class="btn-wide btn-shadow btn-primary btn btn-secondary switch-theme-class"
												data-class="body-tabs-line">Line</button>
											<button type="button"
												class="btn-wide btn-shadow btn-primary active btn btn-secondary switch-theme-class"
												data-class="body-tabs-shadow">Shadow</button>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="app-main">
			<div class="app-sidebar sidebar-shadow">
				<div class="app-header__logo">
					<div class="logo-src"></div>
					<div class="header__pane ml-auto">
						<div>
							<button type="button"
								class="hamburger close-sidebar-btn hamburger--elastic"
								data-class="closed-sidebar">
								<span class="hamburger-box"> <span
									class="hamburger-inner"></span>
								</span>
							</button>
						</div>
					</div>
				</div>
				<div class="app-header__mobile-menu">
					<div>
						<button type="button"
							class="hamburger hamburger--elastic mobile-toggle-nav">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
				<div class="app-header__menu">
					<span>
						<button type="button"
							class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
							<span class="btn-icon-wrapper"> <i
								class="fa fa-ellipsis-v fa-w-6"></i>
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
                                    <i class="pe-7s-menu icon-gradient bg-ripe-malin">
									</i>
                                </div>
                                <%
                                	String menu = request.getParameter("menu");
                                	if(menu != null) {
	                                	if(menu.equals("notice")) {
	                                		menu = "공지사항";
	                                	} else if(menu.equals("recommend")) {
	                                		menu = "맛집 추천 게시판";
	                                	} else if(menu.equals("QnA")) {
	                                		menu = "QnA 게시판";
	                                	}                                		
                                	}
                                %>
								<div>게시판 관리 - <%=menu%>
									<div class="page-title-subheading">
									</div>
								</div>
							</div>
							
							<div class="page-title-actions">
								<div class="scrollbar-sidebar">
									<div class="app-sidebar__inner">
										<ul class="vertical-nav-menu">
											<li><a href="#"><font color="#3162C7">게시판 관리</font> <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
											</a>
											<ul>
												<li><a href="board_manage.jsp"> <i class="metismenu-icon"></i> 공지사항</a></li>
												<li><a href="board_manage_recommend.jsp"> <i class="metismenu-icon"></i> 맛집 추천 게시판</a></li>
												<li><a href="board_manage_QnA.jsp"> <i class="metismenu-icon"></i> QnA 게시판</a></li>
											</ul></li>
										</ul>
									</div>
								</div>
							 </div>
						</div>
					</div>
					<div class="main-card mb-3 card">
						<div class="card-body">
							<form>
							<div class="container">
								<div class="position-relative row form-group"><label for="title" class="col-sm-2 col-form-label">제목</label>
									<div class="col-sm-10"><input name="title" id="title" type="text" class="form-control"></div>
								</div>
								<div class="position-relative row form-group"><label for="content" class="col-sm-2 col-form-label">내용</label>
									<div class="col-sm-10"><textarea name="content" id="content" class="form-control"></textarea></div>
								</div>
								<div class="position-relative row form-group"><label for="imageFile" class="col-sm-2 col-form-label">이미지 업로드</label>
								<div class="col-sm-10"><input multiple="multiple" name="imageFile[]" id="imageFile" type="file" class="form-control-file">
									<small class="form-text text-muted"></small>
								</div>
							</div>
								<div class="row">
								<div class="col-sm-8"></div>
								<div class="col-sm-2"><button class="btn btn-primary">게시글 수정</button></div>
								<div class="col-sm-2"><button class="btn btn-primary">게시글 삭제</button></div>
								</div>
							</div>
							</form>
						</div>
					</div>

					<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
				</div>
			</div>
			<script type="text/javascript" src="/controller/resources/adminResources/js/main.js"></script>
		</div>
	</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">매장 삭제</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p class="mb-0">정말로 선택하신 매장을 삭제하시겠습니까?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
                <button type="button" class="btn btn-primary">네</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
