var book = {
		userid : '',
		getUserid : function() {
			return this.userid;
		},
		setUserid : function(userid) {
			this.userid = userid; 
		},
		/*책 전체목록 */
		all : function(userid) {
			alert('책 전체목록 페이지 진입 ');
			book.setUserid(userid);
			alert('책 전체목록 페이지 진입, 넘어온 유저아이디 : '+userid);
			var abroadArr =[];
			var abroadArrName =[];
			
			var domesticArr =[];
			var domesticArrName =[];
			
			var ebookArr =[];
			var ebookArrName =[];
			
			var newArr =[];
			var newArrName =[];
			
			var oldArr =[];
			var oldArrName =[];
			$.getJSON(context + '/genre/Genre',function(data){
			
				var table = '<h3>전체 목록</h3>';
				/*해외도서 */
				table += '<div class="alpha"><font color="red"><strong>'+data.listAbroadName+'</strong></font><br /><p><p>';
				$.each(data.listAbroad,function(index,value){
					table += '<li><a href="#" id="'+this.genreId+'">'+this.genreName+'</a></li></div>'; 
					abroadArr.push(this.genreId);
					abroadArrName.push(this.genreName);
					});
				
				
				
				/*국내도서 */
				table += '<div class="alpha"><font color="red"><strong>'+data.listDomesticName+'</strong></font><br /><p><p>';
				$.each(data.listDomestic,function(index,value){
					table += '<li><a href="#" id="'+this.genreId+'">'+this.genreName+'</a></li></div>'; 
					domesticArr.push(this.genreId);
					domesticArrName.push(this.genreName);
					});
				
				
				
				/*전자책 */
				table += '<div class="alpha"><font color="red"><strong>'+data.listEbookName+'</strong></font><br /><p><p>';
				$.each(data.listEbook,function(index,value){
					table += '<li><a href="#" id="'+this.genreId+'">'+this.genreName+'</a></li></div>'; 
					ebookArr.push(this.genreId);
					ebookArrName.push(this.genreName);
					});
				
				
				
				/*신간 */
				table += '<div class="alpha"><font color="red"><strong>'+data.listNewName+'</strong></font><br /><p><p>';
				$.each(data.listNew,function(index,value){
					table += '<li><a href="#" id="'+this.genreId+'">'+this.genreName+'</a></li></div>'; 
					newArr.push(this.genreId);
					newArrName.push(this.genreName);
					});
				
				/*중고책*/
				table += '<div class="alpha"><font color="red"><strong>'+data.listOldName+'</strong></font><br /><p><p>';
				$.each(data.listOld,function(index,value){
					table += '<li><a href="#" id="'+this.genreId+'">'+this.genreName+'</a></li></div>'; 
					oldArr.push(this.genreId);
					oldArrName.push(this.genreName);
					});
				$('.mainView').empty().append(table);
				
				
				/*------------버튼-------------------------------*/
				$.each(data.listAbroad,function(i,value){
					$('#'+abroadArr[i]).click(function() {
						alert('해외도서 페이지,'+abroadArrName[i]+'  페이지로 이동.')
						book.bookEmpty(abroadArr[i]);
						book.bookSimplePage('1', userid);
						alert('넘어가는 유저아이디 : '+ userid);
					});
					
				});
				
				
				$.each(data.listDomestic,function(i,value){
					$('#'+domesticArr[i]).click(function() {
						alert('국내도서 페이지  ,'+domesticArrName[i]+'  페이지로 이동.')
						book.bookEmpty(domesticArrName[i]);
						book.bookSimplePage('1', userid);
						alert('넘어가는 유저아이디 : '+ userid);
					});
					
				});
				$.each(data.listEbook,function(i,value){
					$('#'+ebookArr[i]).click(function() {
						alert('전자책 페이지  ,'+ebookArrName[i]+'  페이지로 이동.')
						book.bookEmpty(ebookArrName[i]);
						book.bookSimplePage('1', userid);
						alert('넘어가는 유저아이디 : '+ userid);
					});
					
				});
				
				
				$.each(data.listNew,function(i,value){
					$('#'+newArr[i]).click(function() {
						alert('신간 페이지  ,'+newArrName[i]+'  페이지로 이동.')
						book.bookEmpty(newArrName[i]);
						book.bookSimplePage('1', userid);
						alert('넘어가는 유저아이디 : '+ userid);
					});
				});
				
				
				$.each(data.listOld,function(i,value){
					$('#'+oldArr[i]).click(function() {
						alert('중고책 페이지  ,'+oldArrName[i]+'  페이지로 이동.')
						book.bookEmpty(oldArrName[i]);
						book.bookSimplePage('1', userid);
						alert('넘어가는 유저아이디 : '+ userid);
					});
					
				});
				/*--------------------------------------*/
				
			});
		},
		
		bookSimplePage : function(pageNo, userid) {
			var arr = [];
		$.getJSON(context +'/book/Book_selectAll/'+pageNo,function(data){
			var count = data.count;
			var pageNo = data.pageNo; 
			var startPage = data.startPage;
			var groupSize = data.groupSize;
			var lastPage = data.lastPage;
			var totPage = data.totPage;
			var bookList= '<div id="bookContents" style="color: black;"><h2>책 목록-로그인된 화면</h2>';
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
				bookList += '<input type="button"  value="장바구니에 담기" onclick="book.putInCart('+'\''+this.bookId+'\''+')">';
				bookList += '<input type="button"  value="바로구매" id="b'+index+'">';
				bookList += '<br /><br /><br /><br />';
				arr.push(this.bookId);
			});
			
			//-------------------------------------다음페이지------------------------------------------
				var pagination = '<TABLE id="pagination">'
					if (startPage != 1) {
						pagination += '<a href="'+context+'/book/Book_selectAll/1">'
						+'<IMG SRC="'+img+'/left.png">&nbsp;'
						+'</a>';
					}
					if ((startPage - groupSize) > 0 ) {
						pagination +='<a href="'+context+'/book/Book_selectAll/'+(startPage-groupSize)+'">'
						+'<IMG SRC="'+img+'/right.png">&nbsp;'
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
			
			$.each(data.list, function(index, value) {
				$('#'+arr[index]).click(function() {
					alert("책 상세 정보를 보여주는 페이지로 넘어갑니다.");
					book.bookEmpty();
					book.mainPage(arr[index]);
			});


$.each(data.list,function(i,value){
	$('#b'+index).click(function() {
		alert('구매 클릭 됨.');
		alert('Purcase.buy으로 넘기는 유저아이디 : '+userid);
		Purchase.buy(arr[index], userid);		
	});
});
				
			});
			
		});
		},
		
	putInCart : function(bookId, userid) {
		alert('장바구니 클릭 됨.');
		Cart.put(bookId);
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
					+'<input type="button" value="책검색" id="search">'
					+'<br /></div></div>';
				$('.mainView').html(bookPage);
				$('#search').click(function() {
					book.bookEmpty();
					book.inputBookId();
				});
			});
			
		},
		

		
		
		
		
		
		//------------------------ 오늘의책  입력하기.. 이것도 아닌 거 같음
		inputBookId : function() {
			$('.mainView').html('<form action=""><input type="text"  id="textInputId">'
					+'<input type="button" value="오늘의 책 선정" id="btCheck"></form>'
					)
					$('#btCheck').click(function() {
						if ($("#textInputId").val() == "") {
							alert("책 아이디 값을 입력해주세요.");
							$("#textInputId").focus();
							return false;
						}
						book.searchForTodayBook2($("#textInputId").val());
					})
		},
		//case 1 ---------------------------------------------------
		searchForTodayBook : function(bookId) {
			
			alert('searchForTodayBook 진입 하였음');
			$.ajax({
				url :  +"${context}/book/Book_main"+bookId,
				data : $('textInputId').val(),
				dataType : "json",
				type : 'get',
				contentType : "application/json",
				mimeType : "application/json",
				async : false,
				success : function(data) {
					if (data != null) {
						alert(this.bookName + "책 선정 완료");
							var showTodayBook = '<h2>오늘의 책</h2>'
								+'<div><a>'+this.bookName+'</a>'
								+'</div>'
					} else {
						alert("책 등록  오류");
						return false;
					}
				},
				error : function(e) {
					alert("에러");
				}
				
			})
		},
		//------------------------------------------------------------------------------
		
		//case2-------------------------------------------------------------------------
		searchForTodayBook2 : function() {
			alert('오늘의 책 2번째 방법 진입');
			$.getJSON(context +'/book/Book_main/'+bookId ,function(data){
				var todayBook= '<div id="bookTodaybook" style="color: black; width : 400px; height: 200px; border: 1px solid black;"><h2 style="color: olive;>오늘의 책</h2>';
				todayBook += '<div class="BookToday">'
					todayBook += '<img alt="" src="'+context+'/resources/images/'+this.bookId+'.jpg" width="106px" height="150px" align="left">';//수정필요 사진 경로 및 db 아이디 일치\
					todayBook += '<a href="#" id="'+this.bookId+'"><strong>'+this.bookName+'</strong></a><br /><br />';
					todayBook += '<font color="maroon" size="1px">'+this.writer+'</font><br />';
					todayBook += '<font color="black" size="2px">책 내용 들어갈 자리.</font>';
					todayBook += '<br /><br /><br /><br />';
			});
		},
		
		
		//-------------------------------------------------------------------------
		
		
		
		
		
		
		
		
		
		
		
		
		//------------------------------ 오늘의 책-- 망한거----------
		todayBook242 : function(pageNo) {
			alert('오늘의 책 진입');
			var bookArr = [];
			$.getJSON(context +'/book/Book_TodayBook/'+pageNo ,function(data){
				alert('오늘의 책 JSON 진입');
				var count = data.count;
				var pageNo = data.pageNo; 
				var startPage = data.startPage;
				var groupSize = data.groupSize;
				var lastPage = data.lastPage;
				var totPage = data.totPage;
				var todayBook= '<div id="bookTodaybook214124" style="color: black; width : 400px; height: 200px; border: 1px solid black;"><h2>오늘의 책</h2>';
				//---------------------------책 정보----------------------------------------
				alert('오늘의책 까지 들어옴')
				$.each(data.list,function(index,value){
					todayBook += '<div class="BookToday">'
					todayBook += '<img alt="" src="'+context+'/resources/images/'+this.bookId+'.jpg" width="106px" height="150px" align="left">';//수정필요 사진 경로 및 db 아이디 일치\
					todayBook += '<a href="#" id="'+this.bookId+'"><strong>'+this.bookName+'</strong></a><br /><br />';
					todayBook += '<font color="maroon" size="1px">'+this.writer+'</font><br />';
					todayBook += '<font color="black" size="2px">책 내용 들어갈 자리.</font>';
					todayBook += '<br /><br /><br /><br />';
					todayBook+='</div>';
					bookArr.push(this.bookId);
				});
				
				//-------------------------------------다음페이지------------------------------------------
					var pagination = '<TABLE id="pagination">'
						if (startPage != 1) {
							pagination += '<a href="'+context+'/book/Book_TodayBook/1">'
							+'<IMG SRC="'+img+'/left.png">&nbsp;'
							+'</a>';
						}
						if ((startPage - groupSize) > 0 ) {
							pagination +='<a href="'+context+'/book/Book_TodayBook/'+(startPage-groupSize)+'">'
							+'<IMG SRC="'+img+'/right.png">&nbsp;'
							+'</a>';
						}
						
						for (var i = startPage ; i <= lastPage; i++) {
							if (i == pageNo) {
								pagination+='<font style="color:green;font-size: 20px">'
								+i
								+'</font>';
							} else {
								pagination+='<a href="#" onClick="return book.todayBook('+i+')">'
								+'<font>'
								+i
								+'</font>'
								+'</a>';
							}
						}		
						if ((startPage + groupSize) <= totPage) {
							pagination += +'<a href="'+context+'/book/Book_TodayBook/'+(startPage+groupSize)+'">'
						}
						pagination += '</TD>';
						pagination += '<TD WIDTH=200 ALIGN=RIGHT>'
						todayBook += pagination;
						$('.mainView').html(todayBook);
			//---------------------------------------------------------------------------------
				todayBook+='</div>';
				
				$('.mainView').append(todayBook);
		
			});
			},
			
			
		
		//------------------------------------------------
		
		
		bookEmpty : function() {
			$('.mainView').appendTo($('.mainView').empty());
		}
		
		
}