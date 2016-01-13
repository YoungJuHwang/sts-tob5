<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap Core CSS -->
<link href="${startcss}/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${startcss}/agency.css" rel="stylesheet">


<!-- Custom Fonts -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<style type="text/css">

.index {
background-image: url('${startimages}/team/tema.png');
}
header {
	background-image: url('${startimages}/header/Banned-Book.jpg');
	width: 100%;
	background-repeat: none;
	background-attachment: scroll;
	background-position: center center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	-o-background-size: cover;
	text-align: center;
	color: #fff
}

header .intro-text {
	padding-top: 100px;
	padding-bottom: 50px
}

header .intro-text .intro-lead-in {
	font-family: "Droid Serif", "Helvetica Neue", Helvetica, Arial,
		sans-serif;
	font-style: italic;
	font-size: 22px;
	line-height: 22px;
	margin-bottom: 25px
}

header .intro-text .intro-heading {
	font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
	text-transform: uppercase;
	font-weight: 700;
	font-size: 50px;
	line-height: 50px;
	margin-bottom: 25px
}

@media ( min-width :768px) {
	header .intro-text {
		padding-top: 300px;
		padding-bottom: 200px
	}
	header .intro-text .intro-lead-in {
		font-family: "Droid Serif", "Helvetica Neue", Helvetica, Arial,
			sans-serif;
		font-style: italic;
		font-size: 40px;
		line-height: 40px;
		margin-bottom: 25px
	}
	header .intro-text .intro-heading {
		font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
		text-transform: uppercase;
		font-weight: 700;
		font-size: 75px;
		line-height: 75px;
		margin-bottom: 50px
	}
}

section {
	padding: 100px 0
}

section h2.section-heading {
	font-size: 40px;
	margin-top: 0;
	margin-bottom: 15px
}

section h3.section-subheading {
	font-size: 16px;
	font-family: "Droid Serif", "Helvetica Neue", Helvetica, Arial,
		sans-serif;
	text-transform: none;
	font-style: italic;
	font-weight: 400;
	margin-bottom: 75px
}

@media ( min-width :768px) {
	section {
		padding: 150px 0
	}
}

.service-heading {
	margin: 15px 0;
	text-transform: none
}

#portfolio .portfolio-item {
	margin: 0 0 15px;
	right: 0
}

#portfolio .portfolio-item .portfolio-link {
	display: block;
	position: relative;
	max-width: 400px;
	margin: 0 auto
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover {
	background: rgba(254, 209, 54, .9);
	position: absolute;
	width: 100%;
	height: 100%;
	opacity: 0;
	transition: all ease .5s;
	-webkit-transition: all ease .5s;
	-moz-transition: all ease .5s
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover:hover {
	opacity: 1
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content
	{
	position: absolute;
	width: 100%;
	height: 20px;
	font-size: 20px;
	text-align: center;
	top: 50%;
	margin-top: -12px;
	color: #fff
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content i
	{
	margin-top: -12px
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content h3,
	#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content h4
	{
	margin: 0
}

#portfolio .portfolio-item .portfolio-caption {
	max-width: 400px;
	margin: 0 auto;
	background-color: #fff;
	text-align: center;
	padding: 25px
}

#portfolio .portfolio-item .portfolio-caption h4 {
	text-transform: none;
	margin: 0
}

#portfolio .portfolio-item .portfolio-caption p {
	font-family: "Droid Serif", "Helvetica Neue", Helvetica, Arial,
		sans-serif;
	font-style: italic;
	font-size: 16px;
	margin: 0
}

#portfolio * {
	z-index: 2
}

@media ( min-width :767px) {
	#portfolio .portfolio-item {
		margin: 0 0 30px
	}
}

.timeline {
	list-style: none;
	padding: 0;
	position: relative
}

.timeline:before {
	top: 0;
	bottom: 0;
	position: absolute;
	content: "";
	width: 2px;
	background-color: #f1f1f1;
	left: 40px;
	margin-left: -1.5px
}

.timeline>li {
	margin-bottom: 50px;
	position: relative;
	min-height: 50px
}

.timeline>li:before, .timeline>li:after {
	content: " ";
	display: table
}

.timeline>li:after {
	clear: both
}

