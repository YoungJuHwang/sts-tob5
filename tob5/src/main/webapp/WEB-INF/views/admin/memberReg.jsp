<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="${css}/admin.css" />

 <div class="container" >
    	<div class="row" >
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">관리자등록</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">회원 등록</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="http://phpoll.com/login/process" method="post" role="form" style="display: block;">
								
								<div class="form-group">
								<label></label>
                        		<input type="text" class="form-control" placeholder="ID" id="admin_id">
									</div>
									
									<div class="form-group">
										<label></label>
                        			<input type="password" class="form-control" placeholder="password" id="admin_password">
									</div>
									<div class="form-group">
										<label></label>
                        				<input type="email" class="form-control" placeholder="Email" id="admin_email">
									</div>
									
				<!-- ========================= 인증 부분 ======================== -->
				
					<div class="form-group" style="width: 300px; float: left;">
						<label></label>
						<input type="text" name="form-control" id="confirm_num" tabindex="2" class="form-control" placeholder="인증번호">
					</div>
									
					 <button type="button" id="btn_confirm"
                    style="margin-top:6px; font-size: 12px; width: 100px; border-radius: 10px; float: left;" 
                    class="btn btn-primary btn-block">인증번호 발송</button>
                    
                    
              <!--  ========================= 약관 ======================== -->
                    
 <div class="row" style="float: left; margin-top: 20px;">
	<div class="col-xs-4 col-sm-3 col-md-3">
		<span class="button-checkbox">
			<button type="button" class="btn" data-color="info" tabindex="7">I Agree</button>
                     <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
		</span>
	</div>
	<div class="col-xs-8 col-sm-9 col-md-9" style="font-size: 14px; margin-top: 5px;">
		 <strong class="label label-primary">관리자 등록</strong> 을 하기전에 <a href="#" data-toggle="modal" data-target="#t_and_c_m">규정사항</a> 을 확인하십시오
	</div>
</div>
			
									<div class="form-group" style="margin-top: 10px;">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3" style="margin-top: 20px;">
												<input type="submit" name="register-submit" id="admin_join" tabindex="4" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
									
								</form>
								
								
			<!--  ========================= 회원등록 화면 전환 ======================== -->
								
								<form id="register-form" action="http://phpoll.com/register/process" 
								method="post" role="form" style="display: none; ">
								
								<div class="form-group">
										<input type="text" name="userid" id="userid" tabindex="1" class="form-control" placeholder="사용자ID" value="">
									</div>
									
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="비밀번호">
									</div>
									
									
									<div class="form-group">
										<input type="text" name="name" id="name" tabindex="1" class="form-control" placeholder="이름" value="">
									</div>
									
									<div class="form-group">
										<input type="text" name="birth" id="birth" tabindex="1" class="form-control" placeholder="생일" value="">
									</div>
									
									<div class="form-group">
										<input type="text" name="gender" id="gender" tabindex="1" class="form-control" placeholder="성별" value="">
									</div>
									
									<div class="form-group">
										<input type="text" name="email" id="email" tabindex="1" class="form-control" placeholder="이메일" value="">
									</div>
									
									<div class="form-group">
										<input type="text" name="phone" id="phone" tabindex="1" class="form-control" placeholder="Phone(  -없이 입력해주세요)" value="">
									</div>
									
									<div class="form-group">
										<input type="text" name="addr" id="addr" tabindex="1" class="form-control" placeholder="주소" value="">
									</div>
										
			
									<div class="form-group" style="margin-top: 0px;">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="member_join" tabindex="4" class="form-control btn btn-login" value="Register Now">
											</div>
										</div>
									</div>
									
									
			
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel">사내 규정사항</h4>
			</div>
			<div class="modal-body">
				<p>사내 규정사항</p>		
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">I Agree</button>
			</div>
		</div>
	</div>
</div> 



<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>

$(function() {
	AdminMemberReg.init(context+'/admin/member_reg');

});

