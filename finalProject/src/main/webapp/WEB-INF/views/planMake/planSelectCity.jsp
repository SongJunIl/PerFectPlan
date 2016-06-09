<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>지도에 교통정보 표시하기</title>
<style type="text/css">
	*{
		margin: 0px;
	}	
	/* #plan_planner_maker{
		width: 425px;
		height: 905px;
		float: left;
		background-color: black;
		z-index: 999;
	}
	#planner_date_box{
		float:left;
		width: 160px;
		height: 905px;
	}
	#planner_schedule_box{
		float:left;
		width: 265px;
		height: 905px;
		background-color: gray;
	} */
	.clear{
		clear: both;
	}
	#map_inner,#map{
		float:left;
		width: 1603px;
		height: 893px;
		
		
	}
	
	#plan_select_city{
		background-color: white;
		width: 300px;
		height: 825px;
		float: left;
		
	}
	#pselect_city_header{
		overflow:hidden;
		background-color: gray;
		color: white;
		width: 300px;
		height: 50px; 
		line-height: 50px;
	}
	#pselect_city_title{
		width: 150px;
		font-weight: bolder;
		font-size: 25px;
		
		text-align: center;
		float: left;
	}
	#pselect_city_img img{
		width: 30px;
		height: 30px;
		overflow: auto;
		float: left;
		vertical-align: middle;
		margin-left: 20px;
		margin-top: 10px;
	}
	#pselect_city_body{
		margin-top:10px;
		width: 300px;
		height: 825px;
		overflow: auto;
	}
	.pcity_inner_name{
		margin-top:15px;
		line-height: normal;
		text-align: center;
	}
	.pcity_inner_img{
		float: left;
	}
	.pcity_inner_name{
		float: left;
		margin-left: 10px;
	}
	.pcity_inner_kname{
		text-align: left;
	}
	.pcity_inner_addbtn{
		float: right;
	}
	.pcity_inner_img img{
		border: 1px solid gray;
		width: 60px;
		height: 60px;
		overflow: auto;
	}
	.pcity_inner_addbtn img{
		border: 1px solid gray;
		width: 40px;
		height: 40px;
		overflow: auto;
	}
	.pselect_city_inner{
		width: 280px;
		height: 70px;
		line-height: 65px;
		border-bottom: 1px gray solid;
		border-top: 1px gray solid;
	}
	.pcity_inner_box{
		width: 245px;
		height: 70px;
		margin: 0 auto;
	}
	.pcity_inner_addbtn{
		cursor: pointer;
	}

/* map쪽에 플래너 css */	
	.sidenav {
	border-radius : 7px;
    margin-top:10px;
    margin-left:10px;
    /* height: 700px; */
    width: 0;
    z-index: 90;
    position:absolute;
    top: 0;
    left: 0;
    background-color: white;
    overflow-x: hidden;
    transition: 1s;
    /* padding-top: 60px; */
    float: left;
   	min-height: 300px;
   	max-height: 700px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 1s
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px !important;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

#planner_nav_header{
	width: 350px;
	height: 50px;
	color: white;
	background-color: #1a7ad9;
}
#planner_nav_title{
	width:150px;
	float: left;
	margin-left: 20px;
	font-weight: bolder;
	font-size: 25px;
	text-align: center;
	height: 50px;
	line-height: 50px;
}
#planner_nav_date{
	float: left;
	margin-right: 15px;
	width: 90px;
	height: 50px;
	line-height: 50px;
}
#planner_nav_date img{
	margin-right: 5px;
}

#datepicker {
	color: white;
	background: url(${pageContext.request.contextPath}/resources/img/plan/pn_cal_btn.png) no-repeat 125px 7px;
	font-size: 12px;
	width: 150px;
	height: 30px;
	border: 1px white double;
}
#planner_nav_btn{
	width: 100%;
	height: 80px;
	border-top: 1px gray solid; 
	padding-top: 16px;
}

#planner_nav_btn_go{
	width: 270px;
	height: 45px;
	background-color: #49b2e9;
	border: solid #3099dd 1px;
	margin: 0 auto;
	text-align: center;
	line-height: 45px;
	color: white;
	font-weight: bold;
	font-size: 20px;
	margin-bottom: 16px;
}


