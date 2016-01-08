<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- <div class="마이페이지">
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
						<input type="text" class="form-control" id="email" value="">
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
						<input type="text" class="form-control" id="email" value="">
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
</div> -->
<script type="text/javascript">
$(function() {
	LoginMember.detail(context+'/member/detail/${userid}');
	});
		var LoginMember = {
			detail : function(url) {
			$.getJSON(url,function(data){
			var table = '<table id="tab_detail"><tr><td rowspan="7" id="td_profile"></td>'
						+'<th id="item">항목</th><th>빈 칸</th></tr><tr><td>아이디</td><td>'+data.userid+'</td></tr><tr><td>비밀번호</td><td>'+data.password
						+'</td></tr><tr><td>이름</td><td>'+data.name+'</td></tr><tr><td>생년월일</td><td>'+data.birth+'</td></tr><tr>'
						+'<td>주소</td><td>'+data.addr+'</td></tr><tr><td>이메일</td><td>'+data.email+'</td>'
						+'</tr><tr><td>전화번호</td><td>'+data.phone+'</td></tr><tr>'
						+'<td colspan="2"><button id="changeInfo" style="margin-right : 100px">정보수정</button><button id="remove">회원탈퇴</button></td></tr></table>'
						$('.mainView').empty();
						$('.mainView').html(table);
						LoginMember.style();
							$('#changeInfo').click(function() {
										LoginMember.updateForm();
							});
									$('#remove').click(function() {
										LoginMember.remove('${member.id}');
									});


							});
						},
								updateForm : function() {
										$.getJSON(context+'/member/detail/${userid}',
											function(data){
											$('<form action="${context}/member/update" id="frm" method="post" enctype="multipart/form-data">')
											.appendTo($('.mainView').empty());
											var table = '<table id="tab_detail"><tr><td rowspan="7" id="td_profile"></td>'
														+'<th id="item">항 목</th><th>내 용</th></tr><tr><td>아이디</td><td><input type="text" id="id" name="id" value="'+data.userid+'"></td></tr><tr>'
														+'<td>비밀번호</td><td><input type="password" id="password" name="password" value="'+data.password+'">'
														+'</td></tr><tr><td>이름</td><td>'+data.name+'</td></tr><tr><td>생년월일</td><td>'+data.birth+'</td></tr><tr>'
														+'<td>주소</td><td><input type="text" id="addr" name="addr" value="'+data.addr+'"></td></tr>'
														+'<tr><td>이메일</td><td><input type="text" id="email" name="email" value="'+data.email+'"></td></tr>'
														+'<tr><td>전화번호</td><td><input type="text" id="phone" name="phone" value="'+data.phone+'"></td>'
														+'<td colspan="2"><button id="confirm" style="width:100px">확인</button></td></tr></table>';
														$('#frm').html(table);
														LoginMember.style();
														$('#confirm').click(function() {
														$('#frm').submit(function(e) {
														e.preventDefault(); /* 기본 폼태그의 서브밋을 막아라. 자스의 서브밋을 실행해라 */
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
															var table = '<table id="tab_detail"><tr><td rowspan="7" id="td_profile"></td>'
															+'<th id="item">항목</th><th>빈 칸</th></tr><tr><td>아이디</td><td>'+data.userid+'</td></tr><tr><td>비밀번호</td><td>'+data.password
															+'</td></tr><tr><td>이름</td><td>'+data.name+'</td></tr><tr><td>생일</td><td>'+data.birth+'</td></tr><tr>'
															+'<td>주소</td><td>'+data.addr+'</td></tr><tr><td>이메일</td><td>'+data.email+'</td>'
															+'<td colspan="2"><button id="changeInfo" style="margin-right : 100px">정보수정</button><button id="remove">회원탈퇴</button></td></tr></table>'
															$('.mainView').empty();
															$('.mainView').html(table);
															LoginMember.style();
															$('#changeInfo').click(function() {
															LoginMember.updateForm();
															});
															$('#remove').click(function() {
															LoginMember.remove('${member.userid}');
															});
															},
															error : function(xhr, status, msg) {
															alert('에러발생상태 : '+status +', 내용 :'+msg);
								// error 는 파라미터 갯수와 위치로 그 역할을 결정하기 때문에
								// xhr 은 자리를 지키고 있어야, status 와 msg 가 작동한다.
								}
								});
								});
								});
								
								
								});
								},
								update : function() {
								$.ajax('',{
								data : {},
								dataType : 'json',
								success : function(data) {
								
								
								},
								error : function(e) {
								
								
								}
								});
								},
								style : function(){
								$('#tab_detail').css('width','80%').css('height','400px').css('margin','auto').css('border','1px solid white');
								$('td').add('th').css('text-align','center').css('border','1px solid white').css('background-color','black');
								$('tr').add('th').add('td').css('float','center').css('color','white').css('border','1px solid white');
								$('#box').css('clear','both').css('margin','20px');
								$('#item').css('width','400px');
								$('#profile').css('width','300px');
								$('#td_profile').css('width','400px');
								$('#changeImg').add('#changeInfo').add('#remove').add('#confirm').css('color','black');
								},
								remove : function(userid) {
								$.ajax('${context}/member.do',{
								data : {
								userid : userid,
								page : 'remove'
								},
								dataType : 'json',
								success : function(data) {
								alert('회원탈퇴 되었습니다.');
								location.href = "${context}/member.do?page=logout";
								},
								error : function(xhr, status, msg) {
								alert('에러발생상태 : '+status +', 내용 :'+msg);
								}
								});
								}
								};
</script>
