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
				+'<div class="button" style="float:left;margin-left:4px">'
/*==>onclick*/	+'<input type="submit" class="button_gray" style="width:55px" value="변경" onclick="Cart.change('+'\''+this.bookId+','+this.count+'\''+')"></div></td>'
/*==>onclick*/	+'<td width="100" align="center"><button id="d'+i+'" align="center" onclick="Cart.remove('+'\''+this.bookId+'\''+')">삭제</button></td></tr>'
				arr.push(this.bookId);
			});
			table += '</tbody></table><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px" bgcolor="#E3EDF7"><tbody><tr><td align="center" style="padding: 10px 0 10px 0"><table cellpadding="0" cellspacing="0" border="0" width="610"><tbody><tr><td><table cellpadding="0" cellspacing="0" border="0"'
				+'width="289"><tbody><tr><td width="140">총 상품가격</td>'
				+'<td width="149"><strong>합계...</strong></td>'
				+'</tr><tr><td height="20">배송비</td><td><strong>0</strong>원</td></tr><tr><td height="20">총 주문 상품 수</td>'
				+'<td><strong>??</strong>권</td>'
				+'</tr></tbody></table></td><td width="1" bgcolor="#ffffff"></td></tbody></table><table cellpadding="0" cellspacing="0" border="0" width="600"><tbody><tr><td width="140" height="20" class="pt1"><strong>총 결제 예상 금액</strong></td>'
				+'<td width="149" class="pt1"><span class="pt3">합계 금액...</span></td></tr></tbody></table></td></tr></tbody></table>'
				+'</form></div>';
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
	
	change : function(bookId, count) {
		alert('변경 진입, 넘어온 책 아이디값 : ' +bookId);
		alert('변경 진입, 넘어온 책 수량 : ' +count);
		
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
	
	remove : function(bookId, userid) {
		alert('Cart.remove 진입, 넘어온 책 아이디값 : ' +bookId);
		$.ajax(context+'/cart/remove', {
			data : {
				bookId : bookId,
				userid : userid
			},
			dataType : "json",
			type : 'get',
			contentType : "application/json;",
			mimeType : "application/json;",
			async : false,
			success : function() {
				alert('삭제되었습니다.');
			},
			error : function() {
				
			}
		});
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
};