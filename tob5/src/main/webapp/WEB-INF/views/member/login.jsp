<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style type="text/css">

.pop-layer {display:none; position: absolute; top: 50%; left: 50%; width: 410px; height:auto;  background-color:#fff; border: 5px solid #3571B5; z-index: 10;} 
.pop-layer .pop-container {padding: 20px 25px;}
.pop-layer p.ctxt {color: #666; line-height: 25px;}
.pop-layer .btn-r {width: 100%; margin:10px 0 20px; padding-top: 10px; border-top: 1px solid #DDD; text-align:right;}
a.cbtn {display:inline-block; height:25px; padding:0 14px 0; border:1px solid #304a8a; background-color:#3f5a9d; font-size:13px; color:#fff; line-height:25px;}
a.cbtn:hover {border: 1px solid #091940; background-color:#1f326a; color:#fff;}
</style>


 <div class= "로그인" >
   <div class = "container" style = "width : 30%; background-color: zoom: 500; filter: alpha(opacity=1000); opacity: 0.6;">
  <div class = "jumbotron">
     <h1 ><span class ="label label-default">&nbsp;&nbsp;&nbsp;한빛문고&nbsp;&nbsp;&nbsp;</span></h1><br/> 
    <form class = "form-horizontal" role = "form">
    <div class = "form-group">
      <label class= "control-label col-sm-4" for="email" >아이디</label>
      <div class= "col-sm-8" >
        <input type= "text" class = "form-control" id ="id" placeholder="아이디를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-4" for="pwd" >비밀먼호</label>
      <div class= "col-sm-8" >         
        <input type= "password" class = "form-control" id="password" placeholder = "비밀번호를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">      
      <div class= "col-sm-offset-4 col-sm-10" >
        <div class= "checkbox" >
          <label><input type ="checkbox"> 로그인 상태유지</label >
        </div>
      </div>
    </div >
    <div class ="container" >
            <label class= "control-label col-sm-offset-6 col-sm-7" for="text" >
       <button type= "button" class = "btn btn-default" ><h6><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></h6></button>   
       </label>
     </div >
  </form >
</div>
  </div >
  <!-- <script>
  $(function() {
    		$('#btn_login').click(function() {
    			$.ajax({
    				url : '${context}/member/join.do',
    				data : {
    					userid : $('#userid').val(),
    					password : $('#password').val(),
    				},
    				dataType : 'json',
    				contentType : "application/x-www-form-urlencoded; charset=utf-8",
    				success : function(data) {
    					if (data.result === 'success') {
    						$('<div id="login_result"></div>').appendTo($('#frm_login').empty());
    						$('#login_result').html(
    							'<div>환영합니다 '+data.name+' 님</div>"><button id="close">닫기</button>'
    						);
    						$('#close').click(function() {
    							window.opener.top.location.href 
    								= "${context}/main.do?page=auth&userid="+data.userid;
    							window.close();
    						});
    					} else {
    						alert('로그인 실패');
    					}
    				},
    				error : function() {
    					alert('ajax 실패');
    				}
    			});
    		});
    	});
    	
    </SCRIPT> -->
</div>