<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div style="color: red;"></div>
	
<script type="text/javascript">
$(function() {
	 AdminMemberList.list('1'); 
});

var AdminMemberList = {
		 list : function(pageNo) {
			 
				$.getJSON(context+'/admin/member_list/'+pageNo ,function(data) {
					var count = data.count;
					var pageNo = data.pageNo; 
					var startPage = data.startPage;
					var groupSize = data.groupSize;
					var lastPage = data.lastPage;
					var totalPage = data.totalPage;
					
					var table = "<div class='panel panel-default' style='width: 80%; margin: auto;'>"
					+"<div class='panel-heading'>"
					+"<div style='color: #7fb3b3; font-size: 30px; font-family: 굴림; margin-left: 500px; font-weight:bold' >"
					+"전체 회원 목록</div></div>"
					+"<table class='table'>"
					+"<TR ALIGN=CENTER><TD WIDTH=7%><B>번호</B></TD>"
					+"<TD WIDTH=15%><B>아이디</B></TD>"
					+"<TD WIDTH=15%><B>회원명</B></TD>"
					+"<TD WIDTH=20%><B>전화번호</B></TD>"
					+"<TD WIDTH=20%><B>주소</B></TD>"
					+"<TD WIDTH=20%><B>비고</B></TD></TR>";
					
					$.each(data.list, function(index, value) {
				 table +='<TR><TD WIDTH=7% ALIGN=CENTER>'+(index+1)+'</TD>'
						+'<TD WIDTH=15% ALIGN=CENTER>'+this.userid+'</a></TD>'
						+'<TD WIDTH=15% ALIGN=CENTER>'+this.name+'</A></TD>'
						+'<TD WIDTH=20% ALIGN=CENTER>'+this.phone+'</TD>'
						+'<TD WIDTH=20% ALIGN=CENTER>'+this.addr+'</TD>'
						+'<TD WIDTH=20% ALIGN=CENTER>'
						+'<A style="margin-right: 5px" id="'+this.userid+'" onclick="AdminMember.detail('+'\''+this.userid+'\''+')">수정</A>'
						+'<A style="margin-left: 5px" onclick="AdminMember.remove('+'\''+this.userid+'\''+')">삭제</A></TD></TR>';
						
						
					});
					
					table += '</TABLE></div>';
					
					 $('.mainView').html(table);
					
					var pagination ='<TABLE id="pagination">'
					+'<TR>'
					+'</TD>'
					+'<TD WIDTH=320 ALIGN=CENTER>';

					if (startPage != 1) {
						pagination += 
						'<a href="#" onclick="AdminMemberList.list(1)">'
						+'<IMG SRC="${img}/admin/btn_bf_block.gif">&nbsp;'
						+'</a>'
						+'<a href="#" onclick="AdminMemberList.list('+(startPage-groupSize)+')">'
						+'<IMG SRC="${img}/admin/btn_bf_page.gif">&nbsp;'
						+'</a>'
					}
					
					for (var i = startPage; i <= lastPage; i++) {
						if (i == pageNo ) {
							pagination +=
								'<font style="color:red;font-size: 20px">'+i+'</font>';
						} else {
							pagination +=
								'<a href="#" onclick="AdminMemberList.list('+i+')">'
								+'<font>'+i+'</font>'
								+'</a>';
						}
					}
					
					if (lastPage != totalPage) {
						pagination +=
						    '<a href="#" onclick="AdminMemberList.list('+(startPage + groupSize)+')">'
		    	            +'<IMG SRC=" ${img}/admin/btn_nxt_page.gif"> &nbsp;'
		           			+'</a>'
		           			+'<a href="#" onclick="AdminMemberList.list('+(totalPage - ((totalPage-1) % groupSize))+')">'
		                	+'<IMG SRC=" ${img}/admin/btn_nxt_block.gif"> &nbsp;'
		           			+'</a>';
					}
					pagination +='</TD>';
					
					
					pagination += '<TD WIDTH=200 ALIGN=RIGHT>'
					+'<FORM NAME="memberSearch" action="'+context+'/admin/memberSearch/1" style="color: black">'
					+'<SELECT NAME="column" SIZE=1>'
					+'<OPTION VALUE="" SELECTED>선택'
					+'</OPTION>'
					+'<OPTION VALUE="id">ID'
					+'</OPTION>'
					+'<OPTION VALUE="name">이름'
					+'</OPTION>'
					+'<OPTION VALUE="gender">성별'
					+'</OPTION>'
					+'</SELECT>'
					+'<INPUT TYPE=TEXT NAME="keyword" SIZE=10 MAXLENGTH=20>'
					+'<INPUT TYPE=submit value="검색">'
					+'</FORM>'
					+'</TD>'
					+'</TR>'
					+'</TABLE>';
					
					table += pagination;
					$('.mainView').html(table);
					
					
					
					AdminMemberList.style();
					
				});

		},
		
		style : function(){

			$('#pagination').css('width','70%').css('height','50px')
			.css('margin','auto')
			.css('CELLSPACING','0').css('CELLPADDING','1px').css('ALIGN','CENTER');

		}, 
	
		 
	memberNotExist : function() {
		var table ='<h1>회원목록</h1><table id="tab_member"><tr><th>아이디</th>';
			table += '<th>이름</th><th>성별</th><th>생년원일</th><th>전화번호</th><th>이메일</th></tr>';
			table += '<tr><td colspan="6"><h2>회원목록이 없습니다.</h2></td></tr></table>';
			$('.mainView').html(table);
	}
 };
 
