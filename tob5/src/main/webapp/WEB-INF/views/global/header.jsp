<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.1/jquery.magnific-popup.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.1/magnific-popup.css" />


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
		<li style="padding-right: 100px;"><a href="#" id="btn_cart"><b>cart</b></a></li>
		<c:if test="${empty sessionScope.user}">
	   	<!-- 로그인 안한 상태 -->
		
		<li style="float: right"><a href="${context}/admin/main"><span class="glyphicon glyphicon-user"></span>관리자</a></li>
		<li style="float: right"><a href="${context}/member/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		<li style="float: right"><a href="#joinForm" id="join">Join</a></li>
		</c:if>
		<c:if test="${not empty sessionScope.user}">
		<li style="float: right;">${user.name}님 반갑습니다.</li>
		<li style="float: right;"><a href="${context}/member/mypage">마이페이지</a></li>
		<li style="float: right;"><input id="btn_logout" type="submit" name="submit" value="로그아웃" /></li>
		</c:if>
	</ul>
	</div>
</div>

<div id="joinForm" class="white-popup-block mfp-hide" 
	style='background-color: white; margin : 0 auto;'>
	<!-- <h1>모달 테스트</h1>
	 -->
	<jsp:include page="../member/Join.jsp"></jsp:include>

</div>
<script type="text/javascript">
	$(function() {
		/* $('#join').magnificPopup({
			type : 'inline',
			preloader : false,
			modal : true,
			closeContentPos : true,
			fixedContentPos: true,
	        alignTop: false, 최상단위치 
			showCloseBtn: true
		});
		$(document).on('click','.popupClose',function(e){
			e.preventDefault();
			$.magnificPopup.close();
		}); */
		
		$('#home').click(function() {
			alert('혜숙이한테 디폴트페이지 만들어라 하고 연결시켜야함.');
		});
		
		$('#info').click(function() {
			alert('소개 페이지 만들고 연결시켜야함.');
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