/* =====================================  */
 
 var AdminMemberReg = {
			init : function(url) {
				$.getJSON(url, function(data) {
					var reg = '<div class="container"><div class="row"><div class="col-md-6 col-md-offset-3"><div class="panel panel-login"><div class="panel-heading"><div class="row"><div class="col-xs-6"><a href="#"class="active"id="login-form-link">관리자등록</a></div><div class="col-xs-6"><a href="#"id="register-form-link">회원 등록</a></div></div><hr></div><div class="panel-body"><div class="row"><div class="col-lg-12"><form id="login-form"action="http://phpoll.com/login/process"method="post"role="form"style="display: block;"><div class="form-group"><label></label><input type="text"class="form-control"placeholder="ID"id="admin_id"></div><div class="form-group"><label></label><input type="password"class="form-control"placeholder="password"id="admin_password"></div><div class="form-group"><label></label><input type="email"class="form-control"placeholder="Email"id="admin_email"></div><div class="form-group"style="width: 300px; float: left;"><label></label><input type="text"name="form-control"id="confirm_num"tabindex="2"class="form-control"placeholder="인증번호"></div><button type="button"id="btn_confirm"'
						+'style="margin-top:6px; font-size: 12px; width: 100px; border-radius: 10px; float: left;"class="btn btn-primary btn-block">인증번호 발송</button><div class="row"style="float: left; margin-top: 20px;"><div class="col-xs-4 col-sm-3 col-md-3"><span class="button-checkbox"><button type="button"class="btn"data-color="info"tabindex="7">I Agree</button><input type="checkbox"name="t_and_c"id="t_and_c"class="hidden"value="1"></span></div><div class="col-xs-8 col-sm-9 col-md-9"style="font-size: 14px; margin-top: 5px;"><strong class="label label-primary">관리자 등록</strong>을 하기전에<a href="#"data-toggle="modal"data-target="#t_and_c_m">규정사항</a>을 확인하십시오</div></div><div class="form-group"style="margin-top: 10px;"><div class="row"><div class="col-sm-6 col-sm-offset-3"style="margin-top: 20px;"><input type="submit"name="register-submit"id="admin_join"tabindex="4"class="form-control btn btn-register"value="Register Now"></div></div></div></form><form id="register-form"action="http://phpoll.com/register/process"'
						+'method="post"role="form"style="display: none; "><div class="form-group"><input type="text"name="userid"id="userid"tabindex="1"class="form-control"placeholder="사용자ID"value=""></div><div class="form-group"><input type="password"name="password"id="password"tabindex="2"class="form-control"placeholder="비밀번호"></div><div class="form-group"><input type="text"name="name"id="name"tabindex="1"class="form-control"placeholder="이름"value=""></div><div class="form-group"><input type="text"name="birth"id="birth"tabindex="1"class="form-control"placeholder="생일"value=""></div><div class="form-group"><input type="text"name="gender"id="gender"tabindex="1"class="form-control"placeholder="성별"value=""></div><div class="form-group"><input type="text"name="email"id="email"tabindex="1"class="form-control"placeholder="이메일"value=""></div><div class="form-group"><input type="text"name="phone"id="phone"tabindex="1"class="form-control"placeholder="Phone(  -없이 입력해주세요)"value=""></div><div class="form-group"><input type="text"name="addr"id="addr"tabindex="1"class="form-control"placeholder="주소"value=""></div><div class="form-group"style="margin-top: 0px;"><div class="row"><div class="col-sm-6 col-sm-offset-3"><input type="submit"name="login-submit"id="member_join"tabindex="4"class="form-control btn btn-login"value="Register Now"></div></div></div></form></div></div></div></div></div></div></div><div class="modal fade"id="t_and_c_m"tabindex="-1"role="dialog"aria-labelledby="myModalLabel"aria-hidden="true"><div class="modal-dialog modal-lg"><div class="modal-content"><div class="modal-header"><button type="button"class="close"data-dismiss="modal"aria-hidden="true">×</button><h4 class="modal-title"id="myModalLabel">사내 규정사항</h4></div><div class="modal-body"><p>사내 규정사항</p></div><div class="modal-footer"><button type="button"class="btn btn-primary"data-dismiss="modal">I Agree</button></div></div></div></div>';
				
					$('.mainView').html(reg);
					AdminMemberReg.style();
					
					
					/* ============ 회원 & 관리자 화면 전환 ============ */
					$('#register-form-link').click(function(e) {
						alert('회원');
						$("#register-form").delay(100).fadeIn(100);
				 		$("#login-form").fadeOut(100);
						$('#login-form-link').removeClass('active');
						$(this).addClass('active');
						e.preventDefault();
					});
					$('#login-form-link').click(function(e) {
						alert('관리자');
						$("#login-form").delay(100).fadeIn(100);
				 		$("#register-form").fadeOut(100);
						$('#register-form-link').removeClass('active');
						$(this).addClass('active');
						e.preventDefault();
					});
					
					
					
					
					/* =============== 이용약관 부분 ================= */
					
					$('.button-checkbox').each(function () {

				        // Settings
				        var $widget = $(this),
				            $button = $widget.find('button'),
				            $checkbox = $widget.find('input:checkbox'),
				            color = $button.data('color'),
				            settings = {
				                on: {
				                    icon: 'glyphicon glyphicon-check'
				                },
				                off: {
				                    icon: 'glyphicon glyphicon-unchecked'
				                }
				            };

				        // Event Handlers
				        $button.on('click', function () {
				            $checkbox.prop('checked', !$checkbox.is(':checked'));
				            $checkbox.triggerHandler('change');
				            updateDisplay();
				        });
				        
				        $checkbox.on('change', function () {
				            updateDisplay();
				        });

				        // Actions
				        function updateDisplay() {
				            var isChecked = $checkbox.is(':checked');

				            // Set the button's state
				            $button.data('state', (isChecked) ? "on" : "off");

				            // Set the button's icon
				            $button.find('.state-icon')
				                .removeClass()
				                .addClass('state-icon ' + settings[$button.data('state')].icon);

				            // Update the button's color
				            if (isChecked) {
				                $button
				                    .removeClass('btn-default')
				                    .addClass('btn-' + color + ' active');
				            }
				            else {
				                $button
				                    .removeClass('btn-' + color + ' active')
				                    .addClass('btn-default');
				            }
				        }

				        // Initialization
				        function init() {

				            updateDisplay();

				            // Inject the icon if applicable
				            if ($button.find('.state-icon').length == 0) {
				                $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i>');
				            }
				        }
				        init();
				    });
	
				});
			},
			style : function() {
				$('.panel-login').css('border-color','#ccc').css('-webkit-box-shadow','0px 2px 3px 0px rgba(0,0,0,0.2)')
				.css('-moz-box-shadow','0px 2px 3px 0px rgba(0,0,0,0.2)').css('box-shadow','0px 2px 3px 0px rgba(0,0,0,0.2)');
				$('.panel-login>.panel-heading').css('color','#00415d').css('background-color','#fff')
				.css('border-color','#fff').css('text-align','center');
			    $('.panel-login>.panel-heading a').css('text-decoration','none').css('color','#666')
				.css('font-weight','bold').css('font-size','15px').css('-webkit-transition','all 0.1s linear')
				.css('-moz-transition','all 0.1s linear').css('transition','all 0.1s linear');
				$('.panel-login>.panel-heading a.active').css('color','#029f5b').css('font-size','18px');
				$('.panel-login>.panel-heading hr').css('margin-top','10px').css('margin-bottom','0px')
				.css('clear','both').css('border','0').css('height','1px').css('background-image','-webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0))')
				.css('background-image','-moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0))')
				.css('background-image','-ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0))')
				.css('background-image','-o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));');
				$('.panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] ')
				.css('height','45px').css('border','1px solid #ddd').css('font-size','16px')
				.css('-webkit-transition','all 0.1s linear').css('-moz-transition','all 0.1s linear')
				.css('transition','all 0.1s linear');
				$('.panel-login input:hover').add('.panel-login input:focus').css('outline','none')
				.css('-webkit-box-shadow','none').css('-moz-box-shadow','none').css('box-shadow','none')
				.css('border-color','#ccc');
				$('.btn-login').css('background-color','#59B2E0').css('outline','none')
				.css('color','#fff').css('font-size','14px').css('height','auto').css('font-weight','normal')
				.css('padding','14px 0').css('border-color','#59B2E6');
				$('.btn-login:hover').add('.btn-login:focus').css('color','#fff').css('background-color','#53A3CD')
				.css('border-color','#53A3CD');
				$('.forgot-password').css('text-decoration','underline').css('color','#888');
				$('.forgot-password:hover').add('.forgot-password:focus').css('text-decoration','underline').css('color','#666');
				$('.btn-register').css('background-color','#1CB94E').css('outline','none')
				.css('color','#fff').css('font-size','14px').css('height','auto').css('font-weight','normal')
				.css('padding','14px 0').css('text-transform','uppercase').css('border-color','#1CB94A');
				$('.btn-register:hover').add('.btn-register:focus').css('color','#fff').css('background-color','#1CA347')
				.css('border-color','#1CA347'); 
				
		}	
		};
 
	
	/* ============== 이메일 인증 =======================  */
	
	$("#btn_confirm").click(function(){
		AdminReg.join_Auth();
		$("#btn_confirm").remove();
	});

	
	$("#admin_join").click(function(){
		var admin_id = $("#admin_id").val();
		var admin_password = $("#admin_password").val();
		var admin_email = $("#admin_email").val();
		
		if (admin_id === "") {
			alert('공란을 채워주세요.');
		} 
		else if(admin_password === "") {
			alert('공란을 채워주세요.');
		} 
		else if(admin_email === "") {
			alert('공란을 채워주세요.');
		}else {
			AdminReg.join();	
		}
		
	});
	
	$("#member_join").click(function(){
		var userid = $("#userid").val();
		var password = $("#password").val();
		var name = $("#name").val();
		var birth = $("#birth").val();
		var gender = $("#gender").val();
		var email = $("#email").val();
		var phone = $("#phone").val();
		var addr = $("#addr").val();

		if (userid === "") {
			alert('공란을 채워주세요.');
		} 
		else if(password === "") {
			alert('공란을 채워주세요.');
		} 
		else if(name === "") {
			alert('공란을 채워주세요.');
		} 
		else if(birth === "") {
			alert('공란을 채워주세요.');
		} 
		else if(gender === "") {
			alert('공란을 채워주세요.');
		} 
		else if(email === "") {
			alert('공란을 채워주세요.');
		}
		else if(phone === "") {
			alert('공란을 채워주세요.');
		} 
		else if(addr === "") {
			alert('공란을 채워주세요.');
		} else {
			AdminMember.join();	
		}
		
	});
	
	
	
	
	var AdminReg = {
			join_Auth : function() {
				$.ajax(context + "/admin/join_auth",{	
					data : {"id" : $("#admin_id").val(),
							"adminEmail" :$("#admin_email").val()
					},
					type : "post",
					success : function(data) {
						//이메일이 발송.
						if(data.success == "success"){
							alert("인증번호가 이메일로 발송되었습니다.");
						} else{
						//이미 가입되어 있는 아이디일 경우(컨트롤러에서 체크)
							alert("이미 가입되어 있는 아이디 입니다.");
						}
					},
					error : function() {
					}
				});
			},
			
			join : function() {
				alert('join ajax');
				var join_Admin = {
					"id" :$("#admin_id").val(),
					"adminEmail" :$("#admin_email").val(),
					"password" :$("#admin_password").val(),
					"confirm_num" :$("#confirm_num").val()

				};
				$.ajax(context + "/admin/admin_join",{
					
					data : JSON.stringify(join_Admin),
					dataType : "json",
					type : 'post',
					contentType : "application/json;",
					mimeType: "application/json;",
					async : false,
					success : function(data) {
						if(data.result == "success"){
							alert(data.id+"님 관리자로 등록되었습니다.");
							location.href(context+'/admin/main');
							
						}
						if(data.result == "fail"){
							alert("관리자 등록을 실패하였습니다. 다시 시도해주세요.");
						}
						if(data.result == "not_Agreement"){
							alert("인증번호가 일치하지 않습니다. 인증을 다시 해주세요.");
						}
					},
					
					error : function(xhr, status, msg) {
						alert('에러발생상태 : '+status +', 내용 :'+msg);
					}
					
					
				});

			}
			
			
	};
	
