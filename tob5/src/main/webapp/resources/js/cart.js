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

	put : function(bookId) {
		$.ajax(context+'/cart/put',{
			data : {
				bookId : bookId
			},
			dataType : "json",
			type : 'get',
			contentType : "application/json;",
			mimeType : "application/json;",
			async : false,
			success : function() {
				alert('장바구니에 담겼습니다.');
			},
			error : function() {
				alert('cart-put의 ajax 에러');
			}
		});
	},
	
	list : function(userid) {
		var arr = [];
		$.getJSON(context+'/cart/list/'+userid, function(data) {
			var table = '<div id="cartList"><h1> TOB 배송 상품 장바구니</h1>'
				+'<table id="pur_list"><tr><th>책 이름</th>'
				+'<th>가격</th><th>수량</th></tr>';
			$.each(data, function(i, val) {
				table +='<tr><td><a href="#" id="'+this.bookName+'">'+this.bookName+'</a></td>'
				+'<td>'+this.bookPrice+'</td>'
				+'<td><input type="text" name="count" id="c'+i+'" placeholder="'+this.count+'"></input></td>'
				+'<td><button id="o'+i+'">주문하기</button></td>'
				+'<td><button id="d'+i+'">삭제하기</button></td></tr>'
				arr.push(this.purNum);
			});
			table += '</table></div>';
			/*$(table).appendTo($('.mainView').empty());*/
			$('.mainView').empty().append(table);
			
		});
	},
	/*list : function(context, userid) {
		var arr = [];
		$.getJSON(context+'/cart/list', function(data) {
			alert('카트 list 겟제이슨 진입');
			var table = '<div id="cartList"><h1> TOB 배송 상품 장바구니</h1>'
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
	},*/
	
	change : function(bookId, userid) {
		alert('변경 진입, 넘어온 책 아이디값 : ' +bookId);
		alert('변경 진입, 넘어온 유저아이디값 : ' +userid);
		
		$.ajax(context+'/cart/change',{
			data : {
				
			},
			dataType : "json",
			type : 'get',
			contentType : "application/json;",
			mimeType : "application/json;",
			async : false,
			success : function() {
				
			},
			error : function() {
				alert('cart-change의 ajax 실패');
			}
			
		});
	},
	
	remove : function() {
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
};