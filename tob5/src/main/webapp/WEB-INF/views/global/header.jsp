<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel ="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >
<link rel ="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" >
<script src=" https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js "></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" ></script>
<title>Hanbit - words</title>

<!-- Header -->
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="navbar navbar-inverse" id="bs-example-navbar-collapse" >
<div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll"  href="#">
                    <i class="fa fa-play-circle"></i>  <span class="light"><b>TOB</b></span>||Hanbit
                </a>
            </div>
            </div>
	<div class="nav navbar-nav" style="width: 100%">
	<ul class="nav navbar-nav"	style="padding-bottom: 5px; margin: 0 auto; width: 100%">
		<li style="padding-right: 100px;"><a href="#" id="home"><b>HOME</b></a></li>
		<li style="padding-right: 100px;"><a href="#" id="info"><b>INFO</b></a></li>
		<li style="padding-right: 100px;"><a href="#" id="book"><b>BOOK</b></a></li>    
		<li style="padding-right: 100px;"><a href="#" id="event"><b>EVENT</b></a></li>
		<li style="padding-right: 100px;"><a href="#" id="btn_pur"><b>Purchase</b></a></li>
		<c:if test="${empty sessionScope.user}">
	   	<!-- 로그인 안한 상태 -->
		
		<li style="float: right"><a href="${context}/admin/main"><span class="glyphicon glyphicon-user"></span>관리자</a></li>
		<li style="float: right"><a href="${context}/member/loginForm"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		<li style="float: right"><a href="${context}/member/joinForm" id="join">Join</a></li>
		</c:if>
		<c:if test="${not empty sessionScope.user}">
		<li style="float: right;">${user.name}님 반갑습니다.</li>
		<li style="float: right;"><a href="#" id="mypage">마이페이지</a></li>
		<li style="float: right;"><a href="#" id="my_cart">장바구니</a></li>
		<li style="float: right;"><a href="${context}/member/logout">로그아웃</a></li>
		</c:if>
	</ul>
	</div>
</div>

<script type="text/javascript">
	$(function() {
	
		$('#home').click(function() {
		});
		
		$('#info').click(function() {
		});
		
		$('#event').click(function() {
			Event.event();
		});
		
		$('#book').click(function() {
			alert('책 버튼 클릭, 세션에 넘기는 아이디 : '+'${user.userid}');
			book.all('${user.userid}');
		});
		
		$('#btn_pur').click(function() {
			alert('구매목록 버튼 클릭');
			Purchase.main(context);
		});
		$('#my_cart').click(function() {
			alert('내 장바구니 버튼 클릭' + '${user.userid}');
			/* Cart.list('${user.userid}'); */
			Member.cartlist(context, '${user.userid}');
		});
		$('#mypage').click(function() {
			alert('마이페이지 버튼 클릭');
			Member.detail('${user.userid}');
		});
	});
</script>