var AdminMember = {
		detail : function(userid) {

			$.getJSON(context+'/admin/member_profile/'+userid ,
					function(data) {
				$('<form action="${context}/admin/member_update" id="memberFrm" method="post" >')
				.appendTo($('.mainView').empty());
			var table = '<div class="panel panel-default" style="width: 25%; margin: auto;">'
				+'<div class="panel-heading" style="width: 100%;">'
				+'<div style="color: #7fb3b3; font-size: 20px; font-family: 굴림; font-weight:bold; margin-left: 120px;" >'
				+'개인 정보 수정</div></div>'
				+'<table class="table" style="width: 100%;">'
				+'<tr><th>아이디</th><td id="data_id">'+data.userid+'</td></tr>'
				+'<tr><th>비밀번호</th><td id="data_password">'+data.password+'</td></tr>'
				+'<tr><th>이름</th><td id="data_name">'+data.name+'</td></tr>'
				+'<tr><th>생년</th><td id="data_birth">'+data.birth+'</td></tr>'
				+'<tr><th>전화번호</th><td id="data_phone">'+data.phone+'</td></tr>'
				+'<tr><th>이메일</th><td><input type="text" id="email" name="email" value="'+data.email+'"></td></tr>'
				+'<tr><th>성별</th><td id="data_gender">'+data.gender+'</td></tr>'
				+'<tr><th>주소</th><td id="data_addr">'+data.addr+'</td></tr>'
				+'<td colspan="2"><button id="confirm" style="width:100px; margin-left: 150px;">정보수정</button></td></tr>'
				+'</table>';
				
			$('#memberFrm').html(table);
			
			$('#confirm').click(function() {
				alert("확인클릭?");
				
				$('#memberFrm').submit(function(e) {
					e.preventDefault(); 
					/* 기본 폼태그의 서브밋을 막아라. 자스의 서브밋을 실행해라 */
					var postData = new FormData($('#memberFrm')[0]);
					$.ajax('${context}/admin/member_update',{
						type : 'post',
						data : postData,
						async : true, // 비동기로 할 지 여부, 기본값  true, 생략가능
						dataType : 'json',
						mimeType : 'multipart/form-data',
						contentType : false,
						processData : false,
						success : function(data) {
							
							var table = '<div class="panel panel-default" style="width: 25%; margin: auto;">'
								+'<div class="panel-heading" style="width: 100%;">'
								+'<div style="color: #7fb3b3; font-size: 20px; font-family: 굴림; font-weight:bold; margin-left: 120px;" >'
								+'수정 결과</div></div>'
								+'<table class="table" style="width: 100%;">'
								+'<tr><th>아이디</th><td id="data_id">'+data.userid+'</td></tr>'
								+'<tr><th>비밀번호</th><td id="data_password">'+data.password+'</td></tr>'
								+'<tr><th>이름</th><td id="data_name">'+data.name+'</td></tr>'
								+'<tr><th>생년</th><td id="data_birth">'+data.birth+'</td></tr>'
								+'<tr><th>전화번호</th><td id="data_phone">'+data.phone+'</td></tr>'
								+'<tr><th>이메일</th><td id="data_email">'+data.email+'"></td></tr>'
								+'<tr><th>성별</th><td id="data_gender">'+data.gender+'</td></tr>'
								+'<tr><th>주소</th><td id="data_addr">'+data.addr+'</td></tr>'
								+'<td colspan="2"><button id="confrm" style="width:100px; margin-left: 150px;">홈으로</button></td></tr>'
								+'</table>';
								
							
							$('.mainView').html(table);
							$('#confrm').click(function() {
								AdminMemberList.list('1');
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
		
		remove : function(userid) {
			$.ajax('${context}/admin/member_delete/'+userid,{
				data : {
					userid : userid
				},
				dataType : 'json',
				success : function(data) {
					alert('회원을 추방하였습니다.');
					AdminMemberList.list('1');
				},
				error : function(xhr, status, msg) {
					alert('에러발생상태 : '+status +', 내용 :'+msg);
				}
			});
		}
};

 
</script>


