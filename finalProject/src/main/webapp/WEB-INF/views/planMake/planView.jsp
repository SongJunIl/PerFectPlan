<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<%@ include file="/WEB-INF/views/temp/script.jspf" %>
<style type="text/css">
	.all_page{
		width: 1092px;
		margin: 0 auto;
	}
	.plan_view_header{
		width: 100%;
		height: 350px;
		color: window;
		border: 1px solid #c8c8ca;
	}
	.plan_view_mem{
		float: left;
		margin-left: 30px;
		margin-top: 160px;
	}
	.paln_mem_profile{
		float: left;
		width: 45px;
		height: 45px;
		border-radius:100px;
		background-color: white;
	}
	.paln_mem_name{
		float: left;
		height: 40px;
		font-size: 25px;
		font-weight: bold;
		line-height: 40px;
		margin-left: 15px;
	}
	.plan_view_jim{
		width: 45px;
		height: 45px;
		border-radius:100px;
		background-color: white;
		float: right;
		margin-top: 15px;
		margin-right: 15px;
	}
	.clear{
		clear: both;
	}
	.plan_view_inner{
		margin-left: 30px;
		margin-top: 10px;
		width: 800px;
		float: left;
	}
	.plan_title{
		font-weight: bolder;
		font-size: 30px;
		width: 520px;
	}
	.plan_date_thema{
		margin-top: 5px;
		width: 520px;
	}
	.plan_date{
		float: left;
	}
	.thema{
		float: left;
		margin-left: 20px;
		background-color: gray;
		color: white;
		border-radius :6px; 
		width: 70px;
		text-align: center;
		
		
	}
	.plan_loc_co_jim_box{
		margin-top:5px;
		width: 520px;
	}
	.plan_loc_co_jim_inner{
		border: white 1px solid;
		width: 180px;
		height: 30px;
	}
	.plan_loc_inner{
		margin-top:3px;
		margin-left:14px;
		float: left;
	}
	.plan_co_inner{
		margin-top:3px;
		margin-left:14px;
		float: left;
	
	}
	.plan_jim_inner{
		margin-top:3px;
		margin-left:14px;
		float: left;
	
	}
	.plan_view_body{
		width: 1092px;
		/* margin-top: 30px; */
		height: 125px;
		
	}
	.plan_view_body_dailyplan{
		float:left;
		width: 720px;
		border: 1px solid #c8c8ca;
		margin-bottom: 100px;
	}
	.plan_view_body_day{
		float: left;
		width: 110px;
		height: 60px;
		background-color: #203341;
		color: white;
		font-size: 25px;
		font-weight: bolder;
		text-align: center;
		line-height: 60px;
	}
	.plan_view_body_title{
		height: 60px;
		float: left;
		border-bottom: 1px solid #c8c8ca;
		width: 608px;
	}
	.plan_view_body_title_date{
		margin-top: 5px;
		margin-left: 15px;
	}
	.plan_view_body_title_city_name{
		font-size: 20px;
		font-weight: bold;
		margin-left: 15px;
	}
	
	.plan_daily_num{
		float: left;
		width: 30px;
		height: 30px;
		list-style:30px;
		text-align: center;
		background-color: #555555;
		border-radius:100px;
		font-size: 20px;
		font-weight: bold;
		color: white; 
		margin-left: 30px;
		margin-top: 30px;
	}
	.plan_daily_spot_img{
		float: left;
		margin-left: 30px;
	}
	.plan_daily_spot_img img{
		width: 70px;
		height: 70px;
	}
	.plan_daily_spot{
		float: left;
		width: 605px;
		padding-top: 15px;
	}
	.plan_daily_spot_box{
		float: left;
	}
	.plan_daily_spot_content{
		float: left;
		width: 425px;
		height:60px;
		margin-left: 15px;
		
		
	}
	.plan_daily_spot_name{
		width: 415px;
		margin-bottom: 5px;
	}
	.plan_daily_spot_thema{
		width:80px;
		padding: 0 10px;
		border: 1px solid #cccccc;
		background-color: #f5f5f5;
		border-radius: 4px;
		
		
	}
	.plan_daily_spot_info{
		float: right;
		margin-top: 15px;
	}
	.plan_view_body_dailyplan_inner{
		height: 120px;
		
	}
	.plan_view_body_dailyplan_dotdash{
		border-top: 1px solid #c8c8ca;
		border-bottom: 1px solid #c8c8ca;
		height: 35px;
		text-align: center;
	}
	#map{
		float:right;
		width: 345px;
		height: 500px;
		
	}
	/* #map img{
		width: 345px !important;
		height: 500px !important;
		left: 0 !important;
		top: 0 !important;
	} */
	.rigth_map{
		position:fixed;
		right:405px;
		float:right;
		width: 345px;
		height: 500px;
		background-color: black;
	}
	
	.plan_reply_box{
		float:left;
		width: 720px;
		border: 1px solid #c8c8ca;
		margin-bottom: 100px;
		overflow: hidden !important;
		padding-top: 15px;
	}
	.plan_reply_box span{
		font-size: 15px;
		margin-left: 20px;
		font-weight: bold;
	}
	.writer_img{
		float:left;
		width: 45px;
		height: 45px;
		
		margin-left: 20px;
		
		margin-top: 30px;
	}
	.writer_img img{
		border: 1px solid gray;
		border-radius:100px; 
	}
	.reply_content{
		float: left;
		margin-left: 40px;
		margin-top: 20px;
	}
	.reply_submit_btn{
		float: left;
		margin-left: 10px;
		margin-top: 20px;
		font-size: 15px;
		font-weight: bolder;
		background-color: #ff9320;
		width: 60px;
		height: 30px;
		color: white;
		text-align: center;
		padding-top: 4px;
		cursor: pointer;
	}
	.reply_write{
		width:685px;
		height: 110px;
		background-color: #F4F4F4;
		margin: 10px auto;
		
	}
	.reply_list{
		width: 685px;
		height: 125px;
		border-top:  0.1ex solid #c8c8ca;
		margin: 0 auto;
		padding: 20px 0;
	}
	.reply_list_writer_img{
		float: left;
	}
	.plan_daily_spot_box{
		float: right;
	}
	.reply_list_writer{
		float: left;
		margin-right: 20px;
		
	}
	.reply_list_date{
		float: left;
	}
	.reply_del{
		float: right;
		margin-left: 20px;
		cursor: pointer;
	}
	.reply_update{
		float: right;
	}
	.reply_list_up_box{
		float: right;
		width: 620px;
		margin-right: 10px;
	}
	.reply_list_down_box{
		float: right;
		width: 620px;
		margin-right: 10px;
		margin-top: 10px;
	}
	.plan_update{
		float: right;
		width: 150px;
		height: 40px;
		border-radius:8px;
		background-color: #ff9320;
		text-align: center;
		margin-top: 85px;
		margin-right: 20px;
		font-size: 15px;
		font-weight: bolder;
		line-height: 40px;
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

.label2 {margin-bottom: 105px !important;}
.label2 * {display: inline-block;vertical-align: top;color: black;}
.label2 .left {background: url("http://i1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_l.png") no-repeat;display: inline-block;height: 24px;overflow: hidden;vertical-align: top;width: 7px;}
.label2 .center {background: url(http://i1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_bg.png) repeat-x;display: inline-block;height: 24px;font-size: 12px;line-height: 24px;}
.label2 .right {background: url("http://i1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_r.png") -1px 0  no-repeat;display: inline-block;height: 24px;overflow: hidden;width: 6px;}

</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=c13f7a56e3fd7a30f74913f2574d70f1"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


  <style>
  body {
      position: relative;
  }
  #section1 {padding-top:50px;height:500px;color: #fff; background-color: #1E88E5;}
  #section2 {padding-top:50px;height:500px;color: #fff; background-color: #673ab7;}
  #section3 {padding-top:50px;height:500px;color: #fff; background-color: #ff9800;}
  #section41 {padding-top:50px;height:500px;color: #fff; background-color: #00bcd4;}
  #section42 {padding-top:50px;height:500px;color: #fff; background-color: #009688;}
  #myNavbar{
  	width: 200px;
  	height: 700px;
  }
  #nav_li li{
  	width: 120px;
  	clear: both !important;
  	font-weight: bolder;
  	margin-left: 25px;
  }
  #navbar_body{
  	position:fixed;
 	width: 200px;
  	margin-top: 88px;
  	margin-left:200px;
  }
  
  
