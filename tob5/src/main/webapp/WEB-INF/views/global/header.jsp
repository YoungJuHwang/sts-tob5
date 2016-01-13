<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

<!-- Bootstrap Core CSS -->
    <link href="${startcss}/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${startcss}/agency.css" rel="stylesheet">
	
	<!-- 팝업 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.1/magnific-popup.css" />
	
	   <!-- Custom Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
	

<title>Hanbit - words</title>


<body id="page-top" class="index">

<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top">

		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand page-scroll" href="${context}/">TOB|Hanbit</a>
		</div>
		
	<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="#services">SERVICE</a></li>
				<li><a class="page-scroll" href="#book" >BOOK</a></li>
				<li><a class="page-scroll" href="#event" >EVENT</a></li>
				<li><a class="page-scroll" href="#team">INFO</a></li>
		<c:if test="${empty sessionScope.user}">
		<!-- 로그인 안한 상태 -->
		<li style="float: right; margin-right: 30px;"><a href="${context}/admin/main"><span class="glyphicon glyphicon-user"></span>관리자</a></li>
		<li style="float: right"><a href="${context}/member/loginForm"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		<li style="float: right"><a href="${context}/member/joinForm" id="join">Join</a></li>
		</c:if>
		<c:if test="${not empty sessionScope.user}">
		<li style="float: right; padding-right: 10px;"><a href="#" id="mypage">마이페이지</a></li>
		<li style="float: right;"><a href="#" id="my_cart">장바구니</a></li>
		<li style="float: right;"><a href="${context}/member/logout">로그아웃</a></li>
		</c:if>
			</ul>
		</div>
</nav>

<!-- Header -->
    <header>
   <div class="container">
       <div class="intro-text">
           <div class="intro-lead-in">Welcome!!</div>
           <div class="intro-heading">Nice To Meet You</div>
           <a href="#services" class="page-scroll btn btn-xl" style="color: black;">Have a nice today!</a>
       </div>
  </div>
  </header>



<script type="text/javascript">
	$(function() {

		$('#home').click(function() {
		});
		
		$('#info').click(function() {
		});
		
		$('#event_more').click(function() {
			Event.event();
		});
		
		$('#mypage').click(function() {
			Member.detail(context+'/member/detail/${user.userid}');
		});
		
		$('#my_cart').click(function() {
			Cart.list('${user.userid}');
		}); 
		
		$('#btn_logout').click(function() {
			alert('로그아웃');
			Member.logout(context);
		});
	});
</script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${startjs}/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="${startjs}/classie.js"></script>
	<script src="${startjs}/cbpAnimatedHeader.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="${startjs}/jqBootstrapValidation.js"></script>
<script src=" https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js "></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>
</body>