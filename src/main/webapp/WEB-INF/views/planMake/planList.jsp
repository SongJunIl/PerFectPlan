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
  *{
 	margin: 0;
 	
 }
 
 /*-------header---------*/
 #planList_header{
 	width: 100%;
 	height: 600px;
 	background: #7bc0f9;
 }
 #planList_inner{
 	width: 1092px;
 	margin: 0 auto;
 	
 }
 #pinner_text{
 	width:100%;
 	color: white;
 	width: 100%;
 	text-align: center;
 	font-family: 'nanum_b';
     padding-top: 55px;
     padding-bottom: 55px;
     font-size: 36px;
     text-align: center;
 }
 
 #pinner_pbtn{
 	width: 500px;
 	height: 60px;
 	margin: 0 auto;
 }
 
 #pinner_pbtn_1{
 	overflow:hidden;
 	width:200px;
 	height: 60px;
 	float: left;
  	background-color: #848d9c;
  	font-weight: bolder;
  	color: white;
 	border-radius:5px;
 	cursor: pointer;
  }
  #pinner_pbtn_1 img{
  	float:left;
 	margin-top: 15px;
 	margin-left: 10px;
 }
 #pinner_pbtn_1 span{
 	float:left;
  	height: 60px;
  	line-height: 60px;
  	margin-left: 10px;	
 	
  }
  #pinner_pbtn_2{
  	width:170px;
 	height: 60px;
 	float: right;
 	text-align: center;
 	margin-right: 60px;
  	background-color: #848d9c;
  	font-weight: bolder;
  	color: white;
 	border-radius:5px; 
 	cursor: pointer;
  }
  #pinner_pbtn_2 img{
  	float:left;
 	margin-top: 15px;
 	margin-left: 10px;
 }
 #pinner_pbtn_2 span{
 	float:left;
 	height: 60px;
 	line-height: 60px;
 	margin-left: 10px;	
 }
 /*-------content----------  */
 #planList_content{
 	width: 100%;
 	padding-top: 70px;
 }
 #pcontent_inner{
 	width: 1092px;
 	margin: 0 auto;
 }
 #pinner_header{
 	text-align: center;
 	font-weight: bolder;
 	font-size: 25px;
 	color: #505050;
 	padding-bottom: 40px;
 }
 
 #pinner_filter{
 	width: 100%;
 	border: 1px solid #cfcfcf;
     margin-bottom: 20px;
 }
 
 .pfilter_filter_title{
 	width: 140px;
     height: 50px;
     line-height: 50px;
     text-align: center;
     color: #555555;
     font-size: 14px;
     font-weight: bold;
     float: left;
     border-right: 1px solid #e3e3e3;
     border-bottom: 1px dotted #c8c8ca;
 	
 }
 .pfilter_rigth_filter{
 	float: left;
 	width: 945px;
 	height: 50px;
 	border-bottom: 1px dotted #c8c8ca;
    line-height: 50px;
   
  }
  #city_list_right_title{
  	float: left;
 	width: 945px;
 	height: 150px;
 	border-bottom: 1px dotted #c8c8ca;
    /* line-height: 80px; */
    overflow: auto;
    
  }
  #city_list_title{
  	 width: 140px;
     height: 150px;
     line-height: 150px;
     text-align: center;
     color: #555555;
     font-size: 14px;
     font-weight: bold;
     float: left;
     border-right: 1px solid #e3e3e3;
     border-bottom: 1px dotted #c8c8ca;
    
  }
 .pfilter_clear{
 	clear: both;
 }
 .pfilter_right_content{
 	float: left;
 	width: 95px;
 	height: 50px;
 	text-align: center;
 	cursor: pointer;
 }
 .plan_inner_list{
 	float: left;
 	margin-right:28px;
 	margin-bottom: 20px;
    width: 345px;
    height: 296px;
    border: 1px solid #dfdfdf;
    position: relative;
    background: #fff;
    overflow: hidden;
 }
 .plan_list_bg{
 	/* width: 345px;
 	height: 200px;
 	background-color: gray;
 	overflow: hidden; */
 	width: 345px;
    height: 200px;
    position: absolute;
    left: 0px;
    top: 0px;
    z-index: 0;
    overflow: hidden;
 	transform-origin: center center 0px;  
    -webkit-transition: all 2.5s ease;
    -moz-transition: all 2.5s ease;
    -o-transition: all 2.5s ease;
    transition: all 2.5s ease; 
 }
 .plan_list_bg:hover{
 color:white !important;
 	-webkit-transform: scale(1.3,1.3);
    -moz-transform: scale(1.3,1.3);
   	-o-transform: scale(1.3,1.3);
    transform: scale(1.3,1.3);
    
 } 
 .plan_list_bg img{
 	width: 100%;
    height: 200px;
    position: absolute;
    left: 0px;
    top: 0px;
    z-index: 0;
    transition: all 3.6s;
    -webkit-transition: all 3.6s;
 }
 .plan_list_title span{
 	margin-left: 10px;
 }
 .plan_list_title{
 	/* margin-top: 140px; */
 	/* width: 200px; */
 	width: 100%;
    height: 100px;
    background: linear-gradient( to bottom, rgba(0,0,0,0), rgba(0,0,0,1));
    position: absolute;
    z-index: 1;
    left: 0px;
    top: 100px;
 }
 #pinner_list_order{
 	width: 100%;
 	margin-top: 50px;
 	margin-bottom: 10px;
 }
 #pinner_order_menu{
 	float: left;
 	font-size: 20px;
 }
 #pinner_list_counts{
 	float: right;
 	font-size: 15px;
 }
 .plan_counts{
 	float: right;
 	margin-left: 10px;
 }
 .plan_clips{
 	float: right;
 	margin-left: 10px;
 }
 .plan_spots{
 	float: right;
 	
 }
 .plan_bigcity{
 	margin-top: 5px;
 }
 .plan_id{
 	margin-top: 5px;
 
 }
 .plan_list_ex{
 	padding: 10px;
 	width: 100%;
    position: absolute;
    top: 200px;
    font-size: 14px;
    color: #6f6f6f;
    line-height: 20px;
    background-color: white;
 }
 
 
 .big_city_list{
 	float: left;
 	margin-left: 30px;
 	width: 80px;
 	height: 50px;
 	line-height:50px;
 	text-align: center;
 	cursor: pointer;
 }
 
 .big_city_name_title{
 	width: 100%;
 	text-align: center;
 }
 
 .pfilter_rigth_filter_inner{
 	float: left;
 	margin-left: 30px;
 	width: 80px;
 	height: 30px;
 	line-height: 30px;
 	text-align: center;
 	display: none;
 	background-color: #c8c8c8;
 	border-radius: 7px;
 	margin-top: 10px;
 }
  .pfilter_rigth_filter_inner1{
 	float: left;
 	margin-left: 30px;
 	width: 80px;
 	height: 50px;
 	line-height: 50px;
 	text-align: center;
 	display: none;
 }	
 .planner_List_inner_big_box a{
 	color:white !important;
 	
 }
