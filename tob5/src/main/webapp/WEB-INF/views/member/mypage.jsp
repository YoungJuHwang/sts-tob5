<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<div class = "마이페이지" >
   <div class = "container" style = "width : 30%; background-color: zoom: 500; filter: alpha(opacity=1000); opacity: 0.6;" >
  <div class = "jumbotron" >
    <h1 ><span class ="label label-default" style="background-color:black;">&nbsp;마이페이지&nbsp;</span></h1><br/>  
    <form class = "form-horizontal" role = "form">
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="email" >아이디</label>
      <div class= "col-sm-8" >
        <input type= "text" class = "form-control" id ="id" placeholder="아이디를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="pwd" >비밀먼호</label>
      <div class= "col-sm-8" >         
        <input type= "password" class = "form-control" id="password" placeholder = "비밀번호를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="pwd" > 재확인</label >
      <div class= "col-sm-8" >         
        <input type= "password" class = "form-control" id="passwordCofirm" placeholder = "비밀번호를 재입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >이름</label>
      <div class= "col-sm-8" >         
        <input type= "text" class = "form-control" id ="name" placeholder="이름을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >생년월일</label>
      <div class= "col-sm-8" >         
        <input type= "text" class = "form-control" id="birth" placeholder= "생년월일을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >성별</label>
      <div class= "col-sm-8" >         
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
      <div class= "col-sm-8" >         
        <input type= "text" class = "form-control" id="email" placeholder= "이메일을 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >전화번호</label>
      <div class= "col-sm-8" >         
        <input type= "text" class = "form-control" id="phone" placeholder= "전화번호를 입력해주세요" >
      </div>
    </div >
    <div class = "form-group">
      <label class= "control-label col-sm-3" for="text" >주소</label>
      <div class= "col-sm-8" >         
        <input type= "text" class = "form-control" id ="addr" placeholder="주소를 입력해주세요" >
      </div>
    </div >
      <div class= "container" >
      <div class= "col-sm-offset-3 col-sm-10" >
        <div class= "checkbox" >
          <label><input type ="checkbox">정보수정에 동의합니다.</label >
        </div>
      </div>
            <label class= "control-label col-sm-offset-2 col-sm-9" for="text"  style="white-space:nowrap;">
       <button type= "button" class = "btn btn-default" id="joinBtn"><h6><strong>&nbsp;&nbsp;&nbsp;정보수정완료&nbsp;&nbsp;&nbsp;</strong></h6></button>  
       <button type= "button" class = "btn btn-default" id=""><h6><strong>&nbsp;&nbsp;&nbsp;정보수정취소&nbsp;&nbsp;&nbsp;</strong></h6></button>
       </label>
     </div >
  </form >
</div>
  </div > 
</div>  
<!--   <script>
$(function() {
	$("#joinBtn").click(function() {
		if($("#userid").val() == "") {
			alert("아이디를 입력하세요.");
			$("#userid").focus();
			return false;
		}
		if($("#password").val() == "") {
			alert("비밀번호를 입력하세요.");
			$("#password").focus();
			return false;
		}
		
		if($("#pwdCofirm").val() == "") {
			alert("비밀번호를 재입력하세요.");
			$("#pwdCofirm").focus();
			return false;
		}
		if($("#name").val() == "") {
			alert("이름을 입력하세요.");
			$("name").focus();
			return false;
		}
		if($("#birth").val() == "") {
			alert("생년월일을 입력하세요.");
			$("birth").focus();
			return false;
		}
		if($("#email").val() == "") {
			alert("이메일을 입력하세요.");
			$("email").focus();
			return false;
		}
		if($("#phone").val() == "") {
			alert("전화번호를 입력하세요.");
			$("phone").focus();
			return false;
		}
		if($("#addr").val() == "") {
			alert("주소를 입력하세요.");
			$("addr").focus();
			return false;
		}	
		
		$.ajax({
			type:"post",
			data:$("#joinForm").serialize(),
			dataType:"json",
			url:"${context}/member/Member.do?page=mypage_act",
			success: function(data) {
				if(data.result == "success") { 
					alert("회원정보가 수정되었습니다.");
					location.reload();
				} else { 
					alert("회원정보 수정중 오류가 발생했습니다.");
					return false;
				}
			},
			error: function(e) {
				//alert(e);
			}
		});
		
	});	 -->
