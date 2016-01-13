<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="curve_chart" style="width: 900px; height: 500px; margin: auto;"></div>
<div id="map_div" style="width: 400px; height: 300px; margin: auto;" ></div>
<div id="map" style="width:500px;height:400px; margin: auto;"></div>

<div id="daumForm">  
    <input id="daumSearch" type="text" value="다음" onkeydown="javascript:if(event.keyCode == 13) daumSearch.search();"/>  
    <input id="daumSubmit" onclick="javascript:daumSearch.search()"   
        type="submit" value="검색" />  
</div>  
<div id="daumView">  
    <h3>비디오 검색 결과</h3>  
        <div id="daumVclip"></div>  
    <h3>이미지 검색 결과</h3>  
        <div id="daumImage"></div>  
    <h3>게시판 검색 결과</h3>  
        <div id="daumBoard"></div>  
    <h3>블로그 검색 결과</h3>  
        <div id="daumBlog"></div>  
    <h3>웹 검색 결과</h3>  
        <div id="daumWeb"></div>  
    <h3>지식 검색 결과</h3>  
        <div id="daumKnowledge"></div>  
    <h3>책 검색 결과</h3>  
        <div id="daumBook"></div>  
    <h3>카페 검색 결과</h3>  
        <div id="daumCafe"></div>  
</div>  
<div id="daumScript">  
    <div id="daumVclipScript"></div>  
    <div id="daumImageScript"></div>  
    <div id="daumBoardScript"></div>  
    <div id="daumBlogScript"></div>  
    <div id="daumWebScript"></div>  
    <div id="daumKnowledgeScript"></div>  
    <div id="daumBookScript"></div>  
    <div id="daumCafeScript"></div>  
</div>  


<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=53e2827500534f733c75dadaccfdbaa2"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
    var daumBook = {  
            /** 초기화. **/  
            init : function(r){  
                daumBook.api = 'http://apis.daum.net/search/book';  
                daumBook.pgno = 1;  
                daumBook.result = r;  
            },  
            /** callback 함수 호출. **/  
            pingSearch : function(pgno){  
                daumBook.pgno = pgno;  
                  
                var ds = document.getElementById('daumBookScript');  
                var callback = 'daumBook.pongSearch';  
                  
                daumSearch.pingSearch(ds,daumBook.api, daumBook.pgno,   
                    callback, daumBook.result);    
            },  
            /** 결과를 뿌려줌. **/  
            pongSearch : function(z){  
                var dv = document.getElementById('daumBook');  
                dv.innerHTML ="";  
                dv.appendChild(daumSearch.pongSearch(this, z));  
                dv.appendChild(daumSearch.pongPgno(daumBook.pgno,   
                    z.channel.totalCount/daumBook.result,daumBook.pingSearch));  
            },  
            /** li setting **/  
            getSearch : function(title,content){  
                var li = document.createElement('li');  
                  
                li.appendChild(title);  
                li.appendChild(content);  
                  
                return li;  
            },  
            /** 설명 return **/  
           getContent : function(z){  
               var div = document.createElement('div');  
               var a = document.createElement('a');  
               var b = document.createElement('b');  
               var ba1 = document.createElement('a');  
               var ba2 = document.createElement('a');  
               var ba3 = document.createElement('a');  
               var ba4 = document.createElement('a');  
               var img = document.createElement('img');  
               var aimg = document.createElement('a');  
                 
               img.src = z.cover_s_url;  
                 
               aimg.target = '_blank';  
               aimg.imghref = z.cover_s_url;  
               aimg.style.float = 'left';  
                            
               aimg.appendChild(img);  
                 
               a.target = '_blank';  
               a.href = z.link;  
               a.style.clear = 'left';  
               a.innerHTML = daumSearch.escapeHtml(z.description) + '<'+'br/>';  
                 
               ba1.innerHTML = '저자 : '   
                    + daumSearch.escapeHtml(z.author) + '<'+'br/>';  
               ba2.innerHTML = '출판사 : '   
                    + daumSearch.escapeHtml(z.pub_nm) + '<'+'br/>';  
               ba3.innerHTML = '카테고리 : '   
                    + daumSearch.escapeHtml(z.category) + '<'+'br/>';  
               ba4.innerHTML = '가격 : '   
                    + daumSearch.escapeHtml(z.sale_price) + '<'+'br/>';  
                 
               b.appendChild(ba1);  
               b.appendChild(ba2);  
               b.appendChild(ba3);  
               b.appendChild(ba4);  
                 
               div.appendChild(aimg);  
               div.appendChild(b);  
               div.appendChild(a);  
                            
               return div;  
           }  
        };  
$(function() {
 	lineChartFactor();
	google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawLineChart);
    
});



var lineFactor = [];
var lineYear = [];
var lineMonth = [];
var lineDay = [];
var lineChartFactor = function() {
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	if(dd<10) {
	    dd='0'+dd
	}
	if(mm<10) {
	    mm='0'+mm
	}
	today = yyyy+mm+dd;
	
	alert('오늘날짜: '+parseInt(today));
	
	for (var i = today; i > 20160101; i--) {
		$.ajax(context + "/account/chart_line",{
	       	 data : {
	       		 "key" : i
	       	 },
	       	 async : false,
	       	 success : function(data) {
	       		lineFactor.push(parseInt(data.sum));
	       		lineYear.push(data.year);
	       		lineMonth.push(data.month);
	       		lineDay.push(data.day);
	   		 },
	   		 error : function() {
	   			alert("실패");
	   		 }
	         });
	}
};


function drawLineChart() {
    var data = google.visualization.arrayToDataTable([
      ['날짜',    '날짜별 판매금액'],
      [lineMonth[6]+'월'+lineDay[6]+'일',  lineFactor[6]],
      [lineMonth[5]+'월'+lineDay[5]+'일',  lineFactor[5]],
      [lineMonth[4]+'월'+lineDay[4]+'일',  lineFactor[4]],
      [lineMonth[3]+'월'+lineDay[3]+'일',  lineFactor[3]],
      [lineMonth[2]+'월'+lineDay[2]+'일',  lineFactor[2]],
      [lineMonth[1]+'월'+lineDay[1]+'일',  lineFactor[1]],
      [lineMonth[0]+'월'+lineDay[0]+'일',  lineFactor[0]]
            
    ]);

    var options = {
      curveType: 'function',
      legend: { position: 'bottom' },
      width : '100%',
      height : '500'
    };

    var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

    chart.draw(data, options); 
};

/* ============== 차트 ============= */

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new daum.maps.LatLng(37.499491, 127.029254), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
var markerPosition  = new daum.maps.LatLng(37.499491, 127.029254); 

//마커를 생성합니다
var marker = new daum.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);



  
</script>