.planner_nav_inner{
	background-color: #efefef;
	width: 280px;
	height: 40px;
	margin: 5px auto;
	border-radius: 10px; 
	/* display: none; */
}
.planner_nav_inner_box{
	width: 260px;
	height: 30px;
	margin: 0 auto;
	
}
.planner_nav_inner_img{
	float: left;
	margin-left: 20px;
	margin-top: 8px; 
}
.planner_nav_inner_name{
	float: left;
	margin-left: 20px;
	text-align: center;
	margin-top: 8px;
}
.planner_nav_inner_day{
	float: right;
	margin-right: 20px; 
}
.planner_nav_inner_line{
	width:100%;
	text-align: center;
}
.planner_nav_inner_img{
	cursor: pointer;
}
/* map에대한 css */	
.dot {overflow:hidden;float:left;width:12px;height:12px;background: url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/mini_circle.png');}    
.dotOverlay {position:relative;bottom:10px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;font-size:12px;padding:5px;background:#fff;}
.dotOverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}    
.number {font-weight:bold;color:#ee6152;margin-left: 10px;}
.dotOverlay:after {content:'';position:absolute;margin-left:-6px;left:50%;bottom:-8px;width:11px;height:8px;background:url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white_small.png')}
.distanceInfo {position:relative;top:5px;left:5px;list-style:none;margin:0;}
.distanceInfo .label {display:inline-block;width:50px;color: black;margin-right: 5px;}
.distanceInfo:after {content:none;}

</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=c13f7a56e3fd7a30f74913f2574d70f1"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>

$(function() {
	var big_length = $(".big_List").val();
	var big_array =[];
	for(var a=0;a<big_length;a++){
		big_array.push({
            big_name: $(".big_name"+a).val(), 
            big_ename: $(".big_name"+a).val(), 
            big_xlocation: $(".big_xlocation"+a).val(),
            big_ylocation: $(".big_ylocation"+a).val()
        })
	}
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
		center: new daum.maps.LatLng(36.3666102, 127.8783881), // 지도의 중심좌표
        level: 13 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
var positions = [];
var positions2 = [];

var j=0;
var i=0;
var check = true;

for(a=0;a<big_array.length;a++){
	positions2.push({
			big_name:big_array[a].big_name,
            title: big_array[a].big_ename,
            big_xlocation :big_array[a].big_xlocation,
	        big_ylocation :big_array[a].big_ylocation,
            latlng: new daum.maps.LatLng(big_array[a].big_xlocation, big_array[a].big_ylocation)
	});	
	
}

/* var positions2 = [
                 {
                     title: '카카오', 
                     latlng: new daum.maps.LatLng(33.450705, 126.570677)
                 },
                 {
                     title: '생태연못', 
                     latlng: new daum.maps.LatLng(33.450936, 126.569477)
                 },
                 {
                     title: '텃밭', 
                     latlng: new daum.maps.LatLng(33.450879, 126.569940)
                 },
                 {
                     title: '근린공원',
                     latlng: new daum.maps.LatLng(33.451393, 126.570738)
                 }
             ]; */


//===============================================================================
	var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
	var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
	var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
	var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
	var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.
	

// 마커 이미지의 이미지 주소입니다
var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 

var marker=[];	
var marker2=[];
for (var i = 0; i < positions2.length; i ++) {
    
   /*  // 마커 이미지의 이미지 크기 입니다
    var imageSize = new daum.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
     */
    // 마커를 생성합니다
    marker2.push(new daum.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions2[i].latlng, // 마커를 표시할 위치
	        title : positions2[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	       /*  image : markerImage // 마커 이미지  */
	    	}));
}
	var content2='';
	var allcont;
	var marktitle;
	var k =0;
	var index =0;
	$(".big_btn").click(function() {
		for(k=0; k<big_array.length;k++){
			if($(this).attr("data_index")==k){
				index = k;
				break;
			}
		}
		marktitle = big_array[k].big_ename;
	
		for(i=0;i<positions.length;i++){
			if(positions[i].title == marktitle){
				check = false;
				break;
			}else{
				
				check=true;
			}
		}
		
		if(check){
			 	
			
			positions.push({
				big_name:big_array[k].big_name,
		        title: big_array[k].big_ename ,
		        big_xlocation :big_array[k].big_xlocation,
		        big_ylocation :big_array[k].big_ylocation,
		        latlng: new daum.maps.LatLng(big_array[k].big_xlocation, big_array[k].big_ylocation)
		    });
			
			openNav();
			for(i=0; i<positions.length;i++){
				
				if(i>0&&i<positions.length){
					content2 += '<div class="planner_nav_inner_line">';
					content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/item_route_bg.png"></div>';
				}
				
				content2 += '<div class="planner_nav_inner nav_inner'+i+'">';
				content2 += '<div class="planner_nav_inner_box">' ;
				content2 += '<div class="planner_nav_inner_img nav_close'+i+'" data_index="'+i+'">';
				content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png"></div>';
				content2 += '<div class="planner_nav_inner_name">';
				content2 += positions[i].big_name+'</div>';
				content2 += '<div class="planner_nav_inner_day">';
				content2 += '</div></div></div>'
				
				
				
			}
				$("#planner_nav_body").html(content2);
				content2="";
			addMark();
			
		}
	});

//==============================마커 및 리스트 제거===============================
	// 이벤트 위임
	$(document).on("click", ".planner_nav_inner_img", function() {
		var index = $(this).attr("data_index");
		
		positions.splice(index,1);
		
		
		
		for(j=0;j<marker.length;j++){
			marker[j].setMap(null);
			
		}
		
			openNav();
			for(i=0; i<positions.length;i++){
				
				if(i>0&&i<positions.length){
					content2 += '<div class="planner_nav_inner_line">';
					content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/item_route_bg.png"></div>';
				}
				
				content2 += '<div class="planner_nav_inner nav_inner'+i+'">';
				content2 += '<div class="planner_nav_inner_box">' ;
				content2 += '<div class="planner_nav_inner_img nav_close'+i+'" data_index="'+i+'">';
				content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png"></div>';
				content2 += '<div class="planner_nav_inner_name">';
				content2 += positions[i].big_name+'</div>';
				content2 += '<div class="planner_nav_inner_day">';
				content2 += '</div></div></div>'
				
				
				
			}
				$("#planner_nav_body").html(content2);
				content2="";
			removeMark();
	})
	/* $(".planner_nav_inner_img").click(function() {
		
		
			
		
	}); */
	
	
/* for(a=0;a<big_array.length;a++){
	
	$("#big_btn"+a).click(function() {
		var marktitle = big_array[a].big_ename;
		alert(marktitle);
		for(i=0;i<positions.length;i++){
			if(positions[i].title == marktitle){
				positions[i].title;
				check = false;
				break;
			}else{
				
				check=true;
			}
		}
		
		if(check){
			 	
			
		positions.push({
	        title: big_array[a].big_ename ,
	        latlng: new daum.maps.LatLng(big_array[a].big_xlocation, big_array[a].big_ylocation)
	    });
		
		
		addMark();
		
		}
	})
} */


/* $("#green").click(function() {
	var marktitle = $("#green").attr("title");
	
	for(i=0;i<positions.length;i++){
		if(positions[i].title == marktitle){
			positions[i].title;
			check = false;
			break;
		}else{
			
			check=true;
		}
	}
	
	if(check){
		 	
		
	positions.push({
        title: 'green',
        latlng: new daum.maps.LatLng(33.451393, 126.570738)
    });
	
	
	addMark();
	
	}
}) */

$("#green_cancel").click(function() {
	alert("aaaaaaaaa");
	marktitle = $("#green").attr("title");
	
	for(i=0;i<positions.length;i++){
		if(positions[i].title == marktitle){
			positions.splice(i,1);
			break;
		}
	}
	for(j=0;j<marker.length;j++){
		marker[j].setMap(null);
		
	}
	removeMark();
	
});

/* 
$("#cacao").click(function() {
	marktitle = $("#cacao").attr("title");
	for(i=0;i<positions.length;i++){
		if(positions[i].title == marktitle){
			check = false;
			break;
		}else{
			check=true;
		}
	}
	if(check){
	positions.push({
        title: 'cacao', 
        latlng: new daum.maps.LatLng(33.450705, 126.570677)
    });
	addMark();
	}
})
$("#yunmot").click(function() {
	marktitle = $("#yunmot").attr("title");
	
	for(i=0;i<positions.length;i++){
		if(positions[i].title == marktitle){
			check = false;
			break;
		}else{
			check=true;
		}
	}
	if(check){
	positions.push( {
        title: 'yunmot', 
        latlng: new daum.maps.LatLng(33.450936, 126.569477)
    });
	addMark();	
	}
})
$("#batt").click(function() {
	marktitle = $("#batt").attr("title");
	for(i=0;i<positions.length;i++){
		if(positions[i].title == marktitle){
			check = false;
			break;
		}else{
			check=true;
		}
	}
	if(check){
	positions.push({
        title: 'batt', 
        latlng: new daum.maps.LatLng(33.450879, 126.569940)
    });
	addMark();	
	}
}) */

//==============================================================================================
function removeMark(){
	
	
	
	for (i = 0; i < positions.length; i ++) {
	
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new daum.maps.Size(30, 41); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    marker.push(new daum.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
       	image : markerImage // 마커 이미지
    }));
    
 // 마우스로 클릭한 위치입니다 
    var clickPosition = positions[i].latlng;

    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
    if (!drawingFlag) {

        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        drawingFlag = true;
        
        // 지도 위에 선이 표시되고 있다면 지도에서 제거합니다
        deleteClickLine();
        
        // 지도 위에 커스텀오버레이가 표시되고 있다면 지도에서 제거합니다
        deleteDistnce();

        // 지도 위에 선을 그리기 위해 클릭한 지점과 해당 지점의 거리정보가 표시되고 있다면 지도에서 제거합니다
        deleteCircleDot();
    
        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        clickLine = new daum.maps.Polyline({
            map: map, // 선을 표시할 지도입니다 
            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
            strokeWeight: 3, // 선의 두께입니다 
            strokeColor: '#db4040', // 선의 색깔입니다
            strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
            strokeStyle: 'solid' // 선의 스타일입니다
        });
        
        // 선이 그려지고 있을 때 마우스 움직임에 따라 선이 그려질 위치를 표시할 선을 생성합니다
        moveLine = new daum.maps.Polyline({
            strokeWeight: 3, // 선의 두께입니다 
            strokeColor: '#db4040', // 선의 색깔입니다
            strokeOpacity: 0.5, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
            strokeStyle: 'solid' // 선의 스타일입니다    
        });
    
        // 클릭한 지점에 대한 정보를 지도에 표시합니다
        displayCircleDot(clickPosition, 0);

            
    } else { // 선이 그려지고 있는 상태이면

        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        var path = clickLine.getPath();

        // 좌표 배열에 클릭한 위치를 추가합니다
        path.push(clickPosition);
        
        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        clickLine.setPath(path);

        var distance = Math.round(clickLine.getLength());
        displayCircleDot(clickPosition, distance);
    }


}
 // 지도 오른쪽 클릭 이벤트가 발생했는데 선을 그리고있는 상태이면
if (drawingFlag) {
    
    // 마우스무브로 그려진 선은 지도에서 제거합니다
    moveLine.setMap(null);
    moveLine = null;  
    
    // 마우스 클릭으로 그린 선의 좌표 배열을 얻어옵니다
    var path = clickLine.getPath();

    // 선을 구성하는 좌표의 개수가 2개 이상이면
    if (path.length > 1) {

        // 마지막 클릭 지점에 대한 거리 정보 커스텀 오버레이를 지웁니다
        if (dots[dots.length-1].distance) {
            dots[dots.length-1].distance.setMap(null);
            dots[dots.length-1].distance = null;    
        }

        var distance = Math.round(clickLine.getLength()), // 선의 총 거리를 계산합니다
            content = getTimeHTML(distance); // 커스텀오버레이에 추가될 내용입니다
            
        // 그려진 선의 거리정보를 지도에 표시합니다
        showDistance(content, path[path.length-1]);  
         
    } else {

        // 선을 구성하는 좌표의 개수가 1개 이하이면 
        // 지도에 표시되고 있는 선과 정보들을 지도에서 제거합니다.
        deleteClickLine();
        deleteCircleDot(); 
        deleteDistnce();

    }
    
    // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
    drawingFlag = false;          
}
    

        
}


//===============================================================================================	

function addMark(){
	
	
	for (i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new daum.maps.Size(30, 41); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
   	marker.push(new daum.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    }));
    
    
 // 마우스로 클릭한 위치입니다 
    var clickPosition = positions[i].latlng;

    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
    if (!drawingFlag) {

        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        drawingFlag = true;
        
        // 지도 위에 선이 표시되고 있다면 지도에서 제거합니다
        deleteClickLine();
        
        // 지도 위에 커스텀오버레이가 표시되고 있다면 지도에서 제거합니다
        deleteDistnce();

        // 지도 위에 선을 그리기 위해 클릭한 지점과 해당 지점의 거리정보가 표시되고 있다면 지도에서 제거합니다
        deleteCircleDot();
    
        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        clickLine = new daum.maps.Polyline({
            map: map, // 선을 표시할 지도입니다 
            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
            strokeWeight: 3, // 선의 두께입니다 
            strokeColor: '#db4040', // 선의 색깔입니다
            strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
            strokeStyle: 'solid' // 선의 스타일입니다
        });
        
        // 선이 그려지고 있을 때 마우스 움직임에 따라 선이 그려질 위치를 표시할 선을 생성합니다
        moveLine = new daum.maps.Polyline({
            strokeWeight: 3, // 선의 두께입니다 
            strokeColor: '#db4040', // 선의 색깔입니다
            strokeOpacity: 0.5, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
            strokeStyle: 'solid' // 선의 스타일입니다    
        });
    
        // 클릭한 지점에 대한 정보를 지도에 표시합니다
        displayCircleDot(clickPosition, 0);

            
    } else { // 선이 그려지고 있는 상태이면

        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        var path = clickLine.getPath();

        // 좌표 배열에 클릭한 위치를 추가합니다
        path.push(clickPosition);
        
        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        clickLine.setPath(path);

        var distance = Math.round(clickLine.getLength());
        displayCircleDot(clickPosition, distance);
    }


}
 // 지도 오른쪽 클릭 이벤트가 발생했는데 선을 그리고있는 상태이면
if (drawingFlag) {
    
    // 마우스무브로 그려진 선은 지도에서 제거합니다
    moveLine.setMap(null);
    moveLine = null;  
    
    // 마우스 클릭으로 그린 선의 좌표 배열을 얻어옵니다
    var path = clickLine.getPath();

    // 선을 구성하는 좌표의 개수가 2개 이상이면
    if (path.length > 1) {

        // 마지막 클릭 지점에 대한 거리 정보 커스텀 오버레이를 지웁니다
        if (dots[dots.length-1].distance) {
            dots[dots.length-1].distance.setMap(null);
            dots[dots.length-1].distance = null;    
        }

        var distance = Math.round(clickLine.getLength()), // 선의 총 거리를 계산합니다
            content = getTimeHTML(distance); // 커스텀오버레이에 추가될 내용입니다
            
        // 그려진 선의 거리정보를 지도에 표시합니다
        showDistance(content, path[path.length-1]);  
         
    } else {

        // 선을 구성하는 좌표의 개수가 1개 이하이면 
        // 지도에 표시되고 있는 선과 정보들을 지도에서 제거합니다.
        deleteClickLine();
        deleteCircleDot(); 
        deleteDistnce();

    }
    
    // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
    drawingFlag = false;          
}
    

        
}

	


