<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/map.css">
 
</head>
<body>
	<mytag:header/>
	<div id="container">
    	
    	<div id="page">
      	<div id="daumMap">
      	<!-- * 카카오맵 - 지도퍼가기 -->
		<!-- 1. 지도 노드 -->
		<div id="daumRoughmapContainer1569548042301" class="root_daum_roughmap root_daum_roughmap_landing"></div>
 
		<!--2. 설치 스크립트 * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
		<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
 
		<!-- 3. 실행 스크립트 -->
		<script charset="UTF-8">
		new daum.roughmap.Lander({
			"timestamp" : "1569548042301",
			"key" : "v7bv",
			"mapWidth" : "90%",
			"mapHeight" : "40%"
				}).render();
		</script>
      	</div>
      	
      	<div id="map_text">
        	<div id="local">홍대점</div>
        	<br>
        	<div id="address">서울시 마포구 월드컵북로 21 2층 풍성빌딩</div>
        	<div id="num">02.336.8546</div>
        				
        	<div id="line"></div>
        		<div id="time">10:00 AM - 08:00 PM</div>
        		<div id="copyright">Copyright © 쌍용교육센터 . All rights reserved.</div>
      	</div>
      	</div>
	</div>
</body>
</html>