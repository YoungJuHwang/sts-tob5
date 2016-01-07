<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- <head>
<style type="text/css">
.layer {display:none; position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:100;}
.layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50);}
.layer .pop-layer {display:block;}
.pop-layer {display:none; position: absolute;} 
</style>
</head> -->
<body>
<a href="${context}/member/Join" class="join" onclick="layer_open('layer2');return false;"></a>
<div class="layer">
<div class="bg"></div>
<div id="layer2" class="pop-layer">
   <div class = "pop-container" style = "width : 30%; background-color: zoom: 500; filter: alpha(opacity=1000); opacity: 0.6; position:" >
  <div class = "pop-jumbotron">
    <h1 ><span class ="label label-default">&nbsp;&nbsp;&nbsp;회원가입&nbsp;&nbsp;&nbsp;</span></h1><br/>  
    <form class = "form-horizontal" role = "form">
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="email" >아이디</label>
      <div class= "col-sm-9" >
        <input type= "text" class = "form-control" id ="id" placeholder="아이디를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="pwd" >비밀먼호</label>
      <div class= "col-sm-9" >         
        <input type= "password" class = "form-control" id="password" placeholder = "비밀번호를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="pwd" > 재확인</label >
      <div class= "col-sm-9" >         
        <input type= "password" class = "form-control" id="password" placeholder = "비밀번호를 재입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >이름</label>
      <div class= "col-sm-9" >         
        <input type= "text" class = "form-control" id ="name" placeholder="이름을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >생년월일</label>
      <div class= "col-sm-9" >         
        <input type= "text" class = "form-control" id="birth" placeholder= "생년월일을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >성별</label>
      <div class= "col-sm-9" >         
        <label class= "radio-inline" >
      <input type= "radio" name = "optradio">남
      </label>
    <label class = "radio-inline">
      <input type= "radio" name = "optradio">여
      </label>
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >이메일</label>
      <div class= "col-sm-9" >         
        <input type= "text" class = "form-control" id="email" placeholder= "이메일을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >전화번호</label>
      <div class= "col-sm-9" >         
        <input type= "text" class = "form-control" id="phone" placeholder= "전화번호를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >주소</label>
      <div class= "col-sm-9" >         
        <input type= "text" class = "form-control" id ="addr" placeholder="주소를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >상세주소</label>
      <div class= "col-sm-9" >         
        <input type= "text" class = "form-control" id ="addr" placeholder="나머지주소를 입력해주세요" >
      </div>
    </div >
    
      <div class= "container" >
      <div class= "col-sm-offset-3 col-sm-10" >
        <div class= "checkbox" >
          <label><input type ="checkbox">정보활용에 동의합니다.</label >
        </div>
      </div>
            <label class= "control-label col-sm-offset-2 col-sm-9" for="text"  style="white-space:nowrap;">
       <button type= "button" class = "btn btn-default" ><h6><strong>&nbsp;&nbsp;&nbsp;회원가입완료&nbsp;&nbsp;&nbsp;</strong></h6></button>  
       <button type= "button" class = "btn btn-default" ><h6><strong>&nbsp;&nbsp;&nbsp;회원가입취소&nbsp;&nbsp;&nbsp;</strong></h6></button>
       </label>
     </div >
  </form >
</div>
  </div >    
</div>
</div>	
</body>
 