//==================거리 측정 ======================================================================



//지도에 클릭 이벤트를 등록합니다
//지도를 클릭하면 선 그리기가 시작됩니다 그려진 선이 있으면 지우고 다시 그립니다




//지도에 마우스 오른쪽 클릭 이벤트를 등록합니다
//선을 그리고있는 상태에서 마우스 오른쪽 클릭 이벤트가 발생하면 선 그리기를 종료합니다


//클릭으로 그려진 선을 지도에서 제거하는 함수입니다
function deleteClickLine() {
if (clickLine) {
    clickLine.setMap(null);    
    clickLine = null;        
}
}

//마우스 드래그로 그려지고 있는 선의 총거리 정보를 표시하거
//마우스 오른쪽 클릭으로 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 생성하고 지도에 표시하는 함수입니다
function showDistance(content, position) {

if (distanceOverlay) { // 커스텀오버레이가 생성된 상태이면
    
    // 커스텀 오버레이의 위치와 표시할 내용을 설정합니다
    distanceOverlay.setPosition(position);
    distanceOverlay.setContent(content);
    
} else { // 커스텀 오버레이가 생성되지 않은 상태이면
    
    // 커스텀 오버레이를 생성하고 지도에 표시합니다
    distanceOverlay = new daum.maps.CustomOverlay({
        map: map, // 커스텀오버레이를 표시할 지도입니다
        content: content,  // 커스텀오버레이에 표시할 내용입니다
        position: position, // 커스텀오버레이를 표시할 위치입니다.
        xAnchor: 0,
        yAnchor: 0,
        zIndex: 3  
    });      
}
}

