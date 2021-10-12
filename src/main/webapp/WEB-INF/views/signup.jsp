<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>회원가입</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="resources/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="resources/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="resources/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  </head>
  <body>
    <div class="container-fluid px-3">
 		<div class="row min-vh-100"> 
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
        <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-4"><img class="img-fluid mb-4" src="resources/img/logo-square.svg" alt="..." style="max-width: 4rem;">
              <h2>Sign up</h2><br>
            </div>
            <form class="form-validate" id="adress">
              <div class="mb-4">
                <label class="form-label" for="loginUsername">아이디(본인 이메일 작성)</label><br>
                <input class="form-control" style="width: 450px; float: left;" name="address1" id="address1" placeholder="name" type="text" required data-msg="주소를 입력하세요"><p style="float: right;">@</p>
                <input class="form-control" name="address2" id="address2" placeholder="address.com" type="text" required data-msg="상세주소를 입력하세요">
              <select class="form-control" name="emailaddr" id="address3">
                 <option value="">선택하세요</option>
                 <option value="daum.net">daum.net</option>
                 <option value="gmail.com">gmail.com</option>
                 <option value="hanmail.net">hanmail.net</option>
                 <option value="naver.com">naver.com</option>
              </select>
                 <button class="btn btn-primary" type="button" id="check" style="float: right;">중복확인</button>
               <div class="mb-4">
               <br><br>
               
                <label class="form-label" for="loginUsername">본인 확인 이메일</label><br>
                   <input class="form-control" style="width: 340px; float: left;" name="email" id="email" placeholder="name@address.com" required data-msg="이메일을 입력해 주세요">
                 <button type="button" class="btn btn-primary" id="numsend" style="float: right;">인증번호 받기</button>
              </div>
               <div class="mb-4">
                <input class="form-control" style="width: 340px; float: left;" name="num" id="num" placeholder="인증번호 입력" required data-msg="인증번호를 입력해 주세요.">
                 <button type="button" class="btn btn-primary" id="numcheck" style="float: right;">인증번호 확인</button><br>
                <p><small style="color: blue; float: left;">인증이 확인되었습니다.</small></p>
              </div>
              </div>
              <div class="mb-4">
              <br><br><br>
               <label class="form-label" for="password" style="float: left;">비밀번호</label>
                <input class="form-control" name="loginPassword1" id="loginPassword1" placeholder="비밀번호 입력" type="password" required data-msg="비밀번호를 입력해 주세요">
             	<p><small style="color: red;">*특수문자, 대문자, 숫자 조합 필수</small></p>
              </div>
               <div class="mb-4">
                <label class="form-label" for="loginPassword2">비밀번호 재확인</label>
                <input class="form-control" name="loginPassword2" id="loginPassword2" placeholder="비밀번호 재입력" type="password">
              </div>
              <div class="mb-4">
                <label class="form-label" for="name">이름</label>
                <input class="form-control" name="name" id="name" placeholder="이름" type="text" required data-msg="이름을 입력하세요">
              </div>
               <div class="mb-4">
                <label class="form-label" for="tel">연락처</label><br>
         		  <input class="form-control" type="text" name="tel" id="tel" placeholder="010-1234-5678" required data-msg="전화번호를 입력하세요"> 
              </div> 
              <div class="mb-4">
                <label class="form-label" for="address">주소</label><br>
                <input class="form-control" style="width: 340px; float: left;" name="postnum" id="postnum" placeholder="우편번호" type="" required data-msg="우편번호를 입력하세요.">
                 <button type="button" class="btn btn-primary" id="postnumcheck" style="float: right;">우편번호 등록</button>
                <input class="form-control" name="address1" id="address1" placeholder="주소" type="text" required data-msg="주소를 입력하세요">
                <input class="form-control" name="address2" id="address2" placeholder="상세주소" type="text" required data-msg="상세주소를 입력하세요">
              </div>
              <div class="mb-4">
                <label class="form-label" for="nickname"> 닉네임</label><br>
                <input class="form-control" style="width: 360px; float: left;" name="inputnick" id="inputnick" placeholder="닉네임 입력" type="text" required data-msg="닉네임을 작성하세요">
             	 <button type="button" class="btn btn-primary" id="nickcheck" style="float: right;">중복확인</button>
              </div>
           
               <div class="mb-4">
               <br><br>
                <label class="form-label" for="profile">프로필</label><br>
                <input class="form-control" name="profileimg" id="profileimg" type="text" style="width: 350px; height: 40px; float: left;" placeholder="프로필 사진을 업로드">
             	 <button type="button" class="btn btn-primary" id="profilephoto" style="float: right;">사진 업로드</button>
              </div>
              <div class="mb-4">
              <hr class="my-3 hr-text letter-spacing-2" data-content="">
              </div>
            
              <div class="d-grid gap-2">
              <br>
                <button class="btn btn-lg btn-primary" type="submit" >Sign up</button>
              </div>
              <br>
              
            </form><a class="close-absolute me-md-5 me-xl-6 pt-5" href="index.jsp"> 
              <svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg></a>
          </div>
        </div>
   		<div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
         <!--  Image -->
          <div class="bg-cover h-100 me-n3" style="background-image: url(resources/img/photo/cook.jpg);"></div>
        </div>
	  </div>
	</div>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- jQuery-->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="resources/js/theme.js"></script>
  </body>
</html>