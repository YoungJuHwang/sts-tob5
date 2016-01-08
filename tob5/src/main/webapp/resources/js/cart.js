var Cart = {
	main : function(link) {
		$(".mainView").load(link+"/cart/Cart");
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
		alert('카트 펑션으로 넘어옴');
		var table = '<div id=cartList"><h1> 장바구니 목록</h1>';
		$.getJSON(context+'/cart/put/'+bookId, function(data) {
			alert('카트 put 겟제이슨 진입');
			alert('넘어온 북 아이디 '+bookId);
			$.each(data, function() {
				
			});
		});
	}
};