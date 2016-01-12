<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="curve_chart" style="width: 900px; height: 500px; margin: auto;"></div>
<div id="map_div" style="width: 400px; height: 300px; margin: auto;" ></div>
<div id="map" style="width:500px;height:400px; margin: auto;"></div>

<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=53e2827500534f733c75dadaccfdbaa2"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">

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
	       		 "key" : i-1
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

/* var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new daum.maps.LatLng(37.49917, 127.02940), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴 */

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




