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
	#plan_planner_maker{
		width: 425px;
		height: 905px;
		float: left; 
		z-index: 999;
	}
	#planner_date_box{
		float:left;
		width: 160px;
		height: 905px;
		background-color: #28344B;
		position:relative; 
	}
	#planner_schedule_box{
		float:left;
		width: 265px;
		height: 905px;
		background-color: white;
	}
	.clear{
		clear: both;
	}
	#map{
		float:left;
		width: 1478px;
		height: 905px;
	
	}
	.pday_list_day{
		float: left;
	}
	#pday_list_term{
		float: left;
		margin-left: 30px;
		margin-right: 10px;
	}
	#pday_list_edit{
		float: left;
	}
	#pday_list_body, #pday_list_header{
		padding-left: 0px;
		margin-bottom: 0px;
	}
	#pday_list_header_inner{
		width: 160px;
		height: 50px;
		line-height:50px;
		border-top: 1px gray solid;
		border-bottom: 1px gray solid;
		color:white;
		list-style-type:none; 
		padding-left: 0px;
		
	}
	
	.pday_list_body_inner{
		width: 160px;
		height: 70px;
		line-height:50px;
		color:white;
		list-style-type:none; 
		padding-left: 0px;
		border-bottom: 1px gray solid;
		cursor: pointer;
	}
	.pday_list_day{
		float: left;
		height: 30px;
		font-size: 20px;
		font-weight: bolder;
		margin-left: 30px;
	}
	.pday_list_week{
		float: left;
		height: 30px;
		margin-left: 15px;
		font-size: 15px;
	}
	.pday_list_date{
		float: left;
		height: 30px;
		margin-left: 30px;
	}
	.pday_list_city{
		float: left;
		height: 30px;
		margin-left: 15px;
		
	}
	#pstart_date,#pfinal_date{
		height: 20px;
		line-height: 20px;
		margin-top: 5px;
	}
	#pday_mid_save{
		border-top: 1px white solid;
		width:100%;
		height: 70px;
		position:absolute;
		bottom: 0px; 
	}
	#pday_mid_save_btn{
		border:1px solid gray !important;
		background-color: gray;
		width: 100px;
		height:30px;
		margin: 15px auto;
		font-weight: bolder;
		font-size: 15px;
		color: white;
		text-align: center;
		padding-top: 5px;
		margin-left: 28px;
		
	}
	.Pschedule_list_header{
		width: 100%;
		height: 50px;
		background-color: gray;
		overflow: hidden;
	}
	.Pschedule_list_header_inner{
		width: 240px;
		margin: 0 auto;
		font-weight: bolder;
		font-size: 15px;
		color: white;
		margin-top: 10px;
		text-align: center;
	}
	.Pschedule_list_body{
		width: 100%;
		height: 785px;
		overflow: scroll;
		
	}
	.planner_schedule_box_inner{
		display: none;
	}
	/* spot리스트 css */
	/* The side navigation menu */
	#ptab_open{
		position:absolute;
    	z-index: 90;
	}
	#ptab_close{
		display: none;
		position:absolute;
    	z-index: 90;
	}
.sidenav {
    height: 100%; /* 100% Full-height */
    width: 0; /* 0 width - change this with JavaScript */
    position:absolute;
    z-index: 90;
    top: 0;
    left: 0;
    background-color: #111; /* Black*/
    overflow-x: hidden; /* Disable horizontal scroll */
    transition: 0.5s; /* 0.5 second transition effect to slide in the sidenav */
    background-color: white;
    border-left: 1px solid gray;
}

/* The navigation menu links */
.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s
}

/* When you mouse over the navigation links, change their color */
.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

/* Position and style the close button (top right corner) */
.closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px !important;
    margin-left: 50px;
}

/* Style page content - use this if you want to push the page content to the right when you open the side navigation */
#main {
    transition: margin-left .5s;
    padding: 20px;
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
}

/*	pspotList css */
#pspot_list_header{
	width:100%;
	background-color: #1a7ad9;
	color: white;
	font-size: 15px;
	font-weight: bold;
	height: 50px;
	overflow: hidden;
	
}
#pstop_header_title{
	width: 320px;
	margin: 10px auto;
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

/* daily Spot List */
#pspot_nav_btn{
	width: 100%;
	height: 80px;
	border-top: 1px gray solid; 
	padding-top: 16px;
}

#pspot_nav_btn_go{
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


