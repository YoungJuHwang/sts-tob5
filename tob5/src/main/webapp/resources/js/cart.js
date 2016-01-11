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
			var table = '<div id="Shop_Basket" style="height:100%"><form action="" name="frm0" id="frm0" method="get" ><table width="866" align="center" border="0" cellspacing="0" cellpadding="0"><tbody><tr><td colspan="2"><table width="100%" align="center" border="0" cellspacing="0" cellpadding="0"><tbody><tr><td colspan="2"><table width="100%" align="center" border="0" cellspacing="0" cellpadding="0"><tbody><tr><td align="left"><h3 class="title_middle_black"><span class="title_middle_blue">TOB</span>배송 상품 장바구니 </h3></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><table width="866" align="center" cellspacing="0" cellpadding="0" border="0" summary class="table_shop_blue"><tbody><tr><th width="50" height="29" align="center"></th><th height="29" width="*" align="center">상품명</th><th width="130" height="29" align="center">가격</th><th width="150" height="29" align="center">수량</th><th width="100" height="29" align="center">삭제 <input type="checkbox" name="AllSelect" onclick="javascript:revcheck(document.frm0)" value="checkbox" checked/></th></tr></tbody></table><table id="item_list" width="866" border="0" align="center" cellpadding="3" cellspacing="0"><tbody>';
			$.each(data, function(i, val) {
				table +='<tr><td width="50" align="center"></td><td width="*"><a href="#" id="'+this.bookName+'">'+this.bookName+'</a></td>'
				+'<td width="130" align="center">'+this.bookPrice+'</td>'
				+'<td width="150" align="center"><div style="float:left"><input type="text" name="count" size="1" id="c'+i+'" value="'+this.count+'"></input></div>'
				+'<div class="button" style="float:left;margin-left:4px"><input type="submit" class="button_gray" style="width:55px" value="변경"></div></td>'
				+'<td width="100" align="center"><button id="d'+i+'" align="center">삭제하기</button></td></tr>'
				arr.push(this.purNum);
			});
			table += '</tbody></table></form></div>';
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