//그려지고 있는 선의 총거리 정보와 
//선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 삭제하는 함수입니다
function deleteDistnce () {
if (distanceOverlay) {
    distanceOverlay.setMap(null);
    distanceOverlay = null;
}
}

//선이 그려지고 있는 상태일 때 지도를 클릭하면 호출하여 
//클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 표출하는 함수입니다
function displayCircleDot(position, distance) {

// 클릭 지점을 표시할 빨간 동그라미 커스텀오버레이를 생성합니다
var circleOverlay = new daum.maps.CustomOverlay({
    content: '<span class="dot"></span>',
    position: position,
    zIndex: 1
});

// 지도에 표시합니다
circleOverlay.setMap(map);

if (distance > 0) {
    // 클릭한 지점까지의 그려진 선의 총 거리를 표시할 커스텀 오버레이를 생성합니다
    	if(distance>1000){
	    var distanceOverlay = new daum.maps.CustomOverlay({
	    		content: '<div class="dotOverlay">거리 <span class="number">' + (distance*0.001).toPrecision(6) + '</span>km</div>',
	    		position: position,
	    	    yAnchor: 1,
	    	    zIndex: 2
	    });
    	}else{
    		var distanceOverlay = new daum.maps.CustomOverlay({
	        content: '<div class="dotOverlay">거리 <span class="number">' + distance + '</span>m</div>',
	        position: position,
	        yAnchor: 1,
	        zIndex: 2
    		});
    	}
       

    // 지도에 표시합니다
    distanceOverlay.setMap(map);
}

// 배열에 추가합니다
dots.push({circle:circleOverlay, distance: distanceOverlay});
}