.plan_title{
width:200px;
max-width:300px;
overflow:hidden;
text-overflow:ellipsis;
white-space:nowrap;
}
#ppage_view{
	width: 250px;
	height: 50px;
	background-color: #213B82;
	color: white;
	font-size: 20px;
	font-weight: bold;
	margin: 0 auto;
	text-align: center;
	line-height: 50px;
	margin-bottom: 50px;
	cursor: pointer;
} 
  </style>
 
 
 <script type="text/javascript">
 	$(function() {
 		for(var i=1;i<$("#total_List").val();i++){
 			$("."+(i*3)).css("margin-right","0px");
 			
 		}
 		var data_city_no=0;
 		var data_days = 0;
 		var data_season="";
 		var data_thema=0;
 		$(".big_city_list").click(function() {
 			var index=$(this).attr("data-index");
 			data_city_no=$("#city_list_no"+index).val();
 			$("#location_check").val(data_city_no);
			$("#location").html($("#city_list_city_name"+index).val());
			$("#location").css("display","block").css("margin-left","0");
			$("#location_btn").css("display","block").css({"margin-right":"0","width":"10px"});
			$("#city_list_title").slideUp();
			$("#city_list_right_title").slideUp();
			
			data_days=$("#plan_days_check").val();
			data_season=$("#plan_season_check").val();
			data_thema=$("#plan_thema_check").val();
			
			$.ajax({
				url:"plannerList",
				type:"POST",
				data:{
					city_no:data_city_no,
					days:data_days,
					season:data_season,
					thema:data_thema
				},
				success:function(data){
					$(".planner_List_inner_big_box").html(data);
					$(".planner_List_inner_big_box").html(data);
					if(data_city_no != 0 && data_days != 0 && data_season !="" && data_thema !=0){
						$("#pinner_list_counts").html($("#total_List").val()+"개의 일정");
						$("#ppage_view").css("display","block");
					}else{
						$("#pinner_list_counts").html($("#plan_list2_size").val()+"개의 일정");
						$("#ppage_view").css("display","none");
					}
				},error :function(){
					alert("오류");
				}
				
			});
			
		});
 		
 		$("#location_btn").click(function() {
 			$("#location").html("");
 			$("#location_check").val("0");
 			$("#location").css("display","none");
			$("#location_btn").css("display","none");
			$("#city_list_title").slideDown();
			$("#city_list_right_title").slideDown();
			
			data_city_no=$("#location_check").val();
			data_days=$("#plan_days_check").val();
			data_season=$("#plan_season_check").val();
			data_thema=$("#plan_thema_check").val();
			
			
			$.ajax({
				url:"plannerList",
				type:"POST",
				data:{
					city_no:data_city_no,
					days:data_days,
					season:data_season,
					thema:data_thema
				},
				success:function(data){
					$(".planner_List_inner_big_box").html(data);
					$(".planner_List_inner_big_box").html(data);
					if(data_city_no != 0 && data_days != 0 && data_season !="" && data_thema !=0){
						$("#pinner_list_counts").html($("#total_List").val()+"개의 일정");
						$("#ppage_view").css("display","block");
					}else{
						$("#pinner_list_counts").html($("#plan_list2_size").val()+"개의 일정");
						$("#ppage_view").css("display","none");
					}
				},error :function(){
					alert("오류");
				}
				
			});
		});
 		
 		
 		$(".filter_days").click(function() {
			data_days = $(this).attr("data-days");
			$("#plan_days_check").val(data_days);
			$("#plan_days").html($(this).text());
			$("#plan_days").css("display","block").css("margin-left","0");
			$("#plan_days_btn").css("display","block").css({"margin-right":"0","width":"10px"});
			$(".filter_days_title").slideUp();
			$(".filter_days_right").slideUp();
			
			data_city_no=$("#location_check").val();
			data_season=$("#plan_season_check").val();
			data_thema=$("#plan_thema_check").val();
			
			$.ajax({
				url:"plannerList",
				type:"POST",
				data:{
					city_no:data_city_no,
					days:data_days,
					season:data_season,
					thema:data_thema
				},
				success:function(data){
					$(".planner_List_inner_big_box").html(data);
					$(".planner_List_inner_big_box").html(data);
					if(data_city_no != 0 && data_days != 0 && data_season !="" && data_thema !=0){
						$("#pinner_list_counts").html($("#total_List").val()+"개의 일정");
						$("#ppage_view").css("display","block");
					}else{
						$("#pinner_list_counts").html($("#plan_list2_size").val()+"개의 일정");
						$("#ppage_view").css("display","none");
					}
				},error :function(){
					alert("오류");
				}
				
			});
			
		});
 		$("#plan_days_btn").click(function() {
 			$("#plan_days").html("");
 			$("#plan_days_check").val("0");
 			$("#plan_days").css("display","none");
			$("#plan_days_btn").css("display","none");
			$(".filter_days_title").slideDown();
			$(".filter_days_right").slideDown();
			
			data_city_no=$("#location_check").val();
			data_days=$("#plan_days_check").val();
			data_season=$("#plan_season_check").val();
			data_thema=$("#plan_thema_check").val();
			
			
			$.ajax({
				url:"plannerList",
				type:"POST",
				data:{
					city_no:data_city_no,
					days:data_days,
					season:data_season,
					thema:data_thema
				},
				success:function(data){
					$(".planner_List_inner_big_box").html(data);
					$(".planner_List_inner_big_box").html(data);
					if(data_city_no != 0 && data_days != 0 && data_season !="" && data_thema !=0){
						$("#pinner_list_counts").html($("#total_List").val()+"개의 일정");
						$("#ppage_view").css("display","block");
					}else{
						$("#pinner_list_counts").html($("#plan_list2_size").val()+"개의 일정");
						$("#ppage_view").css("display","none");
					}
				},error :function(){
					alert("오류");
				}
				
			});
		});
 		
 		
 		$(".filter_season").click(function() {
			data_season = $(this).attr("data-season");
			$("#plan_season_check").val(data_season);
			$("#plan_season").html($(this).text());
			$("#plan_season").css("display","block").css("margin-left","0");
			$("#plan_season_btn").css("display","block").css({"margin-right":"0","width":"10px"});
			$(".filter_season_title").slideUp();
			$(".filter_season_right").slideUp();
			
			data_city_no=$("#location_check").val();
			data_days=$("#plan_days_check").val();
			data_thema=$("#plan_thema_check").val();
			
			$.ajax({
				url:"plannerList",
				type:"POST",
				data:{
					city_no:data_city_no,
					days:data_days,
					season:data_season,
					thema:data_thema
				},
				success:function(data){
					$(".planner_List_inner_big_box").html(data);
					$(".planner_List_inner_big_box").html(data);
					if(data_city_no != 0 && data_days != 0 && data_season !="" && data_thema !=0){
						$("#pinner_list_counts").html($("#total_List").val()+"개의 일정");
						$("#ppage_view").css("display","block");
					}else{
						$("#pinner_list_counts").html($("#plan_list2_size").val()+"개의 일정");
						$("#ppage_view").css("display","none");
					}
				},error :function(){
					alert("오류");
				}
				
			});
			
		});
 		
 		$("#plan_season_btn").click(function() {
 			$("#plan_season").html("");
 			$("#plan_season_check").val("");
 			$("#plan_season").css("display","none");
			$("#plan_season_btn").css("display","none");
			$(".filter_season_title").slideDown();
			$(".filter_season_right").slideDown();
			
			data_city_no=$("#location_check").val();
			data_days=$("#plan_days_check").val();
			data_season=$("#plan_season_check").val();
			data_thema=$("#plan_thema_check").val();
			
			
			$.ajax({
				url:"plannerList",
				type:"POST",
				data:{
					city_no:data_city_no,
					days:data_days,
					season:data_season,
					thema:data_thema
				},
				success:function(data){
					$(".planner_List_inner_big_box").html(data);
					$(".planner_List_inner_big_box").html(data);
					if(data_city_no != 0 && data_days != 0 && data_season !="" && data_thema !=0){
						$("#pinner_list_counts").html($("#total_List").val()+"개의 일정");
						$("#ppage_view").css("display","block");
					}else{
						$("#pinner_list_counts").html($("#plan_list2_size").val()+"개의 일정");
						$("#ppage_view").css("display","none");
					}
				},error :function(){
					alert("오류");
				}
				
			});
		});
 		
 		$(".filter_thema").click(function() {
			data_thema = $(this).attr("data-thema");
			$("#plan_thema_check").val(data_thema);
			$("#plan_thema").html($(this).text());
			$("#plan_thema").css("display","block").css("margin-left","0");
			$("#plan_thema_btn").css("display","block").css({"margin-right":"0","width":"10px"});
			$(".filter_thema_title").slideUp();
			$(".filter_thema_right").slideUp();
			
			data_city_no=$("#location_check").val();
			data_days=$("#plan_days_check").val();
			data_season=$("#plan_season_check").val();
						
			
			$.ajax({
				url:"plannerList",
				type:"POST",
				data:{
					city_no:data_city_no,
					days:data_days,
					season:data_season,
					thema:data_thema
				},
				success:function(data){
					$(".planner_List_inner_big_box").html(data);
					$(".planner_List_inner_big_box").html(data);
					if(data_city_no != 0 && data_days != 0 && data_season !="" && data_thema !=0){
						$("#pinner_list_counts").html($("#total_List").val()+"개의 일정");
						$("#ppage_view").css("display","block");
					}else{
						$("#pinner_list_counts").html($("#plan_list2_size").val()+"개의 일정");
						$("#ppage_view").css("display","none");
					}
				},error :function(){
					alert("오류");
				}
				
			});
			
		});
 		$("#plan_thema_btn").click(function() {
 			$("#plan_thema").html("");
 			$("#plan_thema_check").val("0");
 			$("#plan_thema").css("display","none");
			$("#plan_thema_btn").css("display","none");
			$(".filter_thema_title").slideDown();
			$(".filter_thema_right").slideDown();
			
			data_city_no=$("#location_check").val();
			data_days=$("#plan_days_check").val();
			data_season=$("#plan_season_check").val();
			data_thema=$("#plan_thema_check").val();
			
			
			$.ajax({
				url:"plannerList",
				type:"POST",
				data:{
					city_no:data_city_no,
					days:data_days,
					season:data_season,
					thema:data_thema
				},
				success:function(data){
					$(".planner_List_inner_big_box").html(data);
					if(data_city_no != 0 && data_days != 0 && data_season !="" && data_thema !=0){
						$("#pinner_list_counts").html($("#total_List").val()+"개의 일정");
						$("#ppage_view").css("display","block");
					}else{
						$("#pinner_list_counts").html($("#plan_list2_size").val()+"개의 일정");
						$("#ppage_view").css("display","none");
					}
				},error :function(){
					alert("오류");
				}
				
			});
		});
 		
 		$("#pinner_pbtn_1").click(function() {
			location.href="${pageContext.request.contextPath}/planMake/planSelectCity";
		});
 		$("#pinner_pbtn_2").click(function() {
 			var member = $("#member_se_ch").val();
 			if(member !=""){
				location.href="${pageContext.request.contextPath}/member/mypage";	
 			}else{
 				alert("my Planner는 로그인 후 사용 할 수 있습니다.");
 			}
		});
 		if($("#message").val() != ""){
 			alert($("#message").val());
 			
 		}
 		
 		var curPage=1;
 		$("#ppage_view").click(function() {
 			curPage= curPage+1;
 			$.ajax({
 				url:"planList2",
 				type:"POST",
				data:{
					curPage:curPage
				},success:function(data){
					$(".planner_List_inner_big_box").append(data);
					if($("#total_BLock").val()<=curPage){
						$("#ppage_view").css("display","none");
					}
				},error :function(){
					alert("오류");
				}
 				
 			});
			/* location.href="${pageContext.request.contextPath}/planMake/planList?curPage=2"; */
		});
 		
 		
 		
 	});
 	
 	
 	
 </script>
 
  </head>
  <body>
  <!-- header -->
 
 <%@ include file="/WEB-INF/views/temp/header.jspf" %>
 
 <!-- section -->
 <input type="hidden"value="${member}" id="member_se_ch">
 <input type="hidden" value="${message }" id="message">
 <c:remove var="message"/> <!-- message session 지우기 -->
 <div id="planList_header">
 	<div id="planList_inner">
 		<div id="pinner_text">
 			누구나 쉽게 일정을 계획할 수 있습니다.
 		</div>
 		<div id="pinner_img">
 			<img src="${pageContext.request.contextPath}/resources/img/plan/planList_header.jpg">
 		</div>
 		<div id="pinner_pbtn">
 			<div id="pinner_pbtn_1">
 				<img src="${pageContext.request.contextPath}/resources/img/plan/makePlan.jpg">
 				<span>새로운 일정 만들기</span>
 			</div>
 			<div id="pinner_pbtn_2">
 				<img src="${pageContext.request.contextPath}/resources/img/plan/myPlan.jpg">
 				<span>My Planner</span>
 			</div>
 		</div>
 	</div>
 </div>
 
 <div id="planList_content">
 	
 	<div id="pcontent_inner">
 		
 		<div id="pinner_header">
 			<span>나그네들의 일정 보기</span>
 		</div>
  		
  		
  		<div id="pinner_filter">
 			
  			<div class="pfilter_filter_title">
  				필터
  			</div>
  			<div class="pfilter_rigth_filter">
 				<input type="hidden" id="location_check" value="0">
 				<input type="hidden" id="plan_days_check" value="0">
 				<input type="hidden" id="plan_season_check" value="">
 				<input type="hidden" id="plan_thema_check" value="0">
 				<div class="pfilter_rigth_filter_inner1" id="location_btn">
 					<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png">
 				</div>
 				<div class="pfilter_rigth_filter_inner" id="location">
 				
 				</div>
 				
 				<div class="pfilter_rigth_filter_inner1" id="plan_days_btn">
 					<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png">
 				</div>
 				<div class="pfilter_rigth_filter_inner" id="plan_days">
 					
 				</div>
 				
 				<div class="pfilter_rigth_filter_inner1" id="plan_season_btn">
 					<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png">
 				</div>
 				<div class="pfilter_rigth_filter_inner" id="plan_season">
 				
 				</div>
 				
 				<div class="pfilter_rigth_filter_inner1" id="plan_thema_btn">
 					<img src="${pageContext.request.contextPath}/resources/img/plan/del_city_btn_b.png">
 				</div>
 				<div class="pfilter_rigth_filter_inner" id="plan_thema">
 				
 				</div>
 				
 				<div class="pfilter_clear"></div>
  			</div>
  			<div class="pfilter_clear"></div>
  			
  			<div class="pfilter_filter_title" id="city_list_title">
  				여행지
  			</div>
  			<div class="pfilter_rigth_filter" id="city_list_right_title">
 				<c:forEach  begin="0" end="${city_list.size() }" var="i" step="1">
 				<c:if test="${i <=8 }">
 					<div class="big_city_list" data-index="${i }">
		 					${city_list[i].city_name }
		 					<input type="hidden" value="${city_list[i].no }" name="no" id="city_list_no${i}">
		 					<input type="hidden" value="${city_list[i].city_name }" name="city_name" id="city_list_city_name${i}">
		 			</div>
		 			<c:if test="${i == 7 }">
		 				<c:if test="${city_list[i].big_no ne city_list[i+1].big_no }">
			 					<div class="pfilter_clear big_city_name_title">${city_list[i+1].big_name}</div>			
		 				</c:if>
	 				</c:if>
		 		</c:if>
		 		<c:if test="${i >= 9 }">
	 				<c:if test="${city_list[i].big_no ne city_list[i-1].big_no }">
		 					<div class="pfilter_clear big_city_name_title">${city_list[i].big_name}</div>			
	 				</c:if>
	 				<c:if test="${city_list[i].big_no eq city_list[i-1].big_no }">
		 				<div class="big_city_list" data-index="${i }">
		 					${city_list[i].city_name }
		 					<input type="hidden" value="${city_list[i].no }" name="no" id="city_list_no${i}">
		 					<input type="hidden" value="${city_list[i].city_name }" name="city_name" id="city_list_city_name${i}">
		 				</div>	 				
	 				</c:if>
		 		</c:if>
 				</c:forEach>
 				
 				<div class="pfilter_clear"></div>
  			</div>
  			<div class="pfilter_clear"></div>
  			
  			<div class="pfilter_filter_title filter_days_title">
  				여행일
  			</div>
  			<div class="pfilter_rigth_filter filter_days_right">
 			
 				<div class="pfilter_right_content filter_days" data-days="3">
 					1-3일
 				</div>
 				<div class="pfilter_right_content filter_days" data-days="6">
 					4-6일
 				</div>
 				<div class="pfilter_right_content filter_days" data-days="9">
 					7-9일
 				</div>
 				<div class="pfilter_right_content filter_days" data-days="10">
 					10일 이상
 				</div>
 				<div class="pfilter_clear"></div>
  			</div>
  			<div class="pfilter_clear"></div>
  			
  			<div class="pfilter_filter_title filter_season_title">
  				여행시기
  			</div>
  			<div class="pfilter_rigth_filter filter_season_right">
 				
 				<div class="pfilter_right_content filter_season" data-season="봄">
 					봄
 				</div>
 				<div class="pfilter_right_content filter_season" data-season="여름">
 					여름
 				</div>
 				<div class="pfilter_right_content filter_season" data-season="가을">
 					가을
 				</div>
 				<div class="pfilter_right_content filter_season" data-season="겨울">
 					겨울
 				</div>
 				<div class="pfilter_clear"></div>
  			</div>
  			<div class="pfilter_clear"></div>
  			
 			
 			<div class="pfilter_filter_title filter_thema_title">
  				여행테마
  			</div>
  			<div class="pfilter_rigth_filter filter_thema_right">
 			
 				<div class="pfilter_right_content filter_thema" data-thema="1">
 					가족여행
 				</div>
 				<div class="pfilter_right_content filter_thema" data-thema="2">
 					친구와함께
 				</div>
 				<div class="pfilter_right_content filter_thema" data-thema="3">
 					커플여행
 				</div>
 				<div class="pfilter_right_content filter_thema" data-thema="4">
 					나홀로여행
 				</div>
 				<div class="pfilter_clear"></div>
 			</div>
 			<div class="pfilter_clear"></div>
 			
 		</div>
 		
 		<div class="pfilter_clear"></div>
 		
 		<div id="pinner_list">
	 		<div id="pinner_list_order">
	 			<div id="pinner_order_menu"> 
	 				<!-- <span>인기</span>
	 				<span>│</span>
	 				<span>신규</span> -->
	 			</div>
	 			<input type="hidden" value="${totalList}" id="total_List">
	 			<div id="pinner_list_counts">
	 				${totalList }개의 일정
	 			</div>
	 			<div class="pfilter_clear"></div>
	 		</div>
	 		<div class="planner_List_inner_big_box">
	 		
	 		<c:forEach items="${plan_list }" var="planList" varStatus="i">
	 			<a href="${pageContext.request.contextPath}/planMake/planView?id=${planList.id }&plan_no=${planList.plan_no}">
		 		<div class="plan_inner_list ${i.index+1 }" >
	 				<div class="plan_list_title" style="text-overflow:ellipsis;overflow:hidden;white-space:nowrap">
		 				<div style="margin-top: 50px;">
		 					<span>${planList.s_date }</span><span>${planList.days}DAYS</span><br>
		 					<span  class="plan_title">${planList.plan_name }</span>
		 				</div>
	 				</div>
		 			<div class="plan_list_bg">
		 				<img src="${pageContext.request.contextPath}/resources/img/mypage/photo1.jpg">
		 			</div>
		 			<div class="plan_list_ex">
		 				<span>
							<c:choose>
								<c:when test="${planList.thema == 1 }">
									가족여행
								</c:when>
								<c:when test="${planList.thema == 2 }">
									친구여행
								</c:when>
								<c:when test="${planList.thema == 3 }">
									커플여행
								</c:when>
								<c:otherwise>
									나홀로여행
								</c:otherwise>
							</c:choose>
							
						</span>
		 				<div class="plan_counts"><img src="${pageContext.request.contextPath}/resources/img/plan/pn_list_view_icon.png">&nbsp;&nbsp;${planList.counts }</div>
		 				<div class="plan_clips"><img src="${pageContext.request.contextPath}/resources/img/plan/list_clip_icon.png">&nbsp;&nbsp;${planList.jim }</div>
		 				<div class="plan_spots"><img src="${pageContext.request.contextPath}/resources/img/plan/pn_list_spot_icon.png">&nbsp;&nbsp;${planList.spot_counts }</div>
		 				<div class="pfilter_clear"></div>
		 				<div class="plan_bigcity">${planList.city_names}</div>
		 				<div class="pfilter_clear"></div>
		 				<div class="plan_id">${planList.id }</div>
		 			</div>
		 		</div>
		 		</a>
	 		</c:forEach>	
	 		
	 		
	 		</div>
	 		<div class="pfilter_clear"></div>	
	 		
	  		<div id="pinner_page">
	 		
	 			<div id="ppage_view">+ 9개 더 보기</div>
	  		</div>
  			<input type="hidden" value="${page.totalBlock }" id="total_BLock">
  		</div>
  		
  		
  		
  	</div>
 </div>
 
 <!-- footer -->

 </body>
</html>