<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<div class="마이페이지">
	<div class="container"
		style="width: 30%; background-color: zoom: 500; filter: alpha(opacity = 1000); opacity: 0.6;">
		<div class="jumbotron">
			<h1>
				<span class="label label-default" style="background-color: black;">&nbsp;마이페이지&nbsp;</span>
			</h1>
			<br />
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label class="control-label col-sm-3" for="email">아이디</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="id" placeholder="아이디를 입력해주세요">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="pwd">비밀먼호</label>
					<div class="col-sm-8">
						<input type="password" class="form-control" id="password" placeholder="비밀번호를 입력해주세요">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="pwd"> 재확인</label>
					<div class="col-sm-8">
						<input type="password" class="form-control" id="passwordCofirm" placeholder="비밀번호를 재입력해주세요">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="text">이름</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="name" placeholder="이름을 입력해주세요">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="text">생년월일</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="birth" placeholder="생년월일을 입력해주세요">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="text">성별</label>
					<div class="col-sm-8">
						<label class="radio-inline"> <input type="radio" name="optradio">남 </label> 
						<label class="radio-inline"> <input type="radio" name="optradio">여 </label>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="text">이메일</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="email" placeholder="이메일을 입력해주세요">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="text">전화번호</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="phone" placeholder="전화번호를 입력해주세요">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="text">주소</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="addr" placeholder="주소를 입력해주세요">
					</div>
				</div>
				<div class="container">
					<div class="col-sm-offset-3 col-sm-10">
						<div class="checkbox">
							<label><input type="checkbox">정보수정에 동의합니다.</label>
						</div>
					</div>
					<label class="control-label col-sm-offset-2 col-sm-9" for="text" style="white-space: nowrap;">
						
						<button type="button" class="btn btn-default" id="mypageBtn">
							<h6><strong>&nbsp;&nbsp;&nbsp;정보수정완료&nbsp;&nbsp;&nbsp;</strong></h6>
						</button>
						
						<button type="button" class="btn btn-default" id="">
							<h6><strong>&nbsp;&nbsp;&nbsp;정보수정취소&nbsp;&nbsp;&nbsp;</strong></h6>
						</button>
					</label>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
	$(function() {
		$('mypageBtn').click(function() {
			alert('mypage진입');
		});
		LoginMember.detail(context + '/member/detail/${user.id}');
	});
	var LoginMember = {
		 detail : function() {
			 		alert('mypage ajax 진입');
			 		$.getJSON(
							url,
							function(data) {
								$('#changeInfo').click(function() {
									LoginMember.updateForm();
								});
								$('#remove').click(function() {
									LoginMember.remove('${member.id}');
								});
							});
		},
		updateForm : function() {
			$.getJSON(
							context + '/member/detail/${user.id}',
							function(data) {
								$('<form action="${context}/member/update" id="frm" method="post" enctype="multipart/form-data">')
								.appendTo($('.mainView').empty());
								$('#frm').html(table);
								LoginMember.style();
								$('#confirm').click(function() {
										var postData = new FormData($('#frm')[0]);
											$.ajax('${context}/member/update',{
													type : 'post',
													data : postData,
													async : true, // 비동기로 할 지 여부, 기본값 true, 생략가능
													dataType : 'json',
													mimeType : 'multipart/form-data',
													contentType : false,
													processData : false,
													success : function(data) {
															alert('수정성공');
															},
															error : function() {
																			
																			
																		}
																	});
												});
							});
		},
		update : function() {
						$.ajax('',{
																																		data : {},
								dataType : 'json',
								success : function(data) {
									$('.mainView').empty();
									$('.mainView').html(table);
									LoginMember.style();
									$('#changeInfo').click(function() {
										LoginMember.updateForm();
									});
									$('#remove').click(function() {
										LoginMember.remove('${member.id}');
									});
								},
								error : function(e) {

								}
							});
		},
		
		
	};
</script>