.pspot_nav_inner{
	background-color: #efefef;
	width: 250px;
	height: 40px;
	margin: 5px auto;
	border-radius: 10px; 
	/* display: none; */
}
.pspot_nav_inner_box{
	width: 220px;
	height: 30px;
	margin: 0 auto;
	
}
.pspot_nav_inner_img{
	width:20px;
	float: left;
	margin-left: 20px;
	margin-top: 8px; 
}
.pspot_nav_inner_name{
	float: left;
	margin-left: 20px;
	text-align: center;
	margin-top: 8px;
}
.pspot_nav_inner_day{
	float: right;
	margin-right: 5px;
	margin-top: 8px;
}
.pspot_nav_inner_line{
	width:100%;
	text-align: center;
}
.pspot_nav_inner_img{
	cursor: pointer;
}
.pspot_date_minur,.pspot_date_inner,.pspot_date_plus{
	float:left;
	margin-left: 10px;
	margin-right: 10px;
	cursor: pointer;
}
#pday_final_save{
	border-top: 1px #28344B solid;
	width:265px;
	height: 70px;
	position:absolute;
	/* bottom: 0px;  */
}
#pday_final_save_btn{
	background-color: #ff9320;
	width: 150px;
	height:30px;
	margin: 15px auto;
	font-weight: bolder;
	font-size: 15px;
	color: white;
	text-align: center;
	padding-top: 5px;
	margin-left: 58px;
	
}
/* modal 자체 */
.modal-backdrop{
	z-index: 0 !important;
}
.modal-body{
	height: 300px;
}

#datepicker {
	color: gray;
	background: url(${pageContext.request.contextPath}/resources/img/plan/bg_cal.gif) no-repeat 125px 0px;
	font-size: 12px;
	width: 150px;
	height: 30px;
	border: 1px #c8c8ca solid;
}
/* modal 내부 */
.plan_thema_box{
	float: left;
	margin-right: 20px;
}
.plan_modal_table_title{
	width: 85px;
	height: 50px;
	margin-left: 30px;
	
}
.plan_thema_box{
	border: 1px solid #c8c8ca;
	width: 80px;
	height: 83px;
	
}
.plan_thema_word{
	width: 80px;
	text-align: center;
}
.plan_thema_radio_btn{
	width: 20px;
	height: 20px;
	margin: 10px auto;
}
#plan_title{
	width: 380px;
}

</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=c13f7a56e3fd7a30f74913f2574d70f1"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
var positions = []; // 선택 도시 위치

