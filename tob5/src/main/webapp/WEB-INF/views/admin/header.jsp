<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" >
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<jsp:useBean id="now" class="java.util.Date"/>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${context}/">
      	<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
      </a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${context}/admin/main">관리자 홈<span class="sr-only">(current)</span></a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">회원관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${context}/admin/member_reg">회원 및 관리자 등록</a></li>
            <%-- <li><a href="${context}/admin/member_reg3">회원 등록3</a></li> --%>
            <li><a href="${context}/admin/member_list">전체 회원 목록</a></li>
          </ul>
        </li>	   
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">책 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${context}/admin/book_reg">책 등록</a></li>
            <li><a href="${context}/admin/book_list">전체 책 목록</a></li>
          </ul>
        </li>
          <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">이벤트 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${context}/admin/event_reg">이벤트 등록</a></li>
            <li><a href="${context}/admin/event_list">전체 이벤트 목록</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">주문 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${context}/admin/purchase_list">전체 주문 목록</a></li>
            <li><a href="${context}/admin/account_list">날짜별 주문 목록</a></li>
          </ul>
        </li>
      </ul>
      
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">검 색</button>
      </form>
     
    </div>
  </div>
</nav>
<script type="text/javascript">
	$(function() {
		
	});
	
</script>