.tab {
    width:200px;
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    margin-top: 30px;
   
}

/* Float the list items side by side */
.tab li {
    float: left;
    border: 1px solid #ccc;
    border-top-left-radius:8px;
    border-top-right-radius:8px;
    width: 100px;
    text-align: center;
}

/* Style the links inside the list items */
.tab li a {
	width: 100px;
    display: inline-block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of links on hover */
.tab li a:hover{
    background-color: #ddd;
    width: 100px;
    border-top-left-radius:8px;
    border-top-right-radius:8px;
}

#plan_tab a:hover{
    background-color: #ddd;
    width: 100px;
    border-top-left-radius:8px;
    border-top-right-radius:8px;
}

/* Create an active/current tablink class */
.tab li a:focus, .active {
    background-color: #ccc;
     width: 100px;
     border-top-left-radius:8px;
    border-top-right-radius:8px;
}

/* Style the tab content */
.tabcontent {
    -webkit-animation: fadeEffect 1s;
    animation: fadeEffect 1s;
}

/* @-webkit-keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}

@keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
} */
  
  </style>
 <script>

$(function() {
	
	    $('.rigth_map').css('position', 'absolute');
	    $(window).scroll(function() {
	        var sclTop = $(this).scrollTop();
	        if (sclTop > 465)
	        {
	            $('.rigth_map').css('position', 'fixed').css('top', '8px');        
	        }
	        else 
	        {$('.rigth_map').css('position','absolute').css('top','514px').css('right','405px');}
	    });
	
	var big_length = $(".big_List").val();
	var big_array =[];
	for(var a=0;a<big_length;a++){
		big_array.push({
            big_name: $(".big_name"+a).val(), 
            big_ename: $(".big_ename"+a).val(),
            big_no : $(".big_no"+a).val(),
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
var positions = []; // 선택 도시 위치
var positions2 = []; // 대도시 위치
var positions3=[]; // 소도시 위치
var j=0;
var i=0;
var check = true;

/* for(a=0;a<big_array.length;a++){
	positions2.push({
			big_day : 2,
			big_name:big_array[a].big_name,
			big_no : big_array[a].big_no,
            title: big_array[a].big_ename,
            big_xlocation :big_array[a].big_xlocation,
	        big_ylocation :big_array[a].big_ylocation,
            latlng: new daum.maps.LatLng(big_array[a].big_xlocation, big_array[a].big_ylocation)
	});	
	
} */




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
var marker3=[];
//for (var i = 0; i < positions2.length; i ++) {
    
   /*  // 마커 이미지의 이미지 크기 입니다
    var imageSize = new daum.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
     */
    // 마커를 생성합니다
//    marker2.push(new daum.maps.Marker({
//	        map: map, // 마커를 표시할 지도
//	        position: positions2[i].latlng, // 마커를 표시할 위치
//	        title : positions2[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
//	       /*  image : markerImage // 마커 이미지  */
//	    	}));
//}
	var content2='';
	var content3='';
	var allcont;
	var marktitle;
	var k =0;
	var index =0;
	var city_array =[];
	//선택된 지역 지도에 다른마커로 표시하기
	var data_kind ="";
	/* $(".big_btn").click(function() {
		data_kind= $(this).attr("data-kind");
		
		if(data_kind != 'city'){
			map.setCenter(new daum.maps.LatLng(36.3666102, 127.8783881)); // 지도의 중심좌표
			map.setLevel(13); // 지도의 확대 레벨
			
			for(i=0;i<big_array.length;i++){
			    $(".window_check"+i).slideUp();			
			}
			
			for(j=0;j<marker2.length;j++){
				marker2[j].setMap(map);
				
		 	}
			
			for(j=0;j<marker3.length;j++){
				marker3[j].setMap(null);
				
		 	}
		}
		
		
		if(data_kind == 'city'){
			
			for(k=0; k<city_array.length;k++){
				if($(this).attr("data-index")==k){
					index = k;
					break;
				}
			}
			marktitle = city_array[index].city_ename;
			
		}else{
			
			for(k=0; k<big_array.length;k++){
				if($(this).attr("data-index")==k){
					index = k;
					break;
				}
			}
			marktitle = big_array[index].big_ename;
		}
		
		
	
		for(i=0;i<positions.length;i++){
			if(positions[i].title == marktitle){
				check = false;
				break;
			}else{
				
				check=true;
			}
		}
		
		if(check){
			 	
			if(data_kind == 'big'){
				positions.push({
					day : 2,
					name:big_array[index].big_name,
			        title: big_array[index].big_ename ,
			        no:big_array[index].big_no,
			        xlocation :big_array[index].big_xlocation,
			        ylocation :big_array[index].big_ylocation,
			        latlng: new daum.maps.LatLng(big_array[index].big_xlocation, big_array[index].big_ylocation)
			    });
			}else{
					positions.push({
					day : 2,
					name: city_array[index].city_name,
			        title:  city_array[index].city_ename ,
			        no : city_array[index].city_no,
			        xlocation : city_array[index].city_xlocation,
			        ylocation : city_array[index].city_ylocation,
			        latlng: new daum.maps.LatLng(city_array[index].city_xlocation, city_array[index].city_ylocation)
			    });
				
				
			}
			openNav();
			for(i=0; i<positions.length;i++){
				
				if(i>0 && i<positions.length){
					content2 += '<div class="planner_nav_inner_line">';
					content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/item_route_bg.png"></div>';
				}
				
				content2 += '<div class="planner_nav_inner nav_inner'+i+'">';
				content2 += '<div class="planner_nav_inner_box">' ;
				content2 += '<div class="planner_nav_inner_img nav_close'+i+'" data-index="'+i+'">';
				content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png"></div>';
				content2 += '<div class="planner_nav_inner_name">';
				
				content2 += positions[i].name+'</div>';
				content2 += '<div class="planner_nav_inner_day">';
				content2 += '<div class="plan_date_minur" data-index="'+i+'"><img src="${pageContext.request.contextPath}/resources/img/plan/city_item_minus_btn.png"></div>';
				
				content2 += '<div class="plan_date_inner"><span id="plan_date'+i+'">'+positions[i].day+'</span>일</div>'
				content2 += '<div class="plan_date_plus" data-index="'+i+'"><img src="${pageContext.request.contextPath}/resources/img/plan/city_item_plus_btn.png"></div>';
				content2 += '</div></div></div>'
				
			}
		
			
			
				$("#planner_nav_body").html(content2);
				content2="";
			addMark();
			
		}
	}); */

//==============================마커 및 리스트 제거===============================
	// 이벤트 위임
	/* $(document).on("click", ".planner_nav_inner_img", function() {
		var index = $(this).attr("data-index");
		
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
				content2 += '<div class="planner_nav_inner_img nav_close'+i+'" data-index="'+i+'">';
				content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png"></div>';
				content2 += '<div class="planner_nav_inner_name">';
				
				content2 += positions[i].name+'</div>';
				content2 += '<div class="planner_nav_inner_day">';
				content2 += '<div class="plan_date_minur" data-index="'+i+'"><img src="${pageContext.request.contextPath}/resources/img/plan/city_item_minus_btn.png"></div>';
				
				content2 += '<div class="plan_date_inner"><span id="plan_date'+i+'">'+positions[i].day+'</span>일</div>'
				content2 += '<div class="plan_date_plus" data-index="'+i+'"><img src="${pageContext.request.contextPath}/resources/img/plan/city_item_plus_btn.png"></div>';
				content2 += '</div></div></div>'
				
				
				
			}
			
			if(i==0){
				closeNav();
			}
			
				$("#planner_nav_body").html(content2);
				content2="";
			removeMark();
	}) */
	
	
//================================날짜 증감======================================
	$(document).on("click", ".plan_date_minur", function() {
		var day_count = $(this).attr("data-index");
		var day_default = positions[day_count].day;
		if(day_default>1){
			
			positions[day_count].day= parseInt(day_default)-1;
			$("#plan_date"+day_count).html(positions[day_count].day);
		}
		
	});
	$(document).on("click", ".plan_date_plus", function() {
		day_count = $(this).attr("data-index");
		day_default = positions[day_count].day;
		if(day_default>0){
			
			positions[day_count].day= parseInt(day_default)+1;
			$("#plan_date"+day_count).html(positions[day_count].day);
		}
		
	});
	


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
var customOverlay=[];
function addMark(){
	marker=[];
	
	
	for (var q = 0; q < positions.length; q ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    imageSize = new daum.maps.Size(30, 41); 
    
    // 마커 이미지를 생성합니다    
    markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    
   	marker.push(new daum.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[q].latlng, // 마커를 표시할 위치
        title : positions[q].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    }));
   	
 // 마우스로 클릭한 위치입니다 
    clickPosition = positions[q].latlng;

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

       /*  var distance = Math.round(clickLine.getLength()); */
        /* displayCircleDot(clickPosition, distance); */
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
            
       /*  // 그려진 선의 거리정보를 지도에 표시합니다
        showDistance(content, path[path.length-1]); */  
         
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


// =====================================================datepicker
			
		
	//========================== 광역시,특별시 제외 포인터 css===============================			
	for(i=0;i<big_array.length;i++){
		if(i>7){			
			$(".inner_box_chech"+i).css("cursor","pointer");
		}
	}
	//========================== 도내 주요 시 보여주기====================================
	var box_index_check=0;
	$(".pcity_inner_box").click(function(){
		var box_index = $(this).attr("data-index");
		if(box_index>7){
			
			
			for(i=0;i<big_array.length;i++){
			    $(".window_check"+i).slideUp();			
			}
			if(box_index_check != box_index){
			 $(".window_check"+box_index).slideDown();
			 for(j=0;j<marker2.length;j++){
					marker2[j].setMap(null);
					
			 }
			 for(j=0;j<marker3.length;j++){
					marker3[j].setMap(null);
					
			 }
			
			 map.setCenter(new daum.maps.LatLng(big_array[box_index].big_xlocation, big_array[box_index].big_ylocation)); // 지도의 중심좌표 */
			 map.setLevel(11); // 지도의 확대 레벨
			 
			 
			 
			 var city_length = $(".city_List"+box_index).val();
			
			 	city_array.splice(0,city_array.length);
				for(var a=0;a<city_length;a++){
					city_array.push({
						city_name: $(".window_check"+box_index+" .city_name"+a).val(), 
						city_ename: $(".window_check"+box_index+" .e_name"+a).val(), 
						city_no: $(".window_check"+box_index+" .city_no"+a).val(), 
						city_xlocation: $(".window_check"+box_index+" .city_xlocation"+a).val(),
						city_ylocation: $(".window_check"+box_index+" .city_ylocation"+a).val()
			        })
				}
				positions3.splice(0,positions3.length);
			 	for(a=0;a<city_array.length;a++){
					positions3.push({
							city_day : 2,
							city_name:city_array[a].city_name,
				            title: city_array[a].city_ename,
				            no: city_array[a].city_no,
				            city_xlocation :city_array[a].city_xlocation,
				            city_ylocation :city_array[a].city_ylocation,
				            latlng: new daum.maps.LatLng(city_array[a].city_xlocation, city_array[a].city_ylocation)
					});	
					
				}
			 	marker3.splice(0,marker3.length);
			 	for (var i = 0; i < positions3.length; i ++) {
			 	    
			 	    // 마커를 생성합니다
			 	    marker3.push(new daum.maps.Marker({
			 		        map: map, // 마커를 표시할 지도
			 		        position: positions3[i].latlng, // 마커를 표시할 위치
			 		        title : positions3[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
			 		    	}));
			 	}
			 	
			 	
				
			 	
			 
			 box_index_check=box_index;
			}else if(box_index_check == box_index){
				box_index_check=0;
				for(j=0;j<marker2.length;j++){
					marker2[j].setMap(map);
					
			 	}
				for(j=0;j<marker3.length;j++){
					marker3[j].setMap(null);
					
			 	}
				
				map.setCenter(new daum.maps.LatLng(36.3666102, 127.8783881)); // 지도의 중심좌표 */
				 map.setLevel(13); // 지도의 확대 레벨
			}
		}
	});	
	//================================submit 보내기 ====================================
	$("#mySidenav").on('click',"#planner_nav_btn_go",function(){
		for(i=0; i<positions.length;i++){
			if(i<1){	
				content3 += positions[i].title+","+positions[i].xlocation+","+positions[i].ylocation+","+positions[i].day+","+positions[i].no;		
			}else{
				content3 += ","+positions[i].title+","+positions[i].xlocation+","+positions[i].ylocation+","+positions[i].day+","+positions[i].no;		
			}	
			
		} 
		
			$("#all_positions").val(content3);
			if($("#datepicker").val() != ''){
			
				$("#frm").submit();
			}else {
				alert("출발날짜를 선택하여 주세요.");
				content3 ="";
				return false;
			}
			
	});
	
	$(document).on('click',".nav_menu",function(){
		positions=[];
		var day_index = $(this).attr("data-index");
		for(j=0;j<marker.length;j++){
			marker[j].setMap(null);
			
	 	}
		for(j=0;j<customOverlay.length;j++){
			customOverlay[j].setMap(null);
			
		}
		customOverlay=[];
		var spot_list_length = $(".spot_list_size"+day_index).val();
		for(i=0;i<spot_list_length;i++){
			positions.push({
				spot_name : $(".spot_name"+day_index+"_"+i).val(),
	            title: $(".spot_name"+day_index+"_"+i).val(),
	            xlocation :$(".spot_xlocation"+day_index+"_"+i).val(),
		        ylocation :$(".spot_ylocation"+day_index+"_"+i).val(),
	            latlng: new daum.maps.LatLng($(".spot_xlocation"+day_index+"_"+i).val(), $(".spot_ylocation"+day_index+"_"+i).val())
				
			});
		}	
		
		map.setCenter(new daum.maps.LatLng($(".daily_xlocation"+day_index).val(), $(".daily_ylocation"+day_index).val())); // 지도의 중심좌표 */
		map.setLevel(10); // 지도의 확대 레벨
		 addMark();
		
		for(i=0;i<positions.length;i++){
			content = '<div class ="label2"><span class="left"></span><span class="center">'+positions[i].title+'</span><span class="right"></span></div>';
		   	customOverlay.push(new daum.maps.CustomOverlay({
		   	    position: positions[i].latlng,
		   	    content: content   
		   	}));
		 // 커스텀 오버레이를 지도에 표시합니다
			 customOverlay[i].setMap(map);
		}
		
	});
	
	// plan 댓글 ajax로 insert 시키기
	$(".reply_submit_btn").click(function() {
		
			$.ajax({
				url:"./planReplyWrite",
				type:"POST",
				data:{
					p_no :$("#plan_no").val(),
					id:$("#id").val(),
					contents :$("#content").val()
				},
				success: function(data) {
					$(".reply_content_list").append(data);
					$("#content").val("");
				}
			
			});
			
		
	});
	//plan 댓글 삭제
	$(document).on('click','.reply_del',function(){
		var index = $(this).attr("data-index");
		if (confirm("댓글을 삭제하시겠습니까??") == true){    //확인
		    $.ajax({
		    	url:"planDelete",
		    	type:"POST",
		    	data:{
		    		id:$("#id").val(),
		    		p_no:$("#plan_no").val(),
		    		no:$("#reply_no"+index).val()
		    	},
		    	success: function(data) {
					
					$(".reply_content_list").html("");
					$(".reply_content_list").html(data);
				}
		    	
		    });
		}else{   //취소
		    return false;
		}
	}); 
	
	//plan 댓글 삭제(ajax하고 바로삭제)
	$(document).on('click','#reply_del',function(){
		
		if (confirm("댓글을 삭제하시겠습니까??") == true){    //확인
		    $.ajax({
		    	url:"planDelete",
		    	type:"POST",
		    	data:{
		    		id:$("#id").val(),
		    		p_no:$("#plan_no").val(),
		    		no:$("#reply_no").val()
		    	},
		    	success: function(data) {
					
					$(".reply_content_list").html("");
					$(".reply_content_list").html(data);
				}
		    	
		    });
		}else{   //취소
		    return false;
		}
	}); 
	
	$("#paln_reply2").css("display","none");
	
	//update 버튼
	$(".plan_update").click(function() {
		location.href= "plannerUpdate?plan_no="+$("#plan_no").val();
	});
	
});
//=======================================================================================
//tab script
function openCity(evt, cityName) {
	
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
} 

// map planner show
function openNav() {
    document.getElementById("mySidenav").style.width = "350px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="87">
<!-- header -->
 <%@ include file="/WEB-INF/views/temp/header.jspf" %>
<!-- section -->
	<div class="all_page">
	<!-- scroll spy -->
	<nav class="navbar navbar-inverse navbar-fixed-top" id="navbar_body">
	  <div class="container-fluid">
	  <!--   <div class="navbar-header">
	       
	      <a class="navbar-brand" href="#">WebSiteName</a>
	    </div> -->
	    <div>
	      <div class="collapse navbar-collapse" id="myNavbar">
	        <input type="hidden" value="${day_plan[0].plan_no }" id="plan_no">
	        <ul class="nav navbar-nav" id="nav_li">
	        <c:forEach items="${day_plan }" varStatus="i" var="day_plan_li">
	          <li class="nav_menu" data-index="${i.index }"><a href="#day${i.index+1 }">DAY${i.index+1 } - ${day_plan_li.city_name}</a></li>	        
	        </c:forEach>
	        </ul>
	      </div>
	    </div>
	  </div>
	</nav>
		<div class="plan_view_header" style="background-color: black;">
			<div class="plan_view_mem">
				<div class="paln_mem_profile">
					<img src="${pageContext.request.contextPath}/resources/img/plan/btn_like.png">
				</div>
				<div class="paln_mem_name">
					${member.name }
				</div>
			</div>
			<div class="plan_view_jim">
				<img src="${pageContext.request.contextPath}/resources/img/plan/btn_like.png">
			</div>
			<div class="clear"></div>
			<div class="plan_view_inner">
				<div class="plan_title">
					${planDTO.plan_name }
				</div>
				<div class="plan_date_thema">				
					<div class="plan_date">
						${planDTO.s_date } ~ ${planDTO.f_date } (${day_plan.size()}일)
					</div>
					<div class="thema">
						<c:choose>
							<c:when test="${planDTO.thema == 1 }">가족 여행</c:when>
							<c:when test="${planDTO.thema == 2 }">친구 여행</c:when>
							<c:when test="${planDTO.thema == 3 }">연인 여행</c:when>
							<c:otherwise>나홀로 여행</c:otherwise>
						</c:choose>
						
					</div>
					<div class="clear"></div>
				</div>
				<div class="plan_loc_co_jim_box">
					<div class="plan_loc_co_jim_inner">
						<div class="plan_loc_inner">
							<img src="${pageContext.request.contextPath}/resources/img/plan/cnt_spot.png"> ${day_spot.size()}
						</div>
						<div class="plan_co_inner">
							<img src="${pageContext.request.contextPath}/resources/img/plan/cnt_view.png"> ${planDTO.counts }						
						</div>
						<div class="plan_jim_inner">
							<img src="${pageContext.request.contextPath}/resources/img/plan/cnt_copy.png"> 10
						</div>
						
						<div class="clear"></div>
					</div>
				</div>
			</div>
			<div class="plan_update">
				수정하기
			</div>
			
			<div class="clear"></div>
		</div>
		
		<ul class="tab" >
		  <li><a href="#" id="plan_tab" class="tablinks" onclick="openCity(event, 'plan_view_body2')">일정</a></li>
		  <li><a href="#" class="tablinks" onclick="openCity(event, 'paln_reply2')">댓글</a></li>
		</ul>
		
		<div class="plan_view_body tabcontent" id="plan_view_body2">
			<div class="plan_view_plna_list">
				<input type="hidden" id="day_plan_length" value="${day_plan.size() }">
				<c:forEach items="${day_plan }" var="day_list" varStatus="i">
					<input type="hidden" value="${day_list.daily_xlocation }" class="daily_xlocation${i.index }">
					<input type="hidden" value="${day_list.daily_ylocation }" class="daily_ylocation${i.index }">
				</c:forEach>						
				<c:forEach items="${day_spot}" var="spot_list2" varStatus="k">
					<div class="plan_view_body_dailyplan">
					<div class="plan_view_body_day" id="day${k.index+1}">DAY${k.index+1}</div>
					<div class="plan_view_body_title">
						<div class="plan_view_body_title_date">${day_plan[spot_list2.key].daily_date }(${day_plan[spot_list2.key].city_dailyWeek})</div>
						<div class="plan_view_body_title_city_name">${day_plan[spot_list2.key].city_name }</div>
					</div>
					<div class="clear"></div>
						<input type="hidden" value="${spot_list2.value.size() }" class="spot_list_size${k.index }">
					<c:forEach items="${spot_list2.value}" var="spot_list" varStatus="j">
						<input type="hidden" value="${spot_list.spot_name }" class="spot_name${k.index }_${j.index}">
						<input type="hidden" value="${spot_list.spot_xlocation }" class="spot_xlocation${k.index }_${j.index}">
						<input type="hidden" value="${spot_list.spot_ylocation }" class="spot_ylocation${k.index }_${j.index}">
						<div class="plan_view_body_dailyplan_body">
						<c:if test="${j.index >0 }">
							<div class="plan_view_body_dailyplan_dotdash">
								<img src="${pageContext.request.contextPath}/resources/img/plan/down-straight-arrow-pointing-to-a-dot.png">
							</div>
						
						</c:if>
							<div class="plan_view_body_dailyplan_inner">
								<div class="plan_daily_num">
									${j.index+1}
								</div>
								<div class="plan_daily_spot">
									<div class="plan_daily_spot_img">
										<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
									</div>
									<div class="plan_daily_spot_box">
										<div  class="plan_daily_spot_content">
											<div class="plan_daily_spot_name">
												${spot_list.spot_name }
											</div>
											<div class="plan_daily_spot_thema">
												<c:if test="${spot_list.thema == 2 }">
													관광명소
												</c:if>
												<c:if test="${spot_list.thema == 3 }">
													랜드마크
												</c:if>
											</div>
										</div>	
										<div class="plan_daily_spot_info">
											<img src="${pageContext.request.contextPath}/resources/img/plan/information.png">
											
										</div>
									</div>
									<div class="clear"></div>
								</div>
								
								<div class="clear"></div>
							</div>	
						</div>
						
					</c:forEach>
					
					</div>
				</c:forEach>
				
				<div class="rigth_map">
					<div id="map">
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		
		<div class="paln_reply tabcontent" id="paln_reply2">
			<div class="plan_reply_box">
				<span>댓글</span>
				<hr style="border: 0.1ex solid #c8c8ca">
				
				<form action="">
					<div class="reply_write">
						<div class="writer_img">
							<img src="${pageContext.request.contextPath}/resources/img/plan/btn_like.png">
							<input type="hidden" value="mamamoo" name="id" id="id">
						</div>
						<div class="reply_content">
							<textarea rows="3" cols="60" name="content" id="content"></textarea>
						</div>
						<div class="reply_submit_btn">
							등록
						</div>
						<div class="clear"></div>
					</div>
				</form>
				<div class="reply_content_list">
				<c:forEach items="${reply_list }" var="re_list" varStatus="i">
					<div class="reply_list">
						<div class="reply_list_inner">
							<div class="reply_list_writer_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/btn_like.png">
								<input type="hidden" value="mamamoo" name="id">
								<input type="hidden" value="${re_list.no }" id="reply_no${i.index }">
							</div>
							<div class="reply_list_cotent_box">
								<div class="reply_list_up_box">
									<div class="reply_list_writer">${re_list.id }</div>
									<div class="reply_list_date">${re_list.reg_date }</div>
									<div class="reply_del" data-index="${i.index }">삭제</div>
									<div class="reply_update">수정</div>
									<div class="clear"></div>
								</div>
								<div class="reply_list_down_box">
									${re_list.contents}
								</div>
							</div>
							<div class="clear"></div>
						</div>
						
					</div>
				
				</c:forEach>
				</div>
				
			</div>
		</div>
		
	</div>
<!-- footer -->
<%@ include file="/WEB-INF/views/temp/footer.jspf" %>
</body>
</html>