var positions2 = []; // 
var positions3=[]; // 소도시 위치 
var j=0;
var i=0;
$(function() {
	var city_length = $("#day_list").val();
	var city_array =[];
	for(var a=0;a<city_length;a++){
		city_array.push({
            plan_no: $(".plan_no"+a).val(), 
            city_name: $(".city_name"+a).val(),
            city_no : $(".city_no"+a).val(),
            city_xlocation: $(".daily_xlocation"+a).val(),
            city_ylocation: $(".daily_ylocation"+a).val()
        });
	};
	
	
		
	
	
	//======dailyplan 날짜별 목록=============================================================
	
	
	$(".pday_list_box"+0).css("background-color","#4478FB"); 
	$(".pschedule_box"+0).css("display","block"); 
	
	
	
	
	
	// spotList 첫화면에 이름을 미리 가져오기
	$("#pstop_header_title").html(city_array[0].city_name);	
	
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
		center: new daum.maps.LatLng(city_array[0].city_xlocation, city_array[0].city_ylocation), // 지도의 중심좌표
        level: 9 // 지도의 확대 레벨
    };
	
var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var check = true;

var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

var marker=[];	
var marker2=[];
var marker3=[];
//========기본적으로 처음으로 들어왔을때 뿌려줄 spot list 불러오기======================================
	var spot_length=0;
	var spot_array =[];
	$.ajax({
		url:"./pspotList",
		type:"POST",
		data: {
			city_no : city_array[0].city_no
		},
		success : function(data) {
			
			$("#pspot_list_body").html(data);
			spot_array_make();
			for(a=0;a<spot_array.length;a++){
				spot_array[a].dp_no = $(".daily_no"+0).val();
			}
			positions2_array_make();
			
		}
	
	});	

	function spot_array_make() {
		spot_length=$("#spot_list").val();
		
		for(var a=0;a<spot_length;a++){
			
			spot_array.push({
				dp_no : 0 ,
	            spot_num: $(".spot_num"+a).val(), 
	            spot_name: $(".spot_name"+a).val(),
	            city_no : $(".city_no"+a).val(),
	            spot_xlocation: $(".spot_xlocation"+a).val(),
	            spot_ylocation: $(".spot_ylocation"+a).val()
	        }); 
			
		}
	}
	
	
function positions2_array_make() {
	for(a=0;a<spot_array.length;a++){
		positions2.push({
				dp_no : spot_array[a].dp_no,
				spot_name:spot_array[a].spot_name,
				spot_num : spot_array[a].spot_num,
	            title: spot_array[a].spot_name,
	            spot_xlocation :spot_array[a].spot_xlocation,
	            spot_ylocation :spot_array[a].spot_ylocation,
	            latlng: new daum.maps.LatLng(spot_array[a].spot_xlocation, spot_array[a].spot_ylocation)
		});	
	}
	


//===============================================================================
	
	

// 마커 이미지의 이미지 주소입니다


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

}
 
//=========daily list 누으면 바뀌는 메서드===========================================================
function remove_array() {
	/* for(i=0;i<city_array.length;i++){
		city_array.splice(0,1);	
	
	}
	alert("도"+city_array.length);
	for(i=0;i<spot_array.length;i++){
		spot_array.splice(0,1);	
		
	}
	alert("레"+spot_array.length);
	for(i=0;i<positions.length;i++){
		positions.splice(0,1);		
	}
	alert("미"+positions.length);
	for(i=0;i<positions2.length;i++){
		positions2.splice(0,1);	
	} */
	city_array=[];
	spot_array=[];
	positions=[];
	positions2=[];
	
}
var q=0;
var index_array=[];
var spot_counts =0;
var spot_list_length=0;
var pday_index=0;	
$(".pday_list_body_inner").click(function() {
	
	/* spot_counts =0; */
	
	positions=[];
	
	positions2=[];
	
	spot_array=[];
	
	index_array=[];
	
	
	
	//일정날짜 바뀔때마다 지워주기 (선과 거리 내용들)
	deleteClickLine();
	deleteDistnce();
	deleteCircleDot();
	
	
	for(var h=0;h<marker.length;h++){
		marker[h].setMap(null);
		
	}
	for(var h=0;h<marker2.length;h++){
		marker2[h].setMap(null);
		
	}
	
	
	
	pday_index = $(this).attr("data-index");
	spot_html =$("#schedule_list"+pday_index).html();
	
	
	

	
	/* spot_counts = $("#pspot_list_length"+pday_index).val(); */
	if(spot_html==''){
		spot_counts = 0;
	}else{
		spot_counts = parseInt($("#pspot_list_length"+pday_index).val());
		
		
	}
	
	
	spot_list_length=$("#pspot_list_length"+pday_index).val();
		
	/* for(i=0;i<positions.length;i++){
		positions.splice(0,1);		
	} */
	
	/* for(var a=0;a<city_length;a++){
		city_array.push({
            plan_no: $(".plan_no"+a).val(), 
            city_name: $(".city_name"+a).val(),
            city_no : $(".city_no"+a).val(),
            city_xlocation: $(".daily_xloaction"+a).val(),
            city_ylocation: $(".daily_yloaction"+a).val()
        });
	}; */
	

	
	
	
	/* if($("#schedule_list"+pday_index).html()!=""){
		
		alert("미2"+positions.length);
		
		for(j=0;j<spot_list_length;j++){
			positions.push({
								
				dp_no : $(".dp_nav_no"+pday_index+"_"+j).val(),
				name: $(".spot_nav_name"+pday_index+"_"+j).val(),
		        title:  $(".spot_nav_name"+pday_index+"_"+j).val(),
		        num : $(".spot_nav_num"+pday_index+"_"+j).val(),
		        xlocation : $(".spot_nav_xloaction"+pday_index+"_"+j).val(),
		        ylocation : $(".spot_nav_yloaction"+pday_index+"_"+j).val(),
		        latlng: new daum.maps.LatLng($(".spot_nav_xloaction"+pday_index+"_"+j).val(),$(".spot_nav_yloaction"+pday_index+"_"+j).val())
			 });
			addMark()
			
		}
	} */

	
	
	
	
	for(var t=0;t<city_length;t++){
		$(".pday_list_box"+t).css("background-color","#28344B"); 
		$(".pschedule_box"+t).css("display","none"); 
	}
	
	$(".pday_list_box"+pday_index).css("background-color","#4478FB");
	$(".pschedule_box"+pday_index).css("display","block");
	$("#pstop_header_title").html(city_array[pday_index].city_name);
	
	
	map.setCenter(new daum.maps.LatLng(city_array[pday_index].city_xlocation, city_array[pday_index].city_ylocation)); // 지도의 중심좌표 */
	/*  map.setLevel(11); // 지도의 확대 레벨 */
	
	/* if($("#schedule_list"+pday_index).html() != ""){
		
	} */
	//======클릭했을때 ajax로  spot 리스트 불러오기 =========
	$.ajax({
		url:"./pspotList",
		type:"POST",
		data: {
			city_no : city_array[pday_index].city_no
		},
		success : function(data) {
			
			$("#pspot_list_body").html(data);
			
			spot_array_make();
			for(a=0;a<spot_array.length;a++){
				spot_array[a].dp_no = $(".daily_no"+pday_index).val();
			}
			alert(spot_array[0].dp_no);
			positions2_array_make();
			if(spot_html != ""){
				index_array=[];
				if(spot_counts>0){
					for(i=0;i<spot_counts;i++){
						index_array.push(i);
					}
				}
				
				for(q=0;q<spot_counts;q++){
					
					var index_num =$(".spot_nav_index_num"+pday_index+"_"+q).val();
					
					addMark(index_num);
					
				}
			}
			
		}
	
	});
	
});

$(".pday_list_body_inner").mouseenter(function(){
    $(this).css("background-color","#244390");
	var pday_index2 = $(this).attr("data-index");
	if($(".pschedule_box"+pday_index2).css("display")=='block'){
		$(this).css("background-color","#4478FB"); 
	}
});

$(".pday_list_body_inner").mouseleave(function(){
		$(this).css("background-color","#28344B");
	pday_index2 = $(this).attr("data-index");
	if($(".pschedule_box"+pday_index2).css("display")=='block'){
		$(this).css("background-color","#4478FB");
	}
	 
});
 
	var content2='';
	
	var allcont;
	var marktitle;
	var marknum;
	var k =0;
	var index =0;
	/* var city_array =[]; */
	//선택된 지역 지도에 다른마커로 표시하기
	var data_kind ="";
	
	$(document).on("click",".big_btn",function() {
		
		check =true;
		/* spot_counts = 0;	 */
						
			/* for(j=0;j<marker2.length;j++){
				marker2[j].setMap(map);
				
		 	}
			
			for(j=0;j<marker3.length;j++){
				marker3[j].setMap(null);
				
		 	} */
		
		
		spot_counts = $("#pspot_list_length"+pday_index).val(); 
		if(spot_counts==''){
			spot_counts = 0;
		}else{
			spot_counts = parseInt($("#pspot_list_length"+pday_index).val());
		}
		
		for(k=0; k<spot_array.length;k++){
			
			if($(this).attr("data-index")==k){
				index = k;
				break;
			}
		}
		
		marktitle = spot_array[index].spot_name;
		marknum = spot_array[index].dp_no;
		
		/* for(i=0;i<positions.length;i++){
			if(positions[i].num == marktitle && positions[i].dp_no == marknum){
				check = false;
				break;
			}else{
				
				check=true;
			}
		} */
		
		for(i=0;i<spot_counts;i++){
			
			if($(".spot_nav_name"+pday_index+"_"+i).val() == marktitle && $(".dp_nav_no"+pday_index+"_"+i).val() == marknum){
				check = false;
				break;
			}else{
				
				check=true;
			}
		}
		
		if(check){
			index_array.push(index);
			/* positions.push({
				
				dp_no : spot_array[index].dp_no,
				name: spot_array[index].spot_name,
		        title:  spot_array[index].spot_name ,
		        num : spot_array[index].spot_num,
		        xlocation : spot_array[index].spot_xlocation,
		        ylocation : spot_array[index].spot_ylocation,
		        latlng: new daum.maps.LatLng(spot_array[index].spot_xlocation, spot_array[index].spot_ylocation)
			 });
			 */
			
			
			/* for(i=0; i<positions.length;i++){
				
				if(i>0 && i<positions.length){
					content2 += '<div class="pspot_nav_inner_line">';
					content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/item_route_bg.png"></div>';
				}
				
				content2 += '<div class="pspot_nav_inner nav_inner'+i+'">';
				content2 += '<div class="pspot_nav_inner_box">' ;
				content2 += '<div class="pspot_nav_inner_img nav_close'+i+'" data-index="'+i+'">';
				content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png"></div>';
				content2 += '<div class="pspot_nav_inner_name">';
				
				content2 += positions[i].name+'</div>';
				content2 += '<div class="pspot_nav_inner_day">';
				content2 += '</div></div></div>'
				
				content2 +=	'<input type="hidden" class="dp_nav_no'+index+"_"+i+'" value="'+positions[i].dp_no+'">'
				content2 += '<input type="hidden" class="spot_nav_num'+index+"_"+i+'" value="'+positions[i].num+'">'
				content2 += '<input type="hidden" class="spot_nav_name'+index+"_"+i+'" value="'+positions[i].name+'">'
				content2 += '<input type="hidden" class="spot_nav_xloaction'+index+"_"+i+'" value="'+positions[i].xloaction+'">'
				content2 += '<input type="hidden" class="spot_nav_yloaction'+index+"_"+i+'" value="'+positions[i].yloaction+'">'
				
				
			}  */
			if(spot_counts>0){
				content2 += '<div class="pspot_nav_inner_line pspot_nav_line'+pday_index+"_"+spot_counts+'">';
				content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/item_route_bg.png"></div>';
			}
			
			content2 += '<div class="pspot_nav_inner nav_inner'+pday_index+"_"+spot_counts+'">';
			content2 += '<div class="pspot_nav_inner_box">' ;
			content2 += '<div class="pspot_nav_inner_img nav_close'+pday_index+"_"+spot_counts+'" data-index="'+spot_counts+'">';
			content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png"></div>';
			content2 += '<div class="pspot_nav_inner_name">';
			
			content2 += spot_array[index].spot_name+'</div>';
			content2 += '<div class="pspot_nav_inner_day">';
			
			content2 +=	'<input type="hidden" class="dp_nav_no'+pday_index+"_"+spot_counts+'" value="'+spot_array[index].dp_no+'">'
			content2 += '<input type="hidden" class="spot_nav_num'+pday_index+"_"+spot_counts+'" value="'+spot_array[index].spot_num+'">'
			content2 += '<input type="hidden" class="spot_nav_name'+pday_index+"_"+spot_counts+'" value="'+spot_array[index].spot_name+'">'
			content2 += '<input type="hidden" class="spot_nav_xloaction'+pday_index+"_"+spot_counts+'" value="'+spot_array[index].spot_xlocation+'">'
			content2 += '<input type="hidden" class="spot_nav_yloaction'+pday_index+"_"+spot_counts+'" value="'+spot_array[index].spot_ylocation+'">'
			content2 += '<input type="hidden" class="spot_nav_index_num'+pday_index+"_"+spot_counts+'" value="'+index+'">'
			
			content2 += '</div></div></div>'
				
			spot_counts = spot_counts+1;
			$("#pspot_list_length"+pday_index).val(spot_counts);
				
			$("#schedule_list"+pday_index).append(content2);
			content2="";
			addMark(index);
			
		}
	});


//==============================마커 및 리스트 제거===============================
	// 이벤트 위임
	$(document).on("click", ".pspot_nav_inner_img", function() {
		
		var index = $(this).attr("data-index");
		
		/* positions.splice(index,1); */
		
		spot_counts = Number($("#pspot_list_length"+pday_index).val());
		
		/* index_array=[];
		if(spot_counts>0){
			for(i=0;i<spot_counts;i++){
				index_array.push(i);
			}
		} */
		
		
		for(j=0;j<marker.length;j++){
			marker[j].setMap(null);
			
		}
		/* for(j=0;j<marker2.length;j++){
			marker2[j].setMap(null);
			
		} */
		
		
			
		/* 	for(i=0; i<positions.length;i++){
				
				if(i>0&&i<positions.length){
					content2 += '<div class="pspot_nav_inner_line">';
					content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/item_route_bg.png"></div>';
				}
				
				content2 += '<div class="pspot_nav_inner nav_inner'+i+'">';
				content2 += '<div class="pspot_nav_inner_box">' ;
				content2 += '<div class="pspot_nav_inner_img nav_close'+i+'" data-index="'+i+'">';
				content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png"></div>';
				content2 += '<div class="pspot_nav_inner_name">';
				
				content2 += positions[i].name+'</div>';
				content2 += '<div class="pspot_nav_inner_day">';
				content2 += '</div></div></div>';
				
				content2 +=	'<input type="hidden" class="dp_no'+index+"_"+i+'" value="'+positions[i].dp_no+'">'
				content2 += '<input type="hidden" class="spot_num'+index+"_"+i+'" value="'+positions[i].num+'">'
				content2 += '<input type="hidden" class="spot_name'+index+"_"+i+'" value="'+positions[i].name+'">'
				content2 += '<input type="hidden" class="spot_xloaction'+index+"_"+i+'" value="'+positions[i].xloaction+'">'
				content2 += '<input type="hidden" class="spot_yloaction'+index+"_"+i+'" value="'+positions[i].yloaction+'">'
				
			}
			
			content2 += '<input type="text" value="'+positions.length+'" id="pspot_list_length'+positions[index].dp_no+'">';
			 */
			 
		/* if(spot_counts>0){
			content2 += '<div class="pspot_nav_inner_line">';
			content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/item_route_bg.png"></div>';
		}
		
		content2 += '<div class="pspot_nav_inner nav_inner'+spot_counts+'">';
		content2 += '<div class="pspot_nav_inner_box">' ;
		content2 += '<div class="pspot_nav_inner_img nav_close'+spot_counts+'" data-index="'+spot_counts+'">';
		content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png"></div>';
		content2 += '<div class="pspot_nav_inner_name">';
		
		content2 += spot_array[index].spot_name+'</div>';
		content2 += '<div class="pspot_nav_inner_day">';
		content2 += '</div></div></div>'
		
		content2 +=	'<input type="hidden" class="dp_nav_no'+index+"_"+spot_counts+'" value="'+spot_array[index].dp_no+'">'
		content2 += '<input type="hidden" class="spot_nav_num'+index+"_"+spot_counts+'" value="'+spot_array[index].spot_num+'">'
		content2 += '<input type="hidden" class="spot_nav_name'+index+"_"+spot_counts+'" value="'+spot_array[index].spot_name+'">'
		content2 += '<input type="hidden" class="spot_nav_xloaction'+index+"_"+spot_counts+'" value="'+spot_array[index].spot_xloaction+'">'
		content2 += '<input type="hidden" class="spot_nav_yloaction'+index+"_"+spot_counts+'" value="'+spot_array[index].spot_yloaction+'">'
			
		spot_counts +=1;
		$("#pspot_list_length"+spot_array[index].dp_no).val(spot_counts); */
		
				/* $("div").remove(".nav_inner"+pday_index+"_"+index+", .pspot_nav_line"+pday_index+"_"+index); */
				
				
				$("#schedule_list"+pday_index).html("");
				
				
				index_array.splice(index,1);
				
				spot_counts = spot_counts-1;
				
				for(i=0;i<spot_counts;i++){
					
					if(i>0){
						content2 += '<div class="pspot_nav_inner_line pspot_nav_line'+pday_index+"_"+i+'">';
						content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/item_route_bg.png"></div>';
					}
					
					content2 += '<div class="pspot_nav_inner nav_inner'+pday_index+"_"+i+'">';
					content2 += '<div class="pspot_nav_inner_box">' ;
					content2 += '<div class="pspot_nav_inner_img nav_close'+pday_index+"_"+i+'" data-index="'+i+'">';
					content2 += '<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png"></div>';
					content2 += '<div class="pspot_nav_inner_name">';
					
					content2 += spot_array[index_array[i]].spot_name+'</div>';
					content2 += '<div class="pspot_nav_inner_day">';
					
					content2 +=	'<input type="hidden" class="dp_nav_no'+pday_index+"_"+i+'" value="'+spot_array[index_array[i]].dp_no+'">'
					content2 += '<input type="hidden" class="spot_nav_num'+pday_index+"_"+i+'" value="'+spot_array[index_array[i]].spot_num+'">'
					content2 += '<input type="hidden" class="spot_nav_name'+pday_index+"_"+i+'" value="'+spot_array[index_array[i]].spot_name+'">'
					content2 += '<input type="hidden" class="spot_nav_xloaction'+pday_index+"_"+i+'" value="'+spot_array[index_array[i]].spot_xlocation+'">'
					content2 += '<input type="hidden" class="spot_nav_yloaction'+pday_index+"_"+i+'" value="'+spot_array[index_array[i]].spot_ylocation+'">'
					content2 += '<input type="hidden" class="spot_nav_index_num'+pday_index+"_"+i+'" value="'+index_array[i]+'">'
					
					content2 += '</div></div></div>'
						
				}
				
				/* if((spot_counts) != index){
					index_array=[];
					if(spot_counts>0){
						for(i=0;i<spot_counts;i++){
							index_array.push(i);
						}
					}
				} */
				
				$("#schedule_list"+pday_index).html(content2);
				
				$("#pspot_list_length"+pday_index).val(spot_counts);
				content2="";
				removeMark(index); 
	})
	
	
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
		if(day_default>1){
			
			positions[day_count].day= parseInt(day_default)+1;
			$("#plan_date"+day_count).html(positions[day_count].day);
		}
		
	});
	


