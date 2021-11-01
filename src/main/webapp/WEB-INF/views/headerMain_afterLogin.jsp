<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="header">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%
// 세션값 가져오기
String name = (String) session.getAttribute("NAME");
String profile_image_path = (String) session.getAttribute("PROFILE_IMAGE_PATH");// Object 타입이므로 다운캐스팅
String location ="resources/upload/";
String main_profile=location.concat(profile_image_path);
%>
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
				<form name="headerMain-afterLogin" id="headerMain-afterLogin" action="getLoginInfo.do">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item  text-muted fw-bold pe-1 position-sticky"><strong style="color: navy;"><%=name %></strong>님</li>
					<li class="nav-item dropdown ms-lg-3"><a id="userDropdownMenuLink" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<img class="avatar avatar-sm avatar-border-white me-2" src="<%= main_profile %>" alt="Jack London">
						</a>
						
						<div class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdownMenuLink">
							<a class="dropdown-item"  href="myPageMove.do">마이페이지</a> <!-- "myPageMove.do"를 이용해 마이페이지로 이동 -->
							<a class="dropdown-item" href="user-grid.html">예약 내역 관리</a>
							<a class="dropdown-item" href="user-booking-detail.html">내가 작성한 게시물</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="login.html">
								<i class="fas fa-sign-out-alt me-2 text-muted"></i> Sign out
							</a>
						</div></li>
				</ul>
				</form>
			</div>
		</div>
	</nav>

	<!-- /Navbar -->
</header>