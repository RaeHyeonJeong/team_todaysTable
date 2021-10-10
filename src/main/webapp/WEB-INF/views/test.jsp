<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- heart toggle -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
 .heartbox {
     position: absolute;
     top: 50%;
     left: 50%;
     transform: translate(-50%, -50%)
 }

 svg {
     cursor: pointer;
     overflow: visible;
     width: 60px;
     margin: 20px
 }

 svg #heart {
     transform-origin: center;
     animation: animateHeartOut .3s linear forwards
 }

 svg #main-circ {
     transform-origin: 29.5px 29.5px
 }

 .checkbox {
     display: none
 }

 .checkbox:checked+label svg #heart {
     transform: scale(0.2);
     fill: #E2264D;
     animation: animateHeart .3s linear forwards .25s
 }

 .checkbox:checked+label svg #main-circ {
     transition: all 2s;
     animation: animateCircle .3s linear forwards;
     opacity: 1
 }

 .checkbox:checked+label svg #heartgroup1 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup1 #heart1 {
     transform: scale(0) translate(0, -30px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup1 #heart2 {
     transform: scale(0) translate(10px, -50px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup2 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup2 #heart1 {
     transform: scale(0) translate(30px, -15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup2 #heart2 {
     transform: scale(0) translate(60px, -15px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup3 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup3 #heart1 {
     transform: scale(0) translate(30px, 0px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup3 #heart2 {
     transform: scale(0) translate(60px, 10px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup4 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup4 #heart1 {
     transform: scale(0) translate(30px, 15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup4 #heart2 {
     transform: scale(0) translate(40px, 50px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup5 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup5 #heart1 {
     transform: scale(0) translate(-10px, 20px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup5 #heart2 {
     transform: scale(0) translate(-60px, 30px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup6 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup6 #heart1 {
     transform: scale(0) translate(-30px, 0px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup6 #heart2 {
     transform: scale(0) translate(-60px, -5px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup7 {
     opacity: 1;
     transition: .1s all .3s
 }

 .checkbox:checked+label svg #heartgroup7 #heart1 {
     transform: scale(0) translate(-30px, -15px);
     transform-origin: 0 0 0;
     transition: .5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup7 #heart2 {
     transform: scale(0) translate(-55px, -30px);
     transform-origin: 0 0 0;
     transition: 1.5s transform .3s
 }

 .checkbox:checked+label svg #heartgroup2 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 .checkbox:checked+label svg #heartgroup3 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 .checkbox:checked+label svg #heartgroup4 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 .checkbox:checked+label svg #heartgroup5 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 .checkbox:checked+label svg #heartgroup6 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 .checkbox:checked+label svg #heartgroup7 {
     opacity: 1;
     transition: .1s opacity .3s
 }

 @keyframes animateCircle {
     40% {
         transform: scale(10);
         opacity: 1;
         fill: #DD4688
     }

     55% {
         transform: scale(11);
         opacity: 1;
         fill: #D46ABF
     }

     65% {
         transform: scale(12);
         opacity: 1;
         fill: #CC8EF5
     }

     75% {
         transform: scale(13);
         opacity: 1;
         fill: transparent;
         stroke: #CC8EF5;
         stroke-width: .5
     }

     85% {
         transform: scale(17);
         opacity: 1;
         fill: transparent;
         stroke: #CC8EF5;
         stroke-width: .2
     }

     95% {
         transform: scale(18);
         opacity: 1;
         fill: transparent;
         stroke: #CC8EF5;
         stroke-width: .1
     }

     100% {
         transform: scale(19);
         opacity: 1;
         fill: transparent;
         stroke: #CC8EF5;
         stroke-width: 0
     }
 }

 @keyframes animateHeart {
     0% {
         transform: scale(0.2)
     }

     40% {
         transform: scale(1.2)
     }

     100% {
         transform: scale(1)
     }
 }

 @keyframes animateHeartOut {
     0% {
         transform: scale(1.4)
     }

     100% {
         transform: scale(1)
     }
 }
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="heartbox">
		<input type="checkbox" class="checkbox" id="checkbox" /> 
		<label for="checkbox"> 
		<svg id="heart-svg" viewBox="1 392 58 57" xmlns="http://www.w3.org/2000/svg">
             <g id="Group" fill="none" fill-rule="evenodd" transform="translate(467 392)">
                 <path d="M29.144 20.773c-.063-.13-4.227-8.67-11.44-2.59C7.63 28.795 28.94 43.256 29.143 43.394c.204-.138 21.513-14.6 11.44-25.213-7.214-6.08-11.377 2.46-11.44 2.59z" id="heart" fill="#AAB8C2" />
                 <circle id="main-circ" fill="#E2264D" opacity="0" cx="29.5" cy="29.5" r="1.5" />
                 <g id="heartgroup7" opacity="0" transform="translate(7 6)">
                     <circle id="heart1" fill="#9CD8C3" cx="2" cy="6" r="2" />
                     <circle id="heart2" fill="#8CE8C3" cx="5" cy="2" r="2" />
                 </g>
                 <g id="heartgroup6" opacity="0" transform="translate(0 28)">
                     <circle id="heart1" fill="#CC8EF5" cx="2" cy="7" r="2" />
                     <circle id="heart2" fill="#91D2FA" cx="3" cy="2" r="2" />
                 </g>
                 <g id="heartgroup3" opacity="0" transform="translate(52 28)">
                     <circle id="heart2" fill="#9CD8C3" cx="2" cy="7" r="2" />
                     <circle id="heart1" fill="#8CE8C3" cx="4" cy="2" r="2" />
                 </g>
                 <g id="heartgroup2" opacity="0" transform="translate(44 6)">
                     <circle id="heart2" fill="#CC8EF5" cx="5" cy="6" r="2" />
                     <circle id="heart1" fill="#CC8EF5" cx="2" cy="2" r="2" />
                 </g>
                 <g id="heartgroup5" opacity="0" transform="translate(14 50)">
                     <circle id="heart1" fill="#91D2FA" cx="6" cy="5" r="2" />
                     <circle id="heart2" fill="#91D2FA" cx="2" cy="2" r="2" />
                 </g>
                 <g id="heartgroup4" opacity="0" transform="translate(35 50)">
                     <circle id="heart1" fill="#F48EA7" cx="6" cy="5" r="2" />
                     <circle id="heart2" fill="#F48EA7" cx="2" cy="2" r="2" />
                 </g>
                 <g id="heartgroup1" opacity="0" transform="translate(24)">
                     <circle id="heart1" fill="#9FC7FA" cx="2.5" cy="3" r="2" />
                     <circle id="heart2" fill="#9FC7FA" cx="7.5" cy="2" r="2" />
                 </g>
             </g>
         </svg>
		</label>
	</div>
</body>
<script src="resources/vendor/jquery/jquery.min.js"></script>
<!-- heart toggle -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</html>