//클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 지도에서 모두 제거하는 함수입니다
function deleteCircleDot() {
var i;

for ( i = 0; i < dots.length; i++ ){
    if (dots[i].circle) { 
        dots[i].circle.setMap(null);
    }

    if (dots[i].distance) {
        dots[i].distance.setMap(null);
    }
}

dots = [];
}

//마우스 우클릭 하여 선 그리기가 종료됐을 때 호출하여 
//그려진 선의 총거리 정보와 거리에 대한 도보, 자전거 시간을 계산하여
//HTML Content를 만들어 리턴하는 함수입니다
function getTimeHTML(distance) {

// 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
var walkkTime = distance / 67 | 0;
var walkHour = '', walkMin = '';

// 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
if (walkkTime > 60) {
    walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>시간 '
}
walkMin = '<span class="number">' + walkkTime % 60 + '</span>분'

// 자전거의 평균 시속은 16km/h 이고 이것을 기준으로 자전거의 분속은 267m/min입니다
var bycicleTime = distance / 227 | 0;
var bycicleHour = '', bycicleMin = '';

// 계산한 자전거 시간이 60분 보다 크면 시간으로 표출합니다
if (bycicleTime > 60) {
    bycicleHour = '<span class="number">' + Math.floor(bycicleTime / 60) + '</span>시간 '
}
bycicleMin = '<span class="number">' + bycicleTime % 60 + '</span>분'

// 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
var content = '<div style="background-color: white;color : black"><ul class="dotOverlay distanceInfo">';
content += '    <li>';
if(distance>1000){
content += '        <span class="label">총거리 : </span><span class="number">' + (distance*0.001).toPrecision(6) + '</span>km';
}else{
	content += '        <span class="label">총거리 : </span><span class="number">' + distance + '</span>m';	
}

content += '    </li>';
content += '    <li>';
content += '        <span class="label">도보 : </span>' + walkHour + walkMin;
content += '    </li>';
content += '    <li>';
content += '        <span class="label">자전거 : </span>' + bycicleHour + bycicleMin;
content += '    </li>';
content += '</ul></div>'

return content;
}


// datepicker
$("#datepicker").datepicker(
				{
					inline : true,
					dateFormat : "yy-mm-dd", /* 날짜 포맷 */
					prevText : 'prev',
					nextText : 'next',
					changeMonth : true, /* 월 선택박스 사용 */
					changeYear : true, /* 년 선택박스 사용 */
					showOtherMonths : true, /* 이전/다음 달 일수 보이기 */
					selectOtherMonths : true, /* 이전/다음 달 일 선택하기 */
					buttonImageOnly : true,
					minDate : 0,
					closeText : '닫기',
					currentText : '오늘',
					showMonthAfterYear : true, /* 년과 달의 위치 바꾸기 */
					/* 한글화 */
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					showAnim : 'slideDown',
					/* 날짜 유효성 체크 */
					onClose: function(selectedDate) {
						$('#fromDate').datepicker("option", "minDate",
								selectedDate);
					}
				});

});
//=======================================================================================

// map planner show
function openNav() {
    document.getElementById("mySidenav").style.width = "350px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
</head>
<body>
<!-- header -->
<%@ include file="/WEB-INF/views/temp/header.jspf" %>
<!-- section -->
<div id="plan_select_city">
	<div id="pselect_city_header">
		<div id="pselect_city_img"><img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png"></div>
		<div id="pselect_city_title">대한민국</div>
	</div>
	
	<div id="pselect_city_body">
	
		<input class="big_List" type="hidden" value="${bigCity.size() }">
	<c:forEach items="${bigCity}" var="bigList" varStatus="i">
		
		<input class="big_name${i.index}" type="hidden" value="${bigList.big_name }">
		<input class="big_ename${i.index}" type="hidden" value="${bigList.big_ename }">
		<input class="big_xlocation${i.index}" type="hidden" value="${bigList.big_xlocation }">
		<input class="big_ylocation${i.index}" type="hidden" value="${bigList.big_ylocation }">
		
		<div class="pselect_city_inner">
			<div class="pcity_inner_box">
				<div class="pcity_inner_img">
					<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
				</div>
				<div class="pcity_inner_name">
					<div class="pcity_inner_kname">
					${bigList.big_name }
					</div>
					<div class="pcity_inner_ename">
					${bigList.big_ename }
				</div>
				</div>
				<div class="pcity_inner_addbtn big_btn" id="big_btn${i.index}" data_index="${i.index}">
					<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
				</div>
				<div class="clear"></div>
			</div>	
		</div>
	
	</c:forEach>
		
	</div>
</div>



<div id="map_inner">
	
	<div id="map">
		<div id="mySidenav" class="sidenav">
		 <!--  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">X</a> -->
		  <div id="planner_nav_header">
		  	<div id="planner_nav_title">여행도시</div>
		  	<div id="planner_nav_date" >
		  		<input class="box pri" type="text" name="start_day" readonly="readonly" id="datepicker" value="출발일">
		  	</div>
		  	<div class="clear"></div>
		  </div>
		  <div id="planner_nav_body">
		  	
				<%-- <div class="planner_nav_inner nav_inner${i2.index }">
					<div class="planner_nav_inner_box">
						<div class="planner_nav_inner_img nav_close${i2.index }">
							<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png">
						</div>
						<div class="planner_nav_inner_name">
							
						</div>
						<div class="planner_nav_inner_day">
							
						</div>
					</div>	
				</div> --%>
			
		  </div>
		  <div id="planner_nav_btn">
		  	<div id="planner_nav_btn_go">상세 일정 만들기</div>
		  </div>
		</div>
	</div>
</div>
<!-- <div style="cursor: pointer;" title="green" id="green">근린공원</div>
<div style="cursor: pointer;" id="green_cancel">cancel</div>
<div style="cursor: pointer;" title="cacao" id="cacao">카카오</div>
<div style="cursor: pointer;" title="yunmot" id="yunmot">생태연못</div>
<div style="cursor: pointer;" title="batt" id="batt">터밭</div> -->


</body>
</html>
