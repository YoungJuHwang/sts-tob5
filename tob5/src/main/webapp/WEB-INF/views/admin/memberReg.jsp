<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="${css}/admin.css" />

<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">회원등록</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">관리자 등록</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="http://phpoll.com/login/process" method="post" role="form" style="display: block;">
								
									<div class="form-group">
										<input type="text" name="userid" id="userid" tabindex="1" class="form-control" placeholder="사용자ID" value="">
									</div>
									
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="비밀번호">
									</div>
									
									<div class="form-group">
										<input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="비밀번호 확인">
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
										<input type="text" name="phone" id="phone" tabindex="1" class="form-control" placeholder="핸드폰" value="">
									</div>
									
									<div class="form-group">
										<input type="text" name="addr" id="addr" tabindex="1" class="form-control" placeholder="주소" value="">
									</div>
										
			
									<div class="form-group" style="margin-top: 0px;">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Register Now">
											</div>
										</div>
									</div>
									
								</form>
								
								<form id="register-form" action="http://phpoll.com/register/process" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="id" id="id" tabindex="1" class="form-control" placeholder="관리자ID" value="">
									</div>
									
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="비밀번호">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="비밀번호 확인">
									</div>
									
<div class="row">
	<div class="col-xs-4 col-sm-3 col-md-3">
		<span class="button-checkbox">
			<button type="button" class="btn" data-color="info" tabindex="7">I Agree</button>
                     <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
		</span>
	</div>
	<div class="col-xs-8 col-sm-9 col-md-9">
		 <strong class="label label-primary">관리자 등록</strong> 을 하기전에 <a href="#" data-toggle="modal" data-target="#t_and_c_m">규정사항</a> 을 확인하십시오
	</div>
</div>
			
									<div class="form-group" style="margin-top: 10px;">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
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
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->




<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>

$(function() {
	/* ============ 회원 & 관리자 화면 전환 ============ */
	/* AdminMember.reg(context+'/admin/member_reg2'); */

	$('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
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
	


/*  var AdminMember = {
	reg : function(url) {
		$.getJSON(url,
		function(data) {
	var table =''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	+''
	
	$('.mainView').html(table);
	AdminMember.style();
			}
		)}
};  */
	
    


</script>



