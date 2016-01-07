var book = {
		/*책 전체목록*/
		all : function() {
			$('.mainView').html('<div class="wrap auto"><div class="mainn"></div><div class="alpha"><font color="red"><strong>국내도서</strong></font><br /><p><p>'
					+'<a href="#" id="social" value="social">social</a><br /><p><a href=""><font>자기계발</font></a><br /><p><a href=""><font>컴퓨터</font></a><br /><p>'
					+'<font>베스트셀러</font><br /><p><font>이달의 책</font><br /><p><font>키위밍</font><br /><p><font>월페이퍼</font><br /><p><font>이벤트</font><br />'
					+'<p><font>예약판매</font><br /><p></div>'
					+'<div class="alpha"><font color="red"><strong>외국도서</strong></font><br /><p><p><a href=""><font>인문</font></a><br /><p><a href=""><font>과학</font></a><br />'
					+'<p><a href=""><font>생활</font></a><br /><p><font>베스트셀러</font><br /><p><font>이달의 책</font><br /><p><font>월페이퍼</font><br /><p><font>일본신간잡지'
					+'</font>'
					+'<br /><p><font>일본정지구독잡지</font><br /><p></div><div class="alpha"><font color="red"><strong>eBook</strong></font><br /><p><p><a href=""><font>베스트'
					+'</font></a><br /><p><a href=""><font>신간</font></a><br /><p><a href=""><font>추천</font></a><br /><p><font>무료</font><br /><p><font>이벤트</font><br /><p>'
					+'<font>연재</font><br /><p><font>논문</font><br /><p></div><div class="alpha"><font color="red"><strong>sam</strong></font><br /><p><p><a href=""><font>오늘의'
					+'sam</font></a><br /><p><a href=""><font>신간</font></a><br /><p><a href=""><font>추천</font></a><br /><p><font>베스트셀러</font><br /><p><font>이달의 책</font>'
					+'<br /><p><font>월페이퍼</font><br /><p></div><div class="alpha"><font color="red"><strong>북모닝CEO</strong></font><br /><p><p><font>회원가입안내</font><br />'
					+'<p><font>과학</font><br /><p><font>생활</font><br /><p><font>베스트셀러</font><br /><p><font>이달의 책</font><br /><p><font>월페이퍼</font><br /><p><font>경영학'
					+'원</font><br /><p><font>무료zone</font><br /><p></div>'
					);
			
			$('#social').click(function() {
			book.bookEmpty();
			book.bookSimplePage('1');
				
			});
		},
		
		bookSimplePage : function(pageNo) {
			var arr = [];
		$.getJSON(context +'/book/Book_selectAll/'+pageNo ,function(data){
			var count = data.count;
			var pageNo = data.pageNo; 
			var startPage = data.startPage;
			var groupSize = data.groupSize;
			var lastPage = data.lastPage;
			var totPage = data.totPage;
			var bookList= '<div id="bookContents" style="color: black;"><h2>책 목록</h2>';
			//---------------------------책 정보----------------------------------------
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
				bookList += '<input type="button"  value="장바구니에 담기" id="cart">';
				bookList += '<input type="button"  value="바로구매" id="buy">';
				bookList += '<br /><br /><br /><br />';
				arr.push(this.bookId);
			});
			
			//-------------------------------------다음페이지------------------------------------------
				var pagination = '<TABLE id="pagination">'
					if (startPage != 1) {
						pagination += '<a href="'+context+'/book/Book_selectAll/1">'
						+'<IMG SRC="'+img+'/btn_bf_block.gif">&nbsp;'
						+'</a>';
					}
					if ((startPage - groupSize) > 0 ) {
						pagination +='<a href="'+context+'/book/Book_selectAll/'+(startPage-groupSize)+'">'
						+'<IMG SRC="'+img+'/btn_bf_page.gif">&nbsp;'
						+'</a>';
					}
					for (var i = startPage ; i <= lastPage; i++) {
						if (i == pageNo) {
							pagination+='<font style="color:red;font-size: 20px">'
							+i
							+'</font>';
						} else {
							pagination+='<a href="#" onClick="return book.bookSimplePage('+i+')">'
							+'<font>'
							+i
							+'</font>'
							+'</a>';
						}
					}		
					if ((startPage + groupSize) <= totPage) {
						pagination += +'<a href="'+context+'/book/Book_selectAll/'+(startPage+groupSize)+'">'
					}
					pagination += '</TD>';
					pagination += '<TD WIDTH=200 ALIGN=RIGHT>'
					bookList += pagination;
					$('.mainView').html(bookList);
		//---------------------------------------------------------------------------------
			bookList+='</div>';
			
			$('.mainView').html(bookList);
			
			
			$('#cart').click(function() {
				
				alert('장바구니에 책이 담겼습니다 ^ㅁ^')
			});
			$('#buy').click(function() {
				alert('구매 페이지로 이동')
			});
		
			
			$.each(data.list, function(i, value) {
				$('#'+arr[i]).click(function() {
					alert("책 상세 정보를 보여주는 페이지로 넘어갑니다.");
					book.bookEmpty();
					book.mainPage(arr[i]);
			});

				
			});
			
		});
		},
		
		
	mainPage : function(bookId) {
			$.getJSON(context + '/book/Book_main/'+bookId ,function(data){
				var bookPage = '<div class="contents">'
					
					+'<div class="book">'
					+'<img alt="" src="'+context+'/resources/images/'+data.bookId+'.jpg" width="200px" height="301px" align="left">'
					+'</div>'
					+'<div class="book2">'
					+'<br />'
					+'<p>'
					+'<font color="#00BFFF" size="20px"><strong>'+data.bookName+'</strong></font><font>　</font><font color="black" size="2px"><strong> 어느 괴짜 과학자의 화성판 어드벤처 생존기 | 앤디 위어 장편소설</strong></font><br /><br />'
					+'<font>　　　　　　　　　　　　　</font> <font color="gray" size="2px">'+data.writer+'</font><br />'
					+'<font>　　　　　　　　　　　　　</font><font color="#DC143C" size="3px">'+data.grade+'</font><font>　</font><br />'
					+'<br /><br /><br /><br /><br /><br /><br /><br />'
					+'<font>　　　　　　　</font><font color="black" size="3px">판매가 :</font> <font color="red" size="7pk"><strong>'+data.bookPrice+'</strong></font><font color="purple" size="3px"><strong>[10%↓ 1,500원 할인]</strong></font><br />'
					+'<font>　　　　　　　</font><font color="black">제휴할인가 :</font> <font color="skyblue" size="3px"><strong><12,820원</strong></font><font color="black">교보-KB국민카드 5% 청구할인(실적무관)</font><font>　　</font>'
					+'<input type="button" onclick="다음 페이지로.." value="구매하기">'
					+'<input type="button" onclick="다음 페이지로.." value="장바구니에 담기"><br />'
					
					+'<br /></div></div>';
				$('.mainView').html(bookPage);
			});
		},
		
		/*비우기*/
		bookEmpty : function() {
			$('.mainView').appendTo($('.mainView').empty());
		},
		
		/*실험용 알러트*/
		bookSampleAlert : function() {
			alert('따당')
		}
		
		
}