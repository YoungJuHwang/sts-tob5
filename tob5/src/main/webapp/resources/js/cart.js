var Cart = {
		userid : '',
		getUserid : function() {
			return this.userid;
		},
		setUserid : function(userid) {
			this.userid = userid; 
		},
	main : function(link, userid) {
		alert('메인으로 넘어옴');
		$(".mainView").load(link+"/cart/Cart");
		alert('메인으로 넘어온 유저아이디'+userid);
		Cart.setUserid(userid);
		alert('메인으로 넘어온 유저아이디'+Cart.getUserid());
	},
	list : function(context) {
		var arr = [];
		$.getJSON(context+'/cart/list', function(data) {
			alert('카트 list 겟제이슨 진입');
			var table = '<h1> 전체주문 목록</h1>'
				+'<table id="pur_list"><tr><th>카트 주문번호</th><th>책 이름</th>'
				+'<th>주문한 아이디</th><th>가격</th></tr><th>수량</th></tr>';
			$.each(data, function(i, val) {
				table +='<tr><td><a href="#" id="'+this.cartNum+'">'+this.cartNum+'</a></td>'
				+'<td id = "s'+i+'">'+this.bookid+'</td>'
				+'<td id = "p'+i+'">'+this.bookPrice+'</td>'
				+'<td id = "a'+i+'">'+this.userid+'</td>'
				+'<td id = "u'+i+'">'+this.count+'</td>'
				arr.push(this.purNum);
			});
				table += '<button id="order">주문하기</button>';
			$(table).appendTo($('#cart_wrap').empty());
		});
	},
	put : function(bookId) {
		alert('Cart.put()진입 넘겨받은 북아이디 : '+bookId);
		alert('Cart.getuserid() : '+ Cart.getUserid());
		$.ajax(context+'/cart/put/'+bookId,{
			data : {
				bookId : bookId,
			},
			dataType : "json",
			type : 'post',
			contentType : "application/json;",
			mimeType : "application/json;",
			async : false,
			success : function() {
				alert('장바구니에 담겼습니다.');
			},
			error : function() {
				alert('ajax 에러');
			}
		});
		
		
		var bookList= '<div id="bookContents" style="color: black;"><h2>책 목록</h2>';
			$.each(data.list,function(index,value){
				bookList += '<div class="book1">'
				bookList += '<img alt="" src="'+context+'/resources/images/'+this.bookId+'.jpg" width="106px" height="150px" align="left">';//수정필요 사진 경로 및 db 아이디 일치\
				bookList += '<a href="#" id="'+this.bookId+'"><strong>'+this.bookName+'</strong></a>';
				bookList += '<font color="white" ">'+this.optionBook+'</font>'; //수정필요  없애거나 고정값으로 주거나
				bookList += '<font color="white" style="color: green">이벤트</font>';
				bookList += '<font color="white" class="maroon">경품</font>';
				bookList += '<font color="white" style="background-color: purple;">무료배송</font>';
				bookList += '<font color="gray">'+this.writer+'</font><br />';
				bookList += '<font color="red" class="white">'+this.bookPrice+'</font><font>원</font><font  size="2px">[10%할인!]</font>';
				bookList += '<font style="background-color: gray" class="white">회원평점</font><font color="red" >'+this.grade+'</font>';
				bookList += '<br /><br /><br /><br />';
				bookList += '<input type="button"  value="장바구니에 담기" id="c'+index+'">';
				bookList += '<input type="button"  value="바로구매" id="b'+index+'">';
				bookList += '<br /><br /><br /><br />';
				arr.push(this.bookId);
		});
				bookList+='</div>';
				$('.mainView').html(bookList);
	}
};