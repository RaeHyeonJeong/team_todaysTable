<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container bg-light">
	<div class="d-flex flex-row">
		<div class="col justify-content-start pe-4">
			<div class=" d-inline-flex p-2">
				<button class="btn btn-sm btn-primary mx-1"
					onclick="location.href='#'">알림</button>
			</div>
			<div class=" d-inline-flex p-2">
				<button class="btn btn-sm btn-primary mx-1"
					id="userDropdownMenuLink" data-bs-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"
					onclick="location.href='#'">내가 작성한 게시물</button>
				<div class="dropdown-menu dropdown-menu-end"
					aria-labelledby="userDropdownMenuLink">
					<a class="dropdown-item" href="user-booking-1.html">마이페이지</a> <a
						class="dropdown-item" href="user-grid.html">예약 내역 관리</a> <a
						class="dropdown-item" href="user-booking-detail.html">내가 작성한
						게시물</a>
					<div class="dropdown-divider"></div>
				</div>
			</div>
			<div class=" d-inline-flex p-2">
				<button class="btn btn-sm btn-primary mx-1"
					id="userDropdownMenuLink" href="#" data-bs-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"
					onclick="location.href='#'">마이 리스트</button>
				<div class="dropdown-menu dropdown-menu-end"
					aria-labelledby="userDropdownMenuLink">
					<a class="dropdown-item" href="user-booking-1.html">최근 본 가게</a> <a
						class="dropdown-item" href="user-grid.html">찜 한 가게</a>
					<div class="dropdown-divider"></div>
				</div>
			</div>
			<div class=" d-inline-flex p-2">
				<button class="btn btn-sm btn-primary mx-1"
					id="userDropdownMenuLink" href="#" data-bs-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"
					onclick="location.href='#'">예약 내역 관리</button>
				<div class="dropdown-menu dropdown-menu-end"
					aria-labelledby="userDropdownMenuLink">
					<a class="dropdown-item" href="user-booking-1.html">예약 내역 확인</a> <a
						class="dropdown-item" href="user-booking-1.html">예약 수정</a> <a
						class="dropdown-item" href="user-grid.html">예약 취소</a>
				</div>
			</div>
		</div>
		<!-- <div class="col d-flex justify-content-center">
		</div> -->
		<div class="col-5 justify-content-end">
			<div class="d-inline-flex p-2">
				<button class="btn btn-sm btn-secondary mx-1">기본 정보</button>
			</div>
			<div class="d-inline-flex p-2">
				<button class="btn btn-sm btn-secondary mx-1">프로필 관리</button>
			</div>
			<div class="d-inline-flex p-2">
				<button class="btn btn-sm btn-secondary mx-1">회원 탈퇴</button>
			</div>
		</div>
	</div>
</div>