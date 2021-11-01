<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>관리자 - 매장 검색</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description" content="This is an example dashboard created using build-in elements and components.">
<meta name="msapplication-tap-highlight" content="no">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="/controller/resources/adminResources/css/main.css" rel="stylesheet">
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
						<li class="btn-group nav-item"><a href="dashBoard.do" class="nav-link"> <i class="nav-link-icon fa fa-arrow-circle-left"></i> 돌아가기
						</a></li>
						<li class="dropdown nav-item"><a href="main.do" class="nav-link"> <i class="nav-link-icon fa fa-compass"></i> 사이트 이동
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
									<li><a href="storeSearch.do"> <i class="metismenu-icon"></i> 매장 검색
									</a></li>
									<li><a href="newStoreRegister.do"> <i class="metismenu-icon"></i> 신규 매장 등록
									</a></li>
									<!-- <li><a href="store_info_modify.jsp"> <i class="metismenu-icon"></i> 매장 정보 수정
									</a></li> -->
									<!-- <li><a href="#"> <i class="metismenu-icon"></i> 매장 삭제
									</a></li> -->
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
									<i class="pe-7s-menu icon-gradient bg-ripe-malin"> </i>
								</div>
								<div>
									매장 검색
									<div class="page-title-subheading"></div>
								</div>
							</div>
							
							<!-- 검색 버튼 스크립트 -->
							<script type="text/javascript">
							$(function(){
								$('#searchBtn').click(function(){
									self.location = "storeSearch.do" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
								});
								$('#homeBtn').click(function(){
									document.location.href = "storeSearch.do";
								})
							});
							</script>

							<!-- 검색 버튼 -->
							<div class="page-title-actions">
							<form role="form" method="post">
										<div class="search">
									<div class="input-group" style="padding-right: 80px">
											<select type="select" id="Select" name="searchType" class="custom-select" style="width: auto">
												<option value="n" <c:out value="${scri.searchType == null ? 'selected' : ' '}"/>>-----</option>
												<option value="name" <c:out value="${scri.searchType eq 'n' ? 'selected' : ' '}"/>>매장명</option>
												<option value="loc" <c:out value="${scri.searchType eq 'l' ? 'selected' : ' '}"/>>지역</option>
											</select>
											<input type="text" class="form-control" id="keywordInput" name="Keyword" value="${scri.keyword}" placeholder="입력하세요" style="width: auto">
											<div class="input-group-append">
												<button type="button" class="btn btn-secondary" id="searchBtn">검색</button>
											</div>
											&nbsp;
												<button type="button" class="btn btn-secondary" id="homeBtn">돌아가기</button>
										</div>
									</div>
									</form>
							</div>
						</div>
					</div>

					<!-- STORE LIST -->
					<c:forEach items="${list }" var="list">
						<div class="main-card mb-3 card">
							<div class="card-body">

								<div class="position-relative row form-group">
									<img class="col-sm-4" src="/controller/resources/adminResources/img/store.jpg" />
								</div>

								<div class="position-relative row form-group">
									<label for="storeName" class="col-sm-1 col-form-label"><font style="color: #3162C7">매장명</font></label>
									<div class="col-sm-4">${list.name }</div>
									<label for="category" class="col-sm-1 col-form-label"><font style="color: #3162C7">전화번호</font></label>
									<div class="col-sm-4">
										<h6 name="category" id="category">${list.tel }</h6>
									</div>
								</div>

								<div class="position-relative row form-group">
									<label for="category" class="col-sm-1 col-form-label"><font style="color: #3162C7">카테고리</font></label>
									<div class="col-sm-4">
										<h6 name="category" id="category">${list.category }</h6>
									</div>
									<label for="category" class="col-sm-1 col-form-label"><font style="color: #3162C7">영업시간</font></label>
									<div class="col-sm-4">
										<h6 name="category" id="category">${list.business_hours }</h6>
									</div>
									<div class="col-sm-2">
										<button class="btn btn-primary">매장 정보 수정</button>
									</div>
								</div>

								<div class="position-relative row form-group">
									<label for="location" class="col-sm-1 col-form-label"><font style="color: #3162C7">위치</font></label>
									<div class="col-sm-4">
										<h6 name="address" id="address">${list.address }</h6>
									</div>
									<label for="category" class="col-sm-1 col-form-label"><font style="color: #3162C7">브레이크 타임</font></label>
									<div class="col-sm-4">
										<h6 name="category" id="category">${list.break_time }</h6>
									</div>
									<div class="col-sm-2">
										<button type="button" class="btn mr-2 mb-2 btn-secondary" data-toggle="modal" data-target="#exampleModal">매장 정보 삭제</button>
									</div>
								</div>

							</div>
						</div>
					</c:forEach>
				</div>
				<div>

					<!-- PAGINATION -->
					<nav class="" aria-label="Page navigation example">
						<ul class="pagination" style="padding-left: 40%; padding-bottom: 5%">
							<c:if test="${pageMaker.prev }">
								<li class="page-item" id="btnli">
								<a href="storeSearch.do${pageMaker.makeSearch(pageMaker.startPage - 1)}" class="page-link" aria-label="Previous"> 
								<span aria-hidden="true">«</span>
								<span class="sr-only">Previous</span>
								</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li class="page-item <c:out value="${scri.page == idx ? 'active' : ' '}"/>">
								<a href="storeSearch.do${pageMaker.makeSearch(idx)}" class="page-link">${idx }</a></li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li class="page-item">
								<a href="storeSearch.do${pageMaker.makeSearch(pageMaker.endPage + 1)}" class="page-link" aria-label="Next"> 
								<span aria-hidden="true">»</span>
								<span class="sr-only">Next</span>
								</a></li>
							</c:if>

						</ul>
					</nav>


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
					<button type="button" class="btn btn-secondary" data-dismiss="modal" name="delNo-">아니오</button>
					<button type="button" class="btn btn-primary" name="delYes">네</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