//==============================================================================================
function removeMark(index){
	var imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
	positions.splice(index,1);
	
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

function addMark(index){
	spot_array=[];
	spot_length=$("#spot_list").val();
	
	for(var a=0;a<spot_length;a++){
		
		spot_array.push({
			dp_no : 0,
            spot_num: $(".spot_num"+a).val(), 
            spot_name: $(".spot_name"+a).val(),
            city_no : $(".city_no"+a).val(),
            spot_xlocation: $(".spot_xlocation"+a).val(),
            spot_ylocation: $(".spot_ylocation"+a).val()
        }); 
		
	}
	for(a=0;a<spot_array.length;a++){
		spot_array[a].dp_no = $(".daily_no"+pday_index).val();
	}
	
	
	imageSrc = "http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
	
	positions.push({
		dp_no : spot_array[index].dp_no,
		name: spot_array[index].spot_name,
        title:  spot_array[index].spot_name ,
        num : spot_array[index].spot_num,
        xlocation : spot_array[index].spot_xlocation,
        ylocation : spot_array[index].spot_ylocation,
        latlng: new daum.maps.LatLng(spot_array[index].spot_xlocation, spot_array[index].spot_ylocation)
	});
	
	for (i = 0; i < positions.length; i ++) {
		
    // 마커 이미지의 이미지 크기 입니다
    imageSize = new daum.maps.Size(30, 41); 
    	
    // 마커 이미지를 생성합니다    
    markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
    	
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


// =====================================================datepicker
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
		
	//========================== 광역시,특별시 제외 포인터 css===============================			
	/* for(i=0;i<big_array.length;i++){
		if(i>7){			
			$(".inner_box_chech"+i).css("cursor","pointer");
		}
	} */
	//========================== 도내 주요 시 보여주기====================================
	/* var box_index_check=0;
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
			
			 map.setCenter(new daum.maps.LatLng(big_array[box_index].big_xlocation, big_array[box_index].big_ylocation)); // 지도의 중심좌표 
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
				
				map.setCenter(new daum.maps.LatLng(36.3666102, 127.8783881)); // 지도의 중심좌표 
				 map.setLevel(13); // 지도의 확대 레벨
			}
		}
	});	 */
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
	
	/* Data Submit */
	$(document).on("click","#pday_mid_save_btn",function() {
		
		$("#plan_state").val(1);
	});
	$(document).on("click","#pday_final_save_btn",function() {
		$("#plan_state").val(2);
	});
	
	$(document).on("click", "#plan_save", function() {
		var contents3='';
		var day_length=$("#day_list").val();
		for(i=0;i<day_length;i++){
			var spot_list_length = $("#pspot_list_length"+i).val();
			for(j=0;j<spot_list_length;j++){
				if(i==0&&j==0){
					contents3 +=  $(".dp_nav_no"+i+"_"+j).val()+","+$(".spot_nav_num"+i+"_"+j).val()+","+$(".spot_nav_name"+i+"_"+j).val()+","+$(".spot_nav_xloaction"+i+"_"+j).val()+","+$(".spot_nav_yloaction"+i+"_"+j).val();					
				}else{
					contents3 +=  ","+$(".dp_nav_no"+i+"_"+j).val()+","+$(".spot_nav_num"+i+"_"+j).val()+","+$(".spot_nav_name"+i+"_"+j).val()+","+$(".spot_nav_xloaction"+i+"_"+j).val()+","+$(".spot_nav_yloaction"+i+"_"+j).val();					
				}
			}
		}
		alert(contents3);
		$("#all_plan_spot_list").val(contents3);
		
		contents3="";
		var submit_check=false;
		var plan_title = $("#plan_title").val();
		if(plan_title != ""){
			submit_check = true;
		}
		var radio_check = $(".radio_check").prop("checked");
		var radio_check1 = $(".radio_check1").prop("checked");
		var radio_check2 = $(".radio_check2").prop("checked");
		var radio_check3 = $(".radio_check3").prop("checked");
		radio_check = radio_check || radio_check1 || radio_check2 || radio_check3;
		if(submit_check && radio_check){
			alert("가능");
			$("#frm").submit();
			return true;
		}else{
			alert("불가능");
			return false;
		}
	});
	
});
//=======================================================================================

// map planner show
/* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
function openNav() {
    document.getElementById("mySidenav").style.width = "360px";
    document.getElementById("ptab_close").style.marginLeft= "360px";
    document.getElementById("ptab_close").style.display= "block";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("ptab_close").style.marginLeft= "0px";
    document.getElementById("ptab_close").style.display= "none";
}

</script>
</head>
<body>
<!-- header -->
<%@ include file="/WEB-INF/views/temp/header.jspf" %>
<!-- section -->
<div id="plan_planner_maker">
	<div id="planner_date_box">
		<ul id="pday_list_header">
			<li id="pday_list_header_inner">
				<div id="pday_list_term">
					<div id="pstart_date">${planDTO.s_date }</div>
					<div id="pfinal_date">~ &nbsp;${planDTO.f_date}</div>
				</div>
				<div id="pday_list_edit">수정</div>
			</li>
		</ul>
		<input type="hidden" id="day_list" value="${daylist.size() }">
		<ul	id="pday_list_body">
			<c:forEach items="${daylist }" var="list" varStatus="i">
				<li class="pday_list_body_inner pday_list_box${i.index }" data-index=${i.index }>
					<input type="hidden" class="daily_no${i.index }" value="${list.daily_no }">
					<input type="hidden" class="plan_no${i.index }" value="${list.plan_no }">
					<input type="hidden" class="city_no${i.index }" value="${list.city_no }">
					<input type="hidden" class="city_name${i.index }" value="${list.city_name }">
					<input type="hidden" class="daily_xlocation${i.index }" value="${list.daily_xlocation }">
					<input type="hidden" class="daily_ylocation${i.index }" value="${list.daily_ylocation }">
					
					<div class="pday_list_day">DAY${i.index+1}</div>
					<div class="pday_list_week">${list.city_dailyWeek}</div>
					<div class="clear"></div>
					<div class="pday_list_date">${list.daily_date }</div>
					<div class="pday_list_city">${list.city_name }</div>
				</li>
			</c:forEach>		
		</ul>
		<div id="pday_mid_save">
			<div id="pday_mid_save_btn" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">임시 저장</div>
		</div>
	</div>
	
	<div id="planner_schedule_box">
		<form action="./planSave" method="post" id="frm">
			<input type="hidden" name="days" value="${daylist.size() }">
			<input type="hidden" value="${planDTO.plan_no}" name="plan_no">
			<c:forEach items="${daylist }" var="list" varStatus="i">
				<div class="planner_schedule_box_inner pschedule_box${i.index}" data-index=${i.index }>
					<div class="Pschedule_list_header" data-index=${i.index }>
						<div class="Pschedule_list_header_inner" data-index=${i.index }>
							DAY${i.index+1}
							<span>│</span>
							${list.daily_date }(${list.city_dailyWeek})
						
						</div>
					</div>
						<input type="hidden" id="pspot_list_length${i.index}">
					<div class="Pschedule_list_body" id="schedule_list${i.index}" data-index=${i.index }>
					
					</div>
				</div>
			</c:forEach>
			
			<div id="pday_final_save">
				<div id="pday_final_save_btn" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">완료</div>
			</div>
			
			
			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content" tabindex="1">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">일정 만들기</h4>
			      </div>
			      <div class="modal-body">
			      <input type="hidden" name="state" id="plan_state">
			        <table id="plan_modal_table">
			        	<tr>
			        		<td class="plan_modal_table_title">여행 제목</td><td><input type="text" id="plan_title" name="plan_name"></td>		
			        	</tr>
			        	<tr>
			        		<td class="plan_modal_table_title">출발일</td><td><input class="box pri" type="text" name="s_date" readonly="readonly" id="datepicker" value="${daylist['0'].daily_date }"></td>		
			        	</tr>
			        	
			        	<tr>
			        		<td class="plan_modal_table_title">여행 테마</td>
			        		<td>
			        			<div class="plan_thema_box">
			        				<div class="plan_thema_radio">
			        					<div class="plan_thema_img"><img src="${pageContext.request.contextPath}/resources/img/plan/theme_family.gif"></div>
			        					<div class="plan_thema_word">가족</div>
			        				</div>			        			
				        			<div class="plan_thema_radio_btn"><input type="radio" name="thema" value="1" class="radio_check"></div>
			        			</div>
			        			<div class="plan_thema_box">
			        				<div class="plan_thema_radio">
			        					<div class="plan_thema_img"><img src="${pageContext.request.contextPath}/resources/img/plan/theme_frends.gif"></div>
			        					<div class="plan_thema_word">친구</div>
			        				</div>			        			
				        			<div class="plan_thema_radio_btn"><input type="radio" name="thema" value="2" class="radio_check1"></div>
			        			</div>
			        			<div class="plan_thema_box">
			        				<div class="plan_thema_radio">
			        					<div class="plan_thema_img"><img src="${pageContext.request.contextPath}/resources/img/plan/theme_couple.gif"></div>
			        					<div class="plan_thema_word">커플</div>
			        				</div>			        			
				        			<div class="plan_thema_radio_btn"><input type="radio" name="thema" value="3" class="radio_check2"></div>
			        			</div>
			        			<div class="plan_thema_box">
			        				<div class="plan_thema_radio">
			        					<div class="plan_thema_img"><img src="${pageContext.request.contextPath}/resources/img/plan/theme_alone.gif"></div>
			        					<div class="plan_thema_word">나홀로</div>
			        				</div>			        			
				        			<div class="plan_thema_radio_btn"><input type="radio" name="thema" value="4" class="radio_check3"></div>
			        			</div>
			        			<div class="clear"></div>
			        		</td>		
			        	</tr>
			        </table>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			        <button type="button" class="btn btn-primary" id="plan_save">저장하기</button>
			      </div>
			    </div>
			  </div>
			</div>
			<input type="hidden" id="all_plan_spot_list" name="all_plan_list">
		</form>
			
			
	</div>
	
</div>




	<div id="map">
		<div id="ptab_open" onclick="openNav()"><img src="${pageContext.request.contextPath}/resources/img/plan/city_open_btn.png"></div>
		<div id="ptab_close" onclick="closeNav()"><img src="${pageContext.request.contextPath}/resources/img/plan/city_close_btn.png"></div>
		<div id="mySidenav" class="sidenav">
			<div id="pspot_list_header">
				<div id="pstop_header_title"></div>
			</div>
			<div id="pspot_list_body">
				<!-- ajax 넘어오는곳 -->
			
			</div>
		  
		</div>
	</div>

<!-- <span onclick="openNav()">open</span> -->

</body>
</html>