var AdminMember = {
		join : function() {
			alert('join ajax');
			var join_member = {
				"userid" :$("#userid").val(),
				"password" :$("#password").val(),
				"name" :$("#name").val(),
				"birth" :$("#birth").val(),
				"gender" :$("#gender").val(),
				"email" :$("#email").val(),
				"phone" :$("#phone").val(),
				"addr" :$("#addr").val()

			};
			$.ajax(context + "/admin/join_member",{
				
				data : JSON.stringify(join_member),
				dataType : "json",
				type : 'post',
				contentType : "application/json;",
				mimeType: "application/json;",
				async : false,
				success : function(data) {
					
					if(data.result == "success"){
						alert(data.name+" 님 회원가입 성공");
						AdminMemberList.list('1');
						
					}
					if(data.result == "fail"){
						alert("실패");
					}
				},
				
				error : function(xhr, status, msg) {
					alert('에러발생상태 : '+status +', 내용 :'+msg);
				}
				
				
			});

		}
	}; 
	


	
/* ============================================================ */
 
 
	$("#reg_member_btn").click(function() {
		if($("#userid").val() == "") {
			alert("사용자 아이디를 입력하세요s.");
			$("#userid").focus();
			return false;
		}
		if($("#password").val() == "") {
			alert("비밀번호를 입력하세요.");
			$("#password").focus();
			return false;
		}
		if($("#name").val() == "") {
			alert("사용자 이름을 입력하세요.");
			$("#name").focus();
			return false;
		}
		if($("#gender").val() == "") {
			alert("성별을 입력하세요.");
			$("gender").focus();
			return false;
		}
		if($("#email").val() == "") {
			alert("이메일을 입력하세요.");
			$("email").focus();
			return false;
		}
		if($("#phone").val() == "") {
			alert("핸드폰 번호를 입력하세요.");
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
			data:$("#regMemberForm").serialize(),
			dataType:"json",
			url:"${context}/admin/member_reg",
			success: function(data) {
				if(data.result == "success") { 
					alert(data.name+"님 회원가입이 완료 되었습니다.");
					
				} else if(data.result == "chk") { 
					alert("이미 가입된 ID 입니다.");
					return false;
				} else { 
					alert("회원가입 중 오류가 발생했습니다.");
					return false;
				}
			},
			error: function(e) {
				alert(e);
			}
		});
		
	});	
	
	
	$("#dup_member_btn").click(function() {
		if($("#userid").val() == "") {
			alert("아이디를 입력하세요.");
			$("#userid").focus();
			return false;
		}	
		
		$.ajax({
			type:"post",
			data:{userid:$("#userid").val()},
			dataType:"json",
			url:"${context}/admin/member_reg_chk",
			success: function(data) {
				if(data.result == "fail") { 
					alert("이미 가입된 아이디입니다.");
					return false;
				} else {
					alert("회원가입 가능한 ID입니다.");
					$("#name").focus();
				}
			},
			error: function(e) {
				alert(e);
			}
		});
		
		
	});
	

</script>