.timeline>li .timeline-panel {
	width: 100%;
	float: right;
	padding: 0 20px 0 100px;
	position: relative;
	text-align: left
}

.timeline>li .timeline-panel:before {
	border-left-width: 0;
	border-right-width: 15px;
	left: -15px;
	right: auto
}

.timeline>li .timeline-panel:after {
	border-left-width: 0;
	border-right-width: 14px;
	left: -14px;
	right: auto
}

.timeline>li .timeline-image {
	left: 0;
	margin-left: 0;
	width: 80px;
	height: 80px;
	position: absolute;
	z-index: 100;
	background-color: #fed136;
	color: #fff;
	border-radius: 100%;
	border: 7px solid #f1f1f1;
	text-align: center
}

.timeline>li .timeline-image h4 {
	font-size: 10px;
	margin-top: 12px;
	line-height: 14px
}

.timeline>li.timeline-inverted>.timeline-panel {
	float: right;
	text-align: left;
	padding: 0 20px 0 100px
}

.timeline>li.timeline-inverted>.timeline-panel:before {
	border-left-width: 0;
	border-right-width: 15px;
	left: -15px;
	right: auto
}

.timeline>li.timeline-inverted>.timeline-panel:after {
	border-left-width: 0;
	border-right-width: 14px;
	left: -14px;
	right: auto
}

.timeline>li:last-child {
	margin-bottom: 0
}

.timeline .timeline-heading h4 {
	margin-top: 0;
	color: inherit
}

.timeline .timeline-heading h4.subheading {
	text-transform: none
}

.timeline .timeline-body>p, .timeline .timeline-body>ul {
	margin-bottom: 0
}

@media ( min-width :768px) {
	.timeline:before {
		left: 50%
	}
	.timeline>li {
		margin-bottom: 100px;
		min-height: 100px
	}
	.timeline>li .timeline-panel {
		width: 41%;
		float: left;
		padding: 0 20px 20px 30px;
		text-align: right
	}
	.timeline>li .timeline-image {
		width: 100px;
		height: 100px;
		left: 50%;
		margin-left: -50px
	}
	.timeline>li .timeline-image h4 {
		font-size: 13px;
		margin-top: 16px;
		line-height: 18px
	}
	.timeline>li.timeline-inverted>.timeline-panel {
		float: right;
		text-align: left;
		padding: 0 30px 20px 20px
	}
}

@media ( min-width :992px) {
	.timeline>li {
		min-height: 150px
	}
	.timeline>li .timeline-panel {
		padding: 0 20px 20px
	}
	.timeline>li .timeline-image {
		width: 150px;
		height: 150px;
		margin-left: -75px
	}
	.timeline>li .timeline-image h4 {
		font-size: 18px;
		margin-top: 30px;
		line-height: 26px
	}
	.timeline>li.timeline-inverted>.timeline-panel {
		padding: 0 20px 20px
	}
}

@media ( min-width :1200px) {
	.timeline>li {
		min-height: 170px
	}
	.timeline>li .timeline-panel {
		padding: 0 20px 20px 100px
	}
	.timeline>li .timeline-image {
		width: 170px;
		height: 170px;
		margin-left: -85px
	}
	.timeline>li .timeline-image h4 {
		margin-top: 40px
	}
	.timeline>li.timeline-inverted>.timeline-panel {
		padding: 0 100px 20px 20px
	}
}

.team-member {
	text-align: center;
	margin-bottom: 50px
}

.team-member img {
	margin: 0 auto;
	border: 7px solid #fff
}

.team-member h4 {
	margin-top: 25px;
	margin-bottom: 0;
	text-transform: none
}

.team-member p {
	margin-top: 0
}

aside.clients img {
	margin: 50px auto
}

section#contact {
	background-color: #222;
	background-position: center;
	background-repeat: no-repeat
}

section#contact .section-heading {
	color: #fff
}

section#contact .form-group {
	margin-bottom: 25px
}

section#contact .form-group input, section#contact .form-group textarea
	{
	padding: 20px
}

section#contact .form-group input.form-control {
	height: auto
}

section#contact .form-group textarea.form-control {
	height: 236px
}

section#contact .form-control:focus {
	border-color: #fed136;
	box-shadow: none
}

