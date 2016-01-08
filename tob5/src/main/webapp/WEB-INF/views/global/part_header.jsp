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
<nav class="navbar navbar-inverse" >
  <div class="container-fluid" style="width: 100%;">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
	 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav" style="width: 100%;">
      <li><a class="navbar-brand" href="${context}/"><img src="${img}/logo.PNG" alt="" /></a></li>
		<li><a href="#" id="service"><b>SERVICE</b></a></li>
		<li><a href="#" id="event"><b>EVENT</b></a></li>
		<li><a href="#" id="book"><b>BOOK</b></a></li>    
		<li ><a href="#" id="btn_pur"><b>PURCHASe</b></a></li>
		<li><a href="#" id="btn_cart"><b>CART</b></a></li>
		<li style="padding-right: 100px;"><a href="#" id="team"><b>INFO</b></a></li>
		<c:if test="${empty sessionScope.user}">
	   	<!-- 로그인 안한 상태 -->
		<li style="float: right; margin-right: 15px;"><a href="${context}/admin/main"><span class="glyphicon glyphicon-user"></span>관리자</a></li>
		<li style="float: right;"><a href="${context}/member/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		<li style="float: right;"><a href="#joinForm" id="join">Join</a></li>
		</c:if>
		<c:if test="${not empty sessionScope.user}">
		<li style="float: right;">${user.name}님 반갑습니다.</li>
		<li style="float: right;"><a href="${context}/member/mypage">마이페이지</a></li>
		<li style="float: right;"><input id="btn_logout" type="submit" name="submit" value="로그아웃" /></li>
		</c:if>
      </ul>
    </div>
  </div>
</nav>



<script type="text/javascript">
	$(function() {
		$('#home').click(function() {
			alert('혜숙이한테 디폴트페이지 만들어라 하고 연결시켜야함.');
		});
		$('#event').click(function() {
			alert('event.js로 분할되면 나한테 말해줘 정민아');
		});
		
		$('#book').click(function() {
			alert('책 버튼 클릭');
			book.all();
		});
		
		$('#btn_pur').click(function() {
			alert('구매목록 버튼 클릭');
			Purchase.main(context);
		});
		$('#btn_cart').click(function() {
			alert('장바구니 버튼 클릭');
			Cart.main(context);
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
