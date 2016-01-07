var Event = {
		
		event : function() {
			$('.mainView').html('<div class="big"><div class="big_1"><div class="cate">'
					+'<div class="cate_1"><a class="highlight" href= "css_syntax.asp"><br>이벤트 </a></div>'
					+'<div class="cate_2"><a class="highlight" href= "css_syntax.asp"><br>국내도서 </a></div>'
					+'<div class="cate_3"><a class="highlight" href= "css_syntax.asp"><br>외국도서 </a></div>'
					+'<div class="cate_4"><a class="highlight" href= "css_syntax.asp"><br>eBook </a></div>'
					+'<div class="cate_5"><a class="highlight" href= "css_syntax.asp"><br>문화 이벤트 </a></div>'
					+'<div class="cate_6"><a class="highlight" href= "css_syntax.asp"><br>당첨자 발표 </a></div>'
					+'<div class="cate_7"><a class="highlight" href= "css_syntax.asp"><br>지난 이벤트 </a></div></div>'
					+'<div class="sea"><div class="sea_1"><div class="sm_1 auto"><h1>추천이벤트</h1><ol><li></li><li></li><li></li></ol></div></div>'
					+'<div class="sea_2"><div class="sm_2 auto"><div class="sm_2_1"><form action=""><input type="checkbox" name="book" value="전체" checked>전체  '
					+'<input type="checkbox" name="book" value="국내도서">국내도서 <input type="checkbox" name="book" value="외국도서">외국도서'
					+'<input type="checkbox" name="book" value="eBook">eBook <input type="checkbox" name="book" value="문화 이벤트">문화 이벤트 </form></div>'
					+'<div class="sm_2_2"><form action="action_page.php"><input type="radio" name="promotion" value="전체" checked>전체 '
					+'<input type="radio" name="promotion" value="경품/할인">경품/할인 <input type="radio" name="promotion" value="1+1">1+1 </form></div>'
					+'<div class="sm_2_3"><form action="">이벤트 검색:<input type="text" name="검색"><input type="submit" value="검색" id="search"></form></div></div></div></div></div></div></div>'
			);
			$('#search').click(function() {
				Event.EventEmpty();
				Event.ranking('1');
			});
			
			
		},
		

  ranking : function(pageNo) {
  
      alert("랭킹 넘어와랗");
     $ .getJSON (context +'/event/Event_selectAll'+pageNo,function (data){
  
      	var arr = [];
      	var count = data.count;
		var pageNo = data.pageNo; 
		var startPage = data.startPage;
		var groupSize = data.groupSize;
		var lastPage = data.lastPage;
		var totPage = data.totPage;
      
      
            var rank = '<div id="test"><h2 style="color: white; padding-top: 10;">이벤트</h2></div>'
           $ .each (data , function(index , value ) {
           rank += '<div class="img"><img src="'+project+'/resources/images/'+this.profile+'" alt="" width="150" height="100"></a>'
           +'<div class="desc"><br /><a class="highlight" href= "css_syntax.asp">'+this.evtName+'</a>'
           +'<br /><br />'+this.fromDt +'~' +this.toDt+'</div></div>'

                arr.push (this.evtId );

     });
          $('.mainView').empty().append(rank);+
           $.each(data, function(i,val) {
                $('#'+ arr[1]).click( function() {
                     Event.eventName(context,arr[i]);
                    
                });
           });
          
     });
},

		
		
		
		
		
}






