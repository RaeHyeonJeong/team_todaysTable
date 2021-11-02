<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>관리자 - 신규 매장 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<meta name="description" content="This is an example dashboard created using build-in elements and components.">
<meta name="msapplication-tap-highlight" content="no">
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
									<i class="pe-7s-wallet icon-gradient bg-plum-plate"> </i>
								</div>
								<div>
									신규 매장 등록
									<div class="page-title-subheading">
										신규 매장을 등록해주세요 ( <font color="red">*</font>필수 입력 항목 )
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- DATA 입력폼  -->
					<form name="insertForm" method="post" action="insertData.do" enctype="multipart/form-data">
						<div class="main-card mb-3 card">
							<div class="card-body">
								<div class="position-relative row form-group">
									<label for="storeName" class="col-sm-2 col-form-label"><font color="red">*</font>매장명</label>
									<div class="col-sm-6">
										<input name="name" id="name" name="name" placeholder="매장명을 입력해주세요" type="text" class="form-control">
									</div>
								</div>
								<br>

								<div class="position-relative row form-group">
									<label for="telNum" class="col-sm-2 col-form-label"><font color="red">*</font>전화번호</label>
									<div class="col-sm-2">
										<select name="tel1" id="tel1" class="form-control">
											<option>02</option>
											<option>051</option>
											<option>053</option>
											<option>032</option>
											<option>062</option>
											<option>042</option>
											<option>052</option>
											<option>044</option>
											<option>031</option>
											<option>033</option>
											<option>043</option>
											<option>041</option>
											<option>063</option>
											<option>061</option>
											<option>054</option>
											<option>055</option>
											<option>064</option>
										</select>
									</div>
									-
									<div class="col-sm-2">
										<input name="telNum" id="tel2" placeholder="" type="tel" class="form-control">
									</div>
									-
									<div class="col-sm-2">
										<input name="telNum" id="tel3" placeholder="" type="tel" class="form-control">
									</div>
								</div>

								<input name="tel" id="tel" placeholder="전화번호 합" type="hidden" class="form-control"> <br>

								<div class="position-relative row form-group">
								
									<label for="imageFile" class="col-sm-2 col-form-label"><font color="red">*</font>매장 대표 사진</label>
									<div class="col-sm-6">
										<input name="file" id="file" multiple="multiple" type="file" class="form-control-file" style="width: auto;"> <small class="form-text text-muted"></small>
									</div>
								</div>
								<br>

								<div class="position-relative row form-group">
									<label for="address" class="col-sm-2 col-form-label"><font color="red">*</font>주소</label>
									<div class="col-sm-2">
										<input name="postCode" id="postcode" placeholder="우편번호" type="text" class="form-control" readonly="readonly">
									</div>
									<div class="col-sm-2">
										<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
									</div>
								</div>
								<div class="position-relative row form-group">
									<label for="address1" class="col-sm-2 col-form-label"> </label>
									<div class="col-sm-5">
										<input name="storeAddr" id="address1" placeholder="주소" type="text" class="form-control" >
									</div>
								</div>
								<div class="position-relative row form-group">
									<label for="address2" class="col-sm-2 col-form-label"> </label>
									<div class="col-sm-3">
										<input name="storeAddr" id="address2" placeholder="상세 주소" type="text" class="form-control">
									</div>
									<div class="col-sm-2">
										<input id="extraAddress" placeholder="참고항목" type="text" class="form-control" readonly="readonly">
									</div>
								</div>
								<div class="col-sm-2">
									<input name="address" id="address" placeholder="주소 합" type="hidden" class="form-control"> 
									<input name="latitude" id="latitude" placeholder="위도" type="hidden" class="form-control"> 
									<input name="longitude" id="longitude" placeholder="경도" type="hidden" class="form-control">
								</div>
								<br>

								<div class="position-relative row form-group">
									<label for="location" class="col-sm-2 col-form-label">지역</label>
									<div class="col-sm-2">
										<select name="location" id="location" class="form-control">
											<option>지역 선택</option>
											<option>강남</option>
											<option>역삼</option>
											<option>신논현</option>
										</select>
									</div>
								</div>
								<br>

								<div class="position-relative row form-group">
									<label for="businessHours" class="col-sm-2 col-form-label"><font color="red">*</font>영업시간</label>
									<div class="col-sm-2">
										<select name="businesshours" id="openHour" class="form-control">
											<option>시</option>
											<%
												for (int i = 0; i < 24; i++) {
											%>
											<option><%=(i<10)?"0"+i:i%>시
											</option>
											<%
												}
											%>
										</select>
									</div>
									<div class="col-sm-2">
										<select name="businesshours" id="openMin" class="form-control">
											<option>분</option>
											<%
												for (int i = 0; i < 60; i += 10) {
											%>
											<option><%=(i<10)?"0"+i:i%>분
											</option>
											<%
												}
											%>
										</select>
									</div>
									-
									<div class="col-sm-2">
										<select name="businesshours" id="closeHour" class="form-control">
											<option>시</option>
											<%
												for (int i = 0; i < 24; i++) {
											%>
											<option><%=(i<10)?"0"+i:i%>시
											</option>
											<%
												}
											%>
										</select>
									</div>
									<div class="col-sm-2">
										<select name="businesshours" id="closeMin" class="form-control">
											<option>분</option>
											<%
												for (int i = 0; i < 60; i += 10) {
											%>
											<option><%=(i<10)?"0"+i:i%>분
											</option>
											<%
												}
											%>
										</select>
									</div>
								</div>
								<div class="col-sm-2">
									<input type="hidden" name="business_hours" id="business_hours" class="form-control" placeholder="영업시간 합">
								</div>
								<br>
								
								<div class="position-relative row form-group">
									<label for="businessHours" class="col-sm-2 col-form-label">브레이크 타임</label>
									<div class="col-sm-2">
										<select name="businesshours" id="openHour2" class="form-control">
											<option>시</option>
											<%
												for (int i = 0; i < 24; i++) {
											%>
											<option><%=(i<10)?"0"+i:i%>시
											</option>
											<%
												}
											%>
										</select>
									</div>
									<div class="col-sm-2">
										<select name="businesshours" id="openMin2" class="form-control">
											<option>분</option>
											<%
												for (int i = 0; i < 60; i += 10) {
											%>
											<option><%=(i<10)?"0"+i:i%>분
											</option>
											<%
												}
											%>
										</select>
									</div>
									-
									<div class="col-sm-2">
										<select name="businesshours" id="closeHour2" class="form-control">
											<option>시</option>
											<%
												for (int i = 0; i < 24; i++) {
											%>
											<option><%=(i<10)?"0"+i:i%>시
											</option>
											<%
												}
											%>
										</select>
									</div>
									<div class="col-sm-2">
										<select name="businesshours" id="closeMin2" class="form-control">
											<option>분</option>
											<%
												for (int i = 0; i < 60; i += 10) {
											%>
											<option><%=(i<10)?"0"+i:i%>분
											</option>
											<%
												}
											%>
										</select>
									</div>
								</div>
								<div class="col-sm-2">
									<input type="hidden" name="break_time" id="break_time" class="form-control" placeholder="브레이크 합">
								</div>
								<br>

								<div class="position-relative row form-group">
									<label for="dayOff" class="col-sm-2 col-form-label">휴무일</label>
									<div class="col-sm-2">
										<input name="day_off" id="day_off" type="text" class="form-control">
									</div>
								</div>
								<br>

								<div class="position-relative row form-group">
									<label for="category" class="col-sm-2 col-form-label">카테고리</label>
									<div class="col-sm-2">
										<select name="category" id="category" class="form-control">
											<option>카테고리 선택</option>
											<option>한식</option>
											<option>분식</option>
											<option>카페</option>
											<option>돈까스</option>
											<option>일식</option>
											<option>치킨</option>
											<option>피자</option>
											<option>아시안</option>
											<option>양식</option>
											<option>중국집</option>
											<option>족발/보쌈</option>
											<option>야식</option>
											<option>찜/탕</option>
											<option>패스트푸드</option>
											<option>도시락</option>
										</select>
									</div>
								</div>
								<br>

								<div class="position-relative row form-group">
									<label for="price1" class="col-sm-1 col-form-label"><font color="red">*</font>가격 정보</label>
									<div class="col-sm-1">
										<button type="button" id="InfoPlus" class="mb-2 mr-2 btn-transition btn btn-outline-secondary">
											<i class="pe-7s-plus"></i> 추가
										</button>
									</div>

									<div class="col-sm-6">
										<table class="mb-0 table">
											<thead>
												<tr align="center">
													<th></th>
													<th>메뉴명</th>
													<th>가격</th>
												</tr>
											</thead>
											<tbody>
												<tr id="trMenu">
													<th scope="row"></th>
													<td>
														<input name="menu_name" id="name" placeholder="ex) 아메리카노" type="text" class="form-control">
													</td>
													
													<td>
														<input name="price" id="price" placeholder="ex) 3000" type="text" class="form-control">
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<br>
								
								<div class="position-relative row form-group">
									<label for="storeOption" class="col-sm-2 col-form-label">편의사항</label>
									<div class="col-sm-2">
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="can_park" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="can_park">주차 가능</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="can_reserve" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="can_reserve">예약 가능</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="can_takeout" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="can_takeout">포장 가능</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="free_wifi" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="free_wifi">무료 와이파이</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="kids_zone" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="kids_zone">키즈존</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="no_kids_zone" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="no_kids_zone">노키즈존</label>
										</div>
									</div>

									<div class="col-sm-2">
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="kid_menu" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="kid_menu">키즈 메뉴</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="corkage_free" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="corkage_free">콜키지 프리</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="vegetarian" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="vegetarian">비건음식</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="gluten_free" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="gluten_free">글루텐 프리</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="highchair" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="highchair">유아용 의자</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="can_go_with_pet" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="can_go_with_pet">반려동물 동반가능</label>
										</div>
									</div>

									<div class="col-sm-2">
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="can_deliver" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="can_deliver">배달 가능</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="outside_seat" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="outside_seat">야외좌석</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="can_lunch_menu" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="can_lunch_menu">점심 특선메뉴</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="can_breakfast_menu" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="can_breakfast_menu">아침 특선메뉴</label>
										</div>
										<div class="custom-checkbox custom-control">
											<input type="checkbox" name="storeOption" id="can_space_rental" value="" class="custom-control-input"> 
											<label class="custom-control-label" for="can_space_rental">대관 가능</label>
										</div>
									</div>
								</div>
								<br>
								
								<div class="position-relative row form-group">
									<div class="col-sm-10 offset-sm-2" align="right" style="padding-right: 5%">
										<button class="btn btn-primary" id="registerBtn" type="submit">신규 매장 등록</button>
									</div>
								</div>
							</div>
						</div>
					</form>
		</div>

		<script type="text/javascript" src="/controller/resources/adminResources/js/main.js"></script>

		<!-- JQuery -->
		<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
		
		<!-- 입력항목 검사 -->
		<script type="text/javascript">
			function registerChk() {
				var storeName = $("input[name='storeName']").val();
				var storeAddr = $("input[name='storeAddr']").val();
				var imageFile = $("input[name='imageFile']").val();
				var telNum = $("input[name='telNum']").val();
				var businesshours = $("input[name='businesshours']").val();
				var menuName = $("input[name='menuName']").val();
				var menuPrice = $("input[name='menuPrice']").val();

				if (storeName.length == 0) {
					alert('매장명을 입력해 주세요');
					$('#storeName').focus();
					return false;
				}
				else if (imageFile.length == 0) {
					alert('매장 대표 사진을 입력해 주세요');
					$('#imageFile').focus();
					return false;
				}
				else if (telNum.length == 0) {
					alert('전화번호를 입력해 주세요');
					$('#telNum').focus();
					return false;
				}
				else if (storeAddr.length == 0) {
					alert('주소를 입력해 주세요');
					$('#storeAddr').focus();
					return false;
				}
				else if (businesshours.length == 1) {
					alert('영업시간을 입력해 주세요');
					$('#businesshours').focus();
					return false;
				}
				else if (menuName.length == 0) {
					alert('메뉴명을 입력해 주세요');
					$('#menuName').focus();
					return false;
				}
				else if (menuPrice.length == 0) {
					alert('메뉴 가격을 입력해 주세요');
					$('#menuPrice').focus();
					return false;
				}
			}
		</script>

		<!-- 전화번호 합치기 -->
		<script type="text/javascript">
			$("input[name='telNum']").blur(
					function() {
						$('#tel').val(
								$('#tel1').val() + "-" + $('#tel2').val() + "-"
										+ $('#tel3').val());
					});
		</script>
		
		<!-- 위도 경도 변환을 위한 지도 API -->
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=159e401505d9157a1f5597ae390793d5&libraries=services"></script>
		
		<!-- 주소 합치기 및 위도 경도 받아오기 -->
		<script type="text/javascript">
		$(function(){
			$('#address2').blur(function(){
				$('#address').val($('#address1').val() + " " + $('#address2').val());
			});
			
			$('#address2').blur(function(){
				$.ajax({
					url : 'newStoreRegister.do',
					type : 'post',
					dataType : 'text',
					success : function(v){
						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();
						// 주소로 좌표를 검색합니다
						geocoder.addressSearch($('#address1').val(), function(result) {
						    // 정상적으로 검색이 완료됐으면 
						    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
						    var latitude = coords.getLat();
							var longitude = coords.getLng();
						    $('#latitude').val(latitude);
							$('#longitude').val(longitude); 
						});
					}
				});
			});
		});
		</script>

		<!-- 영업시간 합치기 -->
		<script type="text/javascript">
			$("select[name='businesshours']").blur(
					function() {
						$('#business_hours').val(
								$('#openHour').val().slice(0, -1) + ":"
										+ $('#openMin').val().slice(0, -1)
										+ "~"
										+ $('#closeHour').val().slice(0, -1)
										+ ":"
										+ $('#closeMin').val().slice(0, -1));
					});
		</script>
		
		<!-- 브레이크타임 합치기 -->
		<script type="text/javascript">
			$("select[name='businesshours']").blur(
					function() {
						$('#break_time').val(
								$('#openHour2').val().slice(0, -1) + ":"
										+ $('#openMin2').val().slice(0, -1)
										+ "~"
										+ $('#closeHour2').val().slice(0, -1)
										+ ":"
										+ $('#closeMin2').val().slice(0, -1));
					});
		</script>

		<!-- 가격정보 추가/삭제 버튼 스크립트 -->
		<script>
			$(document)
					.on(
							"click",
							"button#InfoPlus",
							function() {
								var addInfoText = '<tr id=trMenu">'
										+ '<th scope="row"></th>'
										+ '<td>'
										+ '<input name="menu_name" id="menu_name" placeholder="ex) 아메리카노" type="text" class="form-control">'
										+ '</td>'
										+ '<td>'
										+ '<input name="price" id="price" placeholder="ex) 3000" type="text" class="form-control">'
										+ '</td>'
										+ '<td>'
										+ '<button type="button" id="InfoMinus" class="mb-2 mr-2 btn-transition btn btn-outline-secondary">'
										+ '<i class="pe-7s-trash"></i> 삭제'
										+ '</button>' + '</td>' + '</tr>';
								var addHtml = $('#trMenu:last');
								addHtml.after(addInfoText);
							});
			$(document).on("click", "button#InfoMinus", function() {
				var addHtml = $(this).parent().parent();
				addHtml.remove();
			});
		</script>

		<!-- DAUM 우편번호찾기 API -->
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			function execDaumPostcode() {
				new daum.Postcode(
						{
							oncomplete : function(data) {
								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
								// 각 주소의 노출 규칙에 따라 주소를 조합한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								var addr = ''; // 주소 변수
								var extraAddr = ''; // 참고항목 변수

								//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
								if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
									addr = data.roadAddress;
								} else { // 사용자가 지번 주소를 선택했을 경우(J)
									addr = data.jibunAddress;
								}

								// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
								if (data.userSelectedType === 'R') {
									// 법정동명이 있을 경우 추가한다. (법정리는 제외)
									// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									if (data.bname !== ''
											&& /[동|로|가]$/g.test(data.bname)) {
										extraAddr += data.bname;
									}
									// 건물명이 있고, 공동주택일 경우 추가한다.
									if (data.buildingName !== ''
											&& data.apartment === 'Y') {
										extraAddr += (extraAddr !== '' ? ', '
												+ data.buildingName
												: data.buildingName);
									}
									// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									if (extraAddr !== '') {
										extraAddr = ' (' + extraAddr + ')';
									}
									// 조합된 참고항목을 해당 필드에 넣는다.
									document.getElementById("extraAddress").value = extraAddr;

								} else {
									document.getElementById("extraAddress").value = '';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document.getElementById('postcode').value = data.zonecode;
								document.getElementById("address1").value = addr;
								// 커서를 상세주소 필드로 이동한다.
								document.getElementById("address2").focus();
							}
						}).open();
			}
		</script>
</body>
</html>