section#contact ::-webkit-input-placeholder {
	font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
	text-transform: uppercase;
	font-weight: 700;
	color: #bbb
}

section#contact :-moz-placeholder {
	font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
	text-transform: uppercase;
	font-weight: 700;
	color: #bbb
}

section#contact ::-moz-placeholder {
	font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
	text-transform: uppercase;
	font-weight: 700;
	color: #bbb
}

section#contact :-ms-input-placeholder {
	font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
	text-transform: uppercase;
	font-weight: 700;
	color: #bbb
}

section#contact .text-danger {
	color: #e74c3c
}

footer {
	padding: 25px 0;
	text-align: center
}

footer span.copyright {
	line-height: 40px;
	font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
	text-transform: uppercase;
	text-transform: none
}

footer ul.quicklinks {
	margin-bottom: 0;
	line-height: 40px;
	font-family: Montserrat, "Helvetica Neue", Helvetica, Arial, sans-serif;
	text-transform: uppercase;
	text-transform: none
}

ul.social-buttons {
	margin-bottom: 0
}

ul.social-buttons li a {
	display: block;
	background-color: #222;
	height: 40px;
	width: 40px;
	border-radius: 100%;
	font-size: 20px;
	line-height: 40px;
	color: #fff;
	outline: 0;
	-webkit-transition: all .3s;
	-moz-transition: all .3s;
	transition: all .3s
}

ul.social-buttons li a:hover, ul.social-buttons li a:focus, ul.social-buttons li a:active
	{
	background-color: #fed136
}

.btn:focus, .btn:active, .btn.active, .btn:active:focus {
	outline: 0
}

.portfolio-modal .modal-content {
	border-radius: 0;
	background-clip: border-box;
	-webkit-box-shadow: none;
	box-shadow: none;
	border: 0;
	min-height: 100%;
	padding: 100px 0;
	text-align: center
}

.portfolio-modal .modal-content h2 {
	margin-bottom: 15px;
	font-size: 3em
}

.portfolio-modal .modal-content p {
	margin-bottom: 30px
}

.portfolio-modal .modal-content p.item-intro {
	margin: 20px 0 30px;
	font-family: "Droid Serif", "Helvetica Neue", Helvetica, Arial,
		sans-serif;
	font-style: italic;
	font-size: 16px
}

.portfolio-modal .modal-content ul.list-inline {
	margin-bottom: 30px;
	margin-top: 0
}

.portfolio-modal .modal-content img {
	margin-bottom: 30px
}

.portfolio-modal .close-modal {
	position: absolute;
	width: 75px;
	height: 75px;
	background-color: transparent;
	top: 25px;
	right: 25px;
	cursor: pointer
}

.portfolio-modal .close-modal:hover {
	opacity: .3
}

.portfolio-modal .close-modal .lr {
	height: 75px;
	width: 1px;
	margin-left: 35px;
	background-color: #222;
	transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
	z-index: 1051
}

.portfolio-modal .close-modal .lr .rl {
	height: 75px;
	width: 1px;
	background-color: #222;
	transform: rotate(90deg);
	-ms-transform: rotate(90deg);
	-webkit-transform: rotate(90deg);
	z-index: 1052
}

.portfolio-modal .modal-backdrop {
	opacity: 0;
	display: none
}

::-moz-selection {
	text-shadow: none;
	background: #fed136
}

::selection {
	text-shadow: none;
	background: #fed136
}

img::selection {
	background: 0 0
}

img::-moz-selection {
	background: 0 0
}

body {
	webkit-tap-highlight-color: #fed136
}
</style>
<body id="page-top" class="index">
	<!-- Services Section BestSeller -->
	<section id="main_section" class="container content-section">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2"
				style="width: 100%; margin: auto;">

				<hr />
				<img src="${img}/bstseller.png" alt="" style="padding-top: 20px;" />
				<!-- 베스트셀러 시작 -->


				<div style="margin: auto; width: 100%;">
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail" id="now"> <img
							src="${img}/bstbook1.jpg" alt="지금 이 순간"
							style="width: 141px; height: 203px;">
						</a>
					</div>
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail" id="sapi"> <img
							src="${img}/bstbook2.jpg" alt="사피엔스"
							style="width: 141px; height: 203px;">
						</a>
					</div>
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail" id="lonly"> <img
							src="${img}/bstbook3.jpg" alt="가끔은 격하게 위로워야 한다."
							style="width: 141px; height: 203px;">
						</a>
					</div>
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail" id="mine"> <img
							src="${img}/bstbook4.jpg" alt="내안에서 나를 만드는 것들"
							style="width: 141px; height: 203px;">
						</a>
					</div>
				</div>
				<!-- 종료 -->
			</div>
		</div>

		<!-- Download Section -->
		<div class="download-section">
			<div class="container">
				<div class="col-lg-8 col-lg-offset-2"
					style="width: 100%; margin: auto;">
					<hr />
					<img src="${img}/reco.png" alt="" style="padding-top: 10px;" />
					<!-- 분야 추천 -->
					<div class="row">
						<div class="col-xs-6 col-md-3">
							<a href="#" class="thumbnail" id="memo"> <img
								src="${img}/recome1.jpg" alt="메모 습관의 힘"
								style="width: 141px; height: 203px;">
							</a>
						</div>
						<div class="col-xs-6 col-md-3">
							<a href="#" class="thumbnail" id="best"> <img
								src="${img}/recome2.jpg" alt="베스트 편곡으로 배우는 아주 특별한 통기타 교본"
								style="width: 141px; height: 203px;">
							</a>
						</div>
						<div class="col-xs-6 col-md-3">
							<a href="#" class="thumbnail" id="oneday"> <img
								src="${img}/recome3.jpg"
								alt="하루 세 줄, 마음정리법 일본 최고 의사가 전하는 스트레스 리셋 처방전"
								style="width: 141px; height: 203px;">
							</a>
						</div>
						<div class="col-xs-6 col-md-3">
							<a href="#" class="thumbnail" id="pathion"> <img
								src="${img}/recome4.jpg" alt="패션의 탄생 컬러링북 쇼핑보다 짜릿한 컬러 스타일링"
								style="width: 141px; height: 203px;">
							</a>
						</div>
					</div>
				</div>
				<!-- 끝 -->
				</div>
		</div>
	</section>
	
	<!-- Contact Section -->
	<!-- BOOK -->
		
	<section id="book_section" class="container content-section">
		<a href="#" id="book_test">이거눌</a>
	<hr />
		<div class="download-section">
			<div class="col-lg-8 col-lg-offset-2"
				style="width: 100%; margin: auto;">
				<a href="#" id="book_more"><img src="${img}/week.png" alt="" /></a>
			</div>
			<div class="row">
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail" id="you"> <img src="${img}/weekday1.jpg"
							alt="참 좋은 당신을 만났습니다." style="width: 141px; height: 203px;">
						</a>
					</div>
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail" id="happy"> <img src="${img}/weekday2.jpg"
							alt="나는 이제 좀 행복해져야겠다." style="width: 141px; height: 203px;">
						</a>
					</div>
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail" id="story"> <img src="${img}/weekday3.jpg"
							alt="내 스물아홉 이야기" style="width: 141px; height: 203px;">
						</a>
					</div>
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail" id="okay"> <img src="${img}/weekday4.jpg"
							alt="괜찮아, 괜찮아 그래도 괜찮아." style="width: 141px; height: 203px;">
						</a>
					</div>
				</div>
		</div>
		<div id="submain">
		
		</div>
	</section>
	
	<!-- Event -->
	<section id="event_section">
		<div class="container">
		<hr />
			<div class="row">
				<div class="col-lg-12">
					<h2 class="section-heading" id="event_more">EVENT</h2>
					<div class="row">
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="${img}/E003.jpg" alt="소프트 스킬 리뷰어 이벤트">
								<div class="caption">
									<h4>소프트 스킬 리뷰어 이벤트</h4>
									<p>2016/01/01~2016/01/31</p>
									<p>
										<a href="#" id="soft" class="btn btn-primary" role="button">더보기</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="${img}/E004.jpg" alt="응답하라!! 재테크">
								<div class="caption">
									<h4>응답하라!! 재테크</h4>
									<p>2016/01/01/~2016/01/31</p>
									<p>
										<a href="#" id="tech" class="btn btn-primary" role="button">더보기</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="${img}/E008.jpg" alt="[특별 기획] 송곳과 한국 사회">
								<div class="caption">
									<h4>[특별 기획] 송곳과 한국 사회</h4>
									<p>2015/01/01~2016/01/31</p>
									<p>
										<a href="#" id="songgok" class="btn btn-primary" role="button">더보기</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="event_submain"></section>
	<hr />
	<!-- team -->
	<section id="info_section">
		<div class="container">
		<hr />
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading" style="color: white;">TOB TEAM</h2>
					<h3 class="section-subheading text-muted">팀원들을 소개합니다.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="team-member">
						<img src="#" class="img-responsive img-circle" alt="">
						<h4 style="color: white;">Hwang YoungJu</h4>
						<p class="text-muted" style="color: white;">Team Leader</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><img
									src="${startimages}/icon/icon-twitter.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/facebook-icon.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/linkedin.png" alt="" /></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="#" class="img-responsive img-circle" alt="">
						<h4 style="color: white;">Kim Sumin</h4>
						<p class="text-muted">준비중</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><img
									src="${startimages}/icon/icon-twitter.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/facebook-icon.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/linkedin.png" alt="" /></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="#" class="img-responsive img-circle" alt="">
						<h4 style="color: white;">Seong YonWoo</h4>
						<p class="text-muted">준비중</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><img
									src="${startimages}/icon/icon-twitter.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/facebook-icon.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/linkedin.png" alt="" /></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="#" class="img-responsive img-circle" alt="">
						<h4 style="color: white;">Lee JeongMin</h4>
						<p class="text-muted">준비중</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><img
									src="${startimages}/icon/icon-twitter.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/facebook-icon.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/linkedin.png" alt="" /></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="#" class="img-responsive img-circle" alt="">
						<h4 style="color: white;">Lee HyeSuk</h4>
						<p class="text-muted">준비중</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><img
									src="${startimages}/icon/icon-twitter.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/facebook-icon.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/linkedin.png" alt="" /></a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img src="#" class="img-responsive img-circle" alt="">
						<h4 style="color: white;">Hong HyeongDong</h4>
						<p class="text-muted">준비중</p>
						<ul class="list-inline social-buttons">
							<li><a href="#"><img
									src="${startimages}/icon/icon-twitter.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/facebook-icon.png" alt="" /></a></li>
							<li><a href="#"><img
									src="${startimages}/icon/linkedin.png" alt="" /></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<p class="large text-muted">준비중입니다.</p>
				</div>
			</div>
		</div>
	</section>
</body>

	<!-- Bootstrap Core JavaScript -->
	<script src="${startjs}/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="${startjs}/cbpAnimatedHeader.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="${startjs}/jqBootstrapValidation.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${startjs}/agency.js"></script>

	<script src="${js}/Book.js"></script>




<script type="text/javascript">
$(function() {
	//book.searchForTodayBook2();
	
	$('#event_test').click(function() {
		Event.event('${user.userid}');
		alert('넘기는 유저아이디 : '+'${user.userid}');
	});
	$('#book_test').click(function() {
		$('#book_section').empty();
		book.all('${user.userid}');
		alert('넘기는 유저아이디 : '+'${user.userid}');
	});
	$('#tech').click( function() {
   	 alert("이벤트 댓글달기로 이동");
        Event.eventPage();
	});

	$('#soft').click(function() {
		alert("이벤트 댓글달기로 이동");
		Event.eventPage();
	});
	$('#songgok').click(function() {
		alert("이벤트 댓글달기로 이동");
		Event.eventPage();
	});
	$('#sapi').click(function() {
		alert("확인");
		book.mainPage();
	});
	$('#lonly').click(function() {
		alert("확인");
		book.mainPage();
	});
	$('#mine').click(function() {
		alert("확인");
		book.mainPage();
	});
	$('#memo').click(function() {
		alert("확인");
		book.mainPage();
	});
	$('#best').click(function() {
		alert("확인");
		book.mainPage();
	});
	$('#oneday').click(function() {
		alert("확인");
		book.mainPage();
	});
	$('#pathion').click(function() {
		alert("확인");
		book.mainPage();
	});
		});
		
</script>



