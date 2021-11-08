<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	// 세션값 가져오기
String id = (String) session.getAttribute("id");
String name = (String) session.getAttribute("NAME");
String nickname = (String) session.getAttribute("nickname");
String profileImg=(String)session.getAttribute("PROFILE_IMAGE_PATH");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>프로필 관리</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!--  Price Slider Stylesheets -->
<link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<!-- Google fonts - Poppins-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
<!-- swiper-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
<!-- Magnigic Popup-->
<link rel="stylesheet"
	href="resources/vendor/magnific-popup/magnific-popup.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="resources/css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="resources/css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="resources/img/favicon.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
</head>
<body style="padding-top: 72px;">
	<!-- HEADER include -->
	<jsp:include page="subHeader.jsp" />
	<!-- <form action="/web/profileModify.do?cmd=profileModify" method="post" name="profileModify"> -->
	<section class="py-5">
		<div class="container-fluid px-3">
			<div class>
				<div class="col-md-8  d-flex justify-content-evenly">
					<div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
						<div class="card-header bg-gray-100 py-4 border-0 text-center">
							<a class="d-inline-block" href="#"> <img
								class="d-block avatar avatar-xxl p-2 mb-2"
							src="<%=profileImg %>" alt=" ">
							</a>
							<h5><%=name%></h5>
							<p class="text-muted text-sm mb-0"><%=nickname%></p>
						</div>
					</div>
					<form class="form-validate" action="updateProfile.do" method="POST"
						enctype="multipart/form-data">
						<div class="mb-4">
							<h2>Profile</h2>
							<br> <br> <label class="form-label" for="password"
								style="float: left;">새로운 비밀번호</label> <input
								class="form-control" name="password1" id="password1"
								placeholder="비밀번호 입력" type="password" required
								data-msg="비밀번호를 입력해 주세요" onchange="chkPW()">
							<p>
								<small style="color: red;">*특수문자, 대문자, 소문자, 숫자 조합 필수(8자리
									이상)</small>
							</p>
						</div>
						<div class="mb-4">
							<label class="form-label" for="password">새로운 비밀번호 재확인</label> <input
								class="form-control" name="password" id="password"
								placeholder="비밀번호 재입력" type="password">
						</div>
						<div>
							<span id="no_pass"> <small
								style="color: red; float: left;">비밀번호가 일치하지 않습니다.</small>
							</span> <span id="ok_pass"> <small
								style="color: blue; float: left;">비밀번호가 일치합니다.</small>
							</span>
						</div>
						<br>
						<div class="mb-4">
							<label class="form-label" for="tel">연락처</label> <br> <input
								class="form-control" type="text" name="tel" id="tel"
								placeholder="010-1234-5678" required data-msg="전화번호를 입력하세요">
						</div>
						<div class="mb-4">
							<label class="form-label" for="address">주소</label><br> <input
								class="form-control" style="width: 205px; float: left;"
								name="postnum" id="postnum" placeholder="우편번호" type="text"
								required data-msg="우편번호를 입력하세요."> <input
								class="btn btn-primary" type="button" onclick="Postcode()"
								value="우편번호 찾기"> <input class="form-control"
								id="address1" placeholder="주소" type="text" required
								data-msg="주소를 입력하세요"> <input class="form-control"
								id="address2" placeholder="상세주소" type="text" required
								data-msg="상세주소를 입력하세요"> <input class="form-control"
								type="text" id="extraAddress"> <input
								class="form-control" type="text" id="address" name="address" value="${list.address}">
						</div>
						<div class="mb-4">
							<label class="form-label" for="nickname"> 닉네임</label> <br> <input
								class="form-control" style="width: 240px; float: left;"
								name="nickname" id="nickname" value="${list.nickname}" type="text"
								required data-msg="닉네임을 작성하세요">
							<button type="button" class="btn btn-primary" id="nickCheck"
								style="float: right;">중복확인</button>
							<div>
								<span id="ok_nick"> <small
									style="color: blue; float: left;">사용가능한 닉네임 입니다.</small>
								</span> <span id="no_nick"> <small
									style="color: red; float: left;">이미 존재하는 닉네임 입니다.</small>
								</span>
							</div>
						</div>
						<br>
						<div class="mb-4">
							<br> <br> <label class="form-label" for="myPageMove.do">프로필</label><br>
							<input type="file" id="file" name="file" style="float: left;">
						</div>
						<br>
						<div class="d-grid gap-2">
							<br>
							<button class="btn btn-lg btn-primary" type="submit" href="updateProfile.do">수정하기</button>
						</div>
						<br>
					</form>
					<a class="close-absolute me-md-5 me-xl-6 pt-5" href="myPageMove.do">
						<svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<jsp:include page="footer.jsp" />
	<!-- JavaScript files-->
	<script>
		// ------------------------------------------------------- //
		//   Inject SVG Sprite - 
		//   see more here 
		//   https://css-tricks.com/ajaxing-svg-sprite/
		// ------------------------------------------------------ //
		function injectSvgSprite(path) {
			var ajax = new XMLHttpRequest();
			ajax.open("GET", path, true);
			ajax.send();
			ajax.onload = function(e) {
				var div = document.createElement("div");
				div.className = 'd-none';
				div.innerHTML = ajax.responseText;
				document.body.insertBefore(div, document.body.childNodes[0]);
			}
		}
		// to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
		// use your own URL in production, please :)
		// https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
		//- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
		injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');
	</script>
	<!-- jQuery-->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Magnific Popup - Lightbox for the gallery-->
	<script
		src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Smooth scroll-->
	<script
		src="resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
	<!-- Bootstrap Select-->
	<script
		src="resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
	<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
	<script src="resources/vendor/object-fit-images/ofi.min.js"></script>
	<!-- Swiper Carousel                       -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
	<script>
		var basePath = ''
	</script>
	<!-- Main Theme JS file    -->
	<script src="resources/js/theme.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    function Postcode() {
        new daum.Postcode({
            oncomplete: function(data) {
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
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                    
                } else {
                    document.getElementById("extraAddress").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postnum').value = data.zonecode;
                document.getElementById("address1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("address2").focus();
            }
        }).open();
    }
</script>
	<script type="text/javascript">
		$('#address2').blur(
				function() {
					$('#address').val(
							$('#address1').val() + " " + $('#address2').val());
				});
</script>
	<script type="text/javascript">
//닉네임 중복체크
$("#no_nick").hide();
$("#ok_nick").hide();
$("button#nickCheck").click(function() {
	$.ajax({
		url : "nickCheck.do",
		type : "post",
		dataType : "json",
		data : {
			nickname : $("input#nickname").val()
		},
		success : function(data) {
			if (data == 1) { //중복된 닉네임이 있을 때
				$("#no_nick").css("display", "inline-block");
				$("#ok_nick").css("display", "none");
			} else if (data == 0) { //사용가능한 닉네임일 때
				$("#ok_nick").css("display", "inline-block");
				$("#no_nick").css("display", "none");
			}
		}
	});
});//닉네임 중복 end
</script>
	<script type="text/javascript">
//비밀번호 유효성	
function chkPW() {
	var pw = $("#password1").val();
	var id = $("#id").val();
	var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	if (false == reg.test(pw)) {
		alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
	} else if (pw.search(id) > -1) {
		alert("비밀번호에 아이디가 포함되면 안됩니다.");
	} else if (pw.search(/\s/) != -1) {
		alert("비밀번호는 공백 없이 입력해주세요.");
	} else if (hangulcheck.test(pw)) {
		alert("비밀번호에 한글을 사용 할 수 없습니다.");
	} 
}
$(function() {
	//비밀번호 재확인
	$("#no_pass").hide();
	$("#ok_pass").hide();
	$('#password').blur(function() {
		if ($('#password1').val() != $('#password').val()) {//불일치
			$("#no_pass").css("display", "inline-block");
			$("#ok_pass").css("display", "none");
			if ($('#password1').val() != '') {
				$('#password1').val('');
				$('#password').val('');
				$('#password1').focus();
			}
		} else if ($('#password1').val() == $('#password').val()) {//일치
			$("#ok_pass").css("display", "inline-block");
			$("#no_pass").css("display", "none");
		}
	});
</script>
</body>
</html>