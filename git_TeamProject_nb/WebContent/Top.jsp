<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>



/* 중앙정렬을 위한 테이블 CSS 설정 */

html{
	height:100%;
	width : 100%;
	margin : 0 auto 0 auto;
	display : flex;
	align-items: center;
	flex-direction: column;
}

.nb_top, .nb_top2, .nb_center {
	margin : 0 auto 0 auto;
	width : 1200px;
	background-color : white;
	align-items : center;
	text-align : center;

}

/*  상부 로고 및 메뉴 고정으로 CSS 설정  */
.nb_center {
	padding-top : 500px;
	align-items: center;
	text-align: center;
	vertical-align: middle;
}

/* 로고 테이블에 대한 CSS 설정 */
#menu1 {
	width : 100%;
	text-align : center;
	background-color: white;
}

/* 메가 드롭다운에 대한 CSS 설정 */

/*  @ 전체 메뉴 정렬에 대한 CSS 설정 */
#menu2 {
	background-color: white;
	width : 80%;
	height :100%;
	align-items : center;
	list-style : none;
}


/* @ 네브바에 대한 CSS 설정 */
#main_menu {
	background-color: white;
	width : 100%;
}
	
/* 	1) 메가드롭 "메뉴"에 대한 CSS 설정 */
.list_gnb {
/* 	list-style : none; */
/* 	display : flex; */ 
/* 	flex-flow : row wrap; */ 
/* 	justify-content : space-evenly; */ 
/* 	width : 100%; */
/* 	height : inherit; */
/* 	align-items : center; */
/* 	margin-bottom: 0px; */
	margin : 0;
	padding : 0;
	list-style: none;
	float : left;
	width : 100%;
	height : 100%;
}

/*  1-1) 메뉴의 정렬에 대한 CSS 설정 */
.list_gnb>li{
	height : 100%;
	width : 100%;
}

/* 1-2) 메뉴 버튼이 활성화 되었을때, CSS 디자인 */
.list_gnb > li:hover a, .list_gnb > li:active a {
/*  	text-decoration: underline; */
/*  	color : #ffebcd; */
}


/* 1-3) 버튼 하나하나에 대한 CSS 디자인 */
.list_gnb>li>a {
 	font-weight : 400;
 	color : black; 
/* 	text-decoration: none; */
	text-align: center;
/* 	display: block; */
/* 	border-bottom: 2px solid transparent; */
	padding : 10px 35px 10px 35px;
	font-size : 30px;
	color : black;
	text-decoration: none;
}

/* 1-4) 버튼 하나하나가 활성화 되었을 CSS 디자인 */
 .list_gnb>li>a:hover { 
/*  	border-bottom: 3px solid #ffebcd;  */
	border : silver;
 	background-color: #ffebcd;
 	border-radius: 20px;
 } 

/* 1-5) 나열된 메뉴가 활성화 되었을 때 메가메뉴를 어떻게 컨트롤 할건지에 대한 CSS 디자인 */
/* .list_gnb > li:hover #mega-menu { */
/* 	opacity: 1; */
	
/* } */

/* 드롭  된 큰 메뉴에 대한 스타일 조정 */
#mega-menu {
 	font-weight : inherit;
	width : 100%;
	height : 220px;
	background: white;
	position : absolute;
	top : 242px;
	left : 0;
	display : none;
}

/* 드롭  된 각 메뉴에 대한 스타일 조정 */
#mega-menu > ul {
	text-align : center;
	color : black;
	font-size : 20px;
	padding-top : 25px;
	float : left;
}

/* 드롭 된 메뉴 전체의 스타일 조정 */
#mega-menu > ul >li{
	padding : 10px 10px 10px 10px;
	text-align : center;
}
#mega-menu > ul >li:hover{
	border-radius :20px;
	background-color : #ffebcd;
	text-align : center;
}

/* 드롭 된 메뉴의 간격 조정 */
.list_lnb_01 {
 	margin-left : 175px;  
 		width: 130px;
}
.list_lnb_02 {
 	margin-left : 70px; 
 	width : 150px;
}
.list_lnb_03 {
 	margin-left : 70px; 
 		width: 130px;
}
.list_lnb_04 {
 	margin-left : 55px; 
 		width: 130px;
}

/* 드롭 된 메뉴의 스타일 조정 */
#mega-menu > ul >li > a{
 	font-weight : inherit;
	text-align : center;
	color : black;
	text-decoration: none;
}

/* 드롭다운 버튼 구현을 위한 style 임포트 끝*/

/* 4) 로그인 메뉴 & 날씨 API 관련 CSS */
#menu3 {
	text-align: center; 
	padding-bottom :25px;
}

/*  header 영역이 항상 TOP쪽에 표시될 수 있도록 CSS 추가  */

header {
  align-content : center;
  background-color : white;
  position: fixed;
  text-align: center;
}

body {
  background-color :white;
  padding-top: 50px;
  text-align: center;
}

.inner p {
  background-color :white;
}

/* header 영역 고정 완료 */

</style>
<!--          			# 부트스트랩 플러그인  관련 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Digital marketing courses website template that can help you boost your business courses website and its completely free.">
    <meta name="keywords" content="seo,free website template, free responsive website template, seo marketing, search engine optimization, web analytics">
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <!-- Style CSS -->
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
    <!-- 구글 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/fontello.css">
    <link href="<%=request.getContextPath()%>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/owl.carousel.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/owl.theme.default.css" rel="stylesheet">

<!--          			# 부트스트랩 플러그인  관련 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!--          			# 홈버튼 플러그인  관련 -->
<i class="bi bi-house"></i>
</svg>

<title>Top.jsp</title>
</head>
<body>

<!--          			# 플러그인  관련 -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<%=request.getContextPath()%>/js/jquery.min.js" type="text/javascript"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/js/menumaker.js" type="text/javascript"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.sticky.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/sticky-header.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/slider.js"></script>
    
    
    
<!--          			# 메인 로고  관련 -->
<header class ="header">
    <table class="nb_top"  border="0">
	<tr align="center" style="width: 100%; height: 60px;" >
	<td id="menu1" colspan="2">
		<div id="textSlider" class="row">
					<div class="col-xs-12 col-sm-12 col-md-7 col-lg-8 slideCol">
						<div class="scroller">
							<div class="inner" style="width:100%; padding : 0 0 0 0; margin: 0 0 0 0;">
								<p align="center">늘 봄</p>
								<p align="center">いつも春</p>
								<p align="center">Always See</p>
								<p align="center">Always Spring</p>
							</div>
						</div>
					</div>
				</div>
		</td>
	</tr>
	</table>
	<table class="nb_top2" border ="0">
	<tr>
          

<!--          			# 메가드롭 메뉴 관련 -->
	<td id="menu2" align="center" >
		<nav id="main_menu">
			<ul class="list_gnb">
				<li>
				<!-- 			 1-1)	홈 버튼 -->
				<a id ="homebtn" href="<%=request.getContextPath()%>/nb/Main" title="">
				<svg id="nb_homebtn" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-houses" viewBox="0 0 16 16">
 				<path d="M5.793 1a1 1 0 0 1 1.414 0l.647.646a.5.5 0 1 1-.708.708L6.5 1.707 2 6.207V12.5a.5.5 0 0 0 .5.5.5.5 0 0 1 0 1A1.5 1.5 0 0 1 1 12.5V7.207l-.146.147a.5.5 0 0 1-.708-.708L5.793 1Zm3 1a1 1 0 0 1 1.414 0L12 3.793V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v3.293l1.854 1.853a.5.5 0 0 1-.708.708L15 8.207V13.5a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 4 13.5V8.207l-.146.147a.5.5 0 1 1-.708-.708L8.793 2Zm.707.707L5 7.207V13.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5V7.207l-4.5-4.5Z"/>
				</svg></a>
				<!-- 			 1-2)	메뉴 버튼 -->
				<a href="<%=request.getContextPath()%>/nb/Intro.do?center=/nb_company/intro.jsp"> 늘 봄이란?</a>
				<a href="<%=request.getContextPath()%>/nb/edu.do?center=/nb_shop/edu.jsp"> 수강 신청 </a>
				<a href="<%=request.getContextPath()%>/nb/free.bo?center=/nb_board/freeboard.jsp"> 소통 하기</a>
				<a href="<%=request.getContextPath()%>/nb/pet.shop?center=/nb_shop/pet.jsp"> 늘 봄샵</a>
				<div id="mega-menu">
					<ul class="list_lnb_01">
						<li><a href="<%=request.getContextPath()%>/nb/Intro.do?center=/nb_company/intro.jsp">회사 소개</a></li>
						<li><a href="<%=request.getContextPath()%>/nb/ci.do?center=/nb_company/ci.jsp"> C I</a></li>
						<li><a href="<%=request.getContextPath()%>/nb/navi.do?center=/nb_company/navi.jsp">오시는 길</a></li>
					</ul>
					<ul class="list_lnb_02">
						<li><a href="<%=request.getContextPath()%>/nb/edu.do?center=/nb_shop/edu.jsp">수강 신청가기</a></li>
					</ul>
					<ul class="list_lnb_03">
						<li><a href="<%=request.getContextPath()%>/nb/free.bo?center=/nb_board/freeboard.jsp">자유 게시판</a></li>
						<li><a href="<%=request.getContextPath()%>/nb/trainer.bo?center=/nb_board/trainerboard.jsp">훈련사 상담</a></li>
						<li><a href="<%=request.getContextPath()%>/nb/review.bo?center=/nb_board/review.jsp">수강 후기</a></li>
						<li><a href="<%=request.getContextPath()%>/nb/qna.bo?center=/nb_board/qna.jsp">Q&A</a></li>
					</ul>
					<ul class="list_lnb_04">
						<li><a href="<%=request.getContextPath()%>/nb/pet.shop?center=/nb_shop/pet.jsp"> 샵으로 이동 </a></li>
					</ul>
				</div>
			</li>
		</ul>
	</nav>
         </td>
         
         
<!--          			# 탑 메뉴 우측 관련 -->
         	<td id ="menu3" align="center" height="180" width="20%" >
					<!--                  1) 로그인 & 로그아웃 & 마이페이지 & 장바구니 버튼 -->						
					<div>	                    			
                   <a href="<%=request.getContextPath()%>/nb_member/login.member?center=/nb_member/login.jsp" class="btn">로그인</a>
                   <a href="<%=request.getContextPath()%>/nb_member/mypage.member?center=/nb_member/mypage.jsp" class="btn">마이페이지</a>
                   <a href="<%=request.getContextPath()%>/nb_member/join.member?center=/nb_member/join.jsp" class="btn">회원가입</a>
                   <a href="<%=request.getContextPath()%>/nb_member/cart.member?center=/nb_member/cart.jsp" class="btn">장바구니</a>
					</div>
					
					<!-- 					2) 날씨 구현 파트 -->
					<div>
						                    			
						<br>날씨 API 구현 예정<br>
					</div>

    </td>
	</tr>					
	</table>
</header>
<!-- header-close -->
<script>

//메인 메뉴에 마우스가 올려지면 토글하는 함수 생성

$(document).ready(function(){
	$(".list_gnb li").on("mouseover", function(){
		$("#mega-menu").stop().slideDown("fast");
	})
	
	$("#mega-menu").on("mouseleave", function(){
		$("#mega-menu").stop().slideUp("slow");
	})

});


</script>
<center class="nb_center">
</center>
</body>
</html>