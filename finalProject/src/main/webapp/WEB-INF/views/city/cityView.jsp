<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<style type="text/css">
	*{
		margin: 0 auto;
	}
	#section_1{
		background-color: #F8F8F8;
		height: 660px;
		margin-bottom: 30px;
	}
	#section_2{
		background-color: #F8F8F8;
		height: 800px;
	}
	#section_3{
		background-color: #F8F8F8;
		height: 4000px;
	}
	#cityTitle{
		width: 955px;
		height: 50px;
		float: left;
		margin-left: 165px;
		margin-top: 50px;
		padding-top: 50px;
		margin-bottom: 10px;
		font-weight: bold;
		font-size: 15px;
	}
	#back_menu{
		width: 130px;
		height: 50px;
		float: left;
		margin-top: 110px;
	}
	#listImg{
		padding-top: 10px;
		height: 18px;
	}
	#backText{
		width: 60px;
		height: 17px;
		border: 0px;
		font-size: 15px;
		color: #606060;
		font-weight: bold;
		margin-left: 10px;
		padding-top: 5px;
		background-color: #F8F8F8;
	}
	#h{
		overflow: hidden;
		margin-left: 165px;	
		height: 50px;
		width: 1092px;
		margin-top: 20px;
		background-color: #F8F8F8;
	}
	.menu_list{
		height: 48px;
		width: 271px;
		float: left;
		text-align: center;
		background-color: #F8F8F8;
	}
	.menu_name{
		width : 269px;
		height: 45px;
		border: 0px;
		color: white;
		font-size: 16px;
		text-align: center;
		border: 1px solid #C8C8C8 ;
		background-color: #330066;
		color: white;
	}
	#h2{
		width: 1092px;
		height: 400px;
		padding-top: 30px;
		overflow: hidden;
		margin-left: 165px;
	}
	#city_image{
		width: 561px;
		height: 400px;
		float: left;
		background-color: orange;
	}
	#weather{
		float: left;
		width: 500px;
		height: 400px;
		margin-left: 30px;
	}
	#weather_list{
		width: 498px;
		height: 362px;
		margin-top: 15px;
		margin-bottom: 15px;
		border-radius: 4px;
		background-color:#E8E8E8 ;
		border: 1px solid #C8C8C8  ;
	}
	
	.weather_day{
		width: 109px;
		height: 160px;
		float: left;
		margin-left: 6.5px;
		margin-right: 6.5px;
		margin-bottom:9px;
		margin-top: 9.5px;
		background-color: white  ; 
		border-radius: 4px;
		border: 1px solid #C8C8C8  ;
	}
	.day_text{
		width: 90	px;
		height: 28px;
		font-size :14px;
		padding-top:7px;
		padding-left:15px;
		color: gray;
		border-bottom: 1px solid #C8C8C8;
	}
	.weather_img{
		width: 109px;
		height: 55px;
		
	}
	.weather_image{
		margin-left: 23px;
	}
	.weather_info{
		padding-top:5px;
		font-size: 11px;
		padding-left: 5px;
		color: gray;
		line-height: 20px;
	}
	#week{
		width: 500px;
		height: 150px;
		margin-top : 15px;
		background-color: blue;
	}
	#thema{
		overflow: hidden;
		margin-left: 165px;
		text-align: center;
		margin-top: 50px;
		margin-bottom: 50px;
		width: 1092px;
	}
	#thema_menu{
		width: 1092px;
		height: 350px;
		margin-left: 165px;
	}
	.thema_image{
		width: 532px;
		height: 350px;
		float: left;
		background-color: aqua;
		border: 1px solid #D8D8D8;
		border-radius:4px; 
		
	}
	#thema_2{
		 margin-left: 20px; 
	}
	#popular{
		text-align: center;
		margin-top: 50px;
		padding-top: 50px;
		margin-bottom: 50px;
	}
	#popular_list{
		width: 1102px;
		height: 500px;
		margin-left: 175px;
	}
	.popular_inner_list{
		width: 263px;
		height: 233px;
		float: left;
		border: 1px solid #D8D8D8 ;
		margin-right:10px;
   		margin-bottom: 20px;
   		overflow: hidden;
   		background-color: white;
   		position: relative;
   		border-radius: 4px;
	}
	#spotIMG{
		z-index:1;
		width: 263px;
		height: 160px;
		background-color: fuchsia;
		position: relative;
	}
	#spotIMG{
		height: 160px;
		width: 263px;
	}
	/* hover이미지 확대 event ==================================================*/
	#spotIMG :hover{
		transform: scale(1.3,1.3);
		transition : all 2.5s ease ; 
		z-index:1;
	}
	/* hover이미지 확대 event ==================================================*/
	.spot_img{
		position: absolute;
		width: 263px;
		height: 160px;	
		z-index:1;
	}
	#spotNAME{
		z-index:999;
		width: 263px;
		height: 73px;
		font-size: 13px;
		background-color: white;
		position: absolute;
	}
	#name_spot{
		z-index:999;
		width: 263px;
		height: 17px;
		margin-top: 10px;
	}
	#clip_img{
		z-index:999;
		overflow: hidden;
		margin-top:  10px;
		width: 19px;
		height: 24px;
		margin-left: 20px;
		float: left;
	}
 	#clip_count{
 		z-index:2;
		float: left;
		margin-top : 13px;
		margin-left: 10px;
		color: gray;
		font-size: 14px;
	} 
	#spot_thema{
		z-index:2;
		float: left;
		height: 22px;
		width: 90px;
		background-image: url("${pageContext.request.contextPath}/resources/img/city/spot_tag.png");
		font-size: 13px;
		margin-top: 14px;
		margin-left: 100px;
		text-align: center;
	}
	#spot_thema img{
		height: 22px;
		width: 90px;
	}
	.openAll{
		width: 1092px;
		padding-top: 50px;
		margin-bottom: 50px;
		margin-left: 165px;
		text-align: center;
	}
	.openButton{
		width: 250px;
		height: 50px;
		text-align: center;
		font-weight: bold;
		font-size: 13px;
		color: 	#787878;
		background-color: white ;
		border: 1px solid #D8D8D8;
		border-radius: 4px;
	}
	#plan_All{
		background-color: #F8F8F8  ;
	}
	#plan{
		margin-left: 165px;
		text-align: center;
		margin-top: 60px;
		margin-bottom: 50px;
		width: 1092px;
	}
	#plan_list{
		width: 1092px;
		height: 340px;
		margin-left: 165px;
	}
	.plan_inner_list{
		float: left;
		width: 348px;
		height: 300px;
		border: 1px solid #D8D8D8;
	}
	#plan_img{
		margin-top: 20px;
		width: 330px;
		height: 210px;
		color: white;
		overflow: hidden;
	}
	#plan_img2{
		background: linear-gradient( to bottom,rgba(255,255,255,0) , rgba(0,0,0,30));
		height: 83px;
		width: 330px;
		z-index:90px;
		margin-top: 129px;	
		position: absolute;
	}
	#plan_title{
		width: 340px;
		height: 25px;
		color: white;
		padding-top:28px;
		padding-left: 8px;
	}
	#plan_date{
		width: 340px;
		height: 20px;
		font-weight: normal;
		color: white;
		padding-left: 8px;
		font-size: 13px;
	}
	#plan_content{
		width: 348px;
		height: 140px;
	}
	#plan_thema{
		padding-left: 20px;
		margin-top: 10px;
		height: 20px;
		width: 250px;
		color: #909090  ;
		font-size: 14px;
		float: left;
	}
	#plan_count{
		float: left;
		margin-top: 10px;
	}
	#plan_counts{
		float: left;
		width: 40px;
		margin-top: 8px;
		margin-left: 10px;
		color:#909090;
	}
	#memberImg{
		width: 30px;
		height: 15px;
		margin-left: 23px;
		margin-top: 5px;
		float: left;
	}
	#plan_id{
		margin-left: 7x;
		margin-top: 7px;
		height: 20px;
		width: 200px;
		color: #909090  ;
		font-size: 14px;
		float: left;
	}
	.planImg_list{
		width: 330px;
		height: 210px;
	}
	#plan2, #plan3{
		margin-left: 21px;
	}
	#community{
		text-align: center;
		padding-top: 40px;
		margin-top: 90px;
		margin-bottom: 50px;
	}
	#community_list{
		width: 1092px;
		margin-left: 165px;
	}
	#community_object{
		width:800px; 
		float: left;
		background-color: #F8F8F8  ;
		
	}
	#out_banner{
		float: left;
		width: 280px;
		height: auto;
		margin-left: 10px; 
	}
	#banner{
		position: fixed;
		width: 280px;
		height: 200px;
		position:absolute;
		border-radius: 4px;
		border: 1px solid #C8C8C8 ;
		background-color: white;
		/* left:1000px; 
		top:200px; */
	}
	#myImg{
		width: 55px;
		height: 55px;
		padding-top: 20px;
		background-color: aqua;
		border-radius: 50%;
	}
	#myName{
		width: 280px;
		height: 30px;
		text-align: center;
		color: #606060  ;
	}
	#banner_qna{
		width: 100px;
		height: 36px;
		margin-left:20px;
		margin-right:20px;
		margin-bottom:10px;
		float: left;
	}
	#banner_community{
		width: 100px;
		height: 36px;
		float: left;
		margin-left:20px;
		margin-right:20px;
		margin-bottom:10px;
	}
	#banner_myReview{
		width: 100px;
		height: 36px;
		float: left;
		margin-left:20px;
		margin-right:20px;
		margin-bottom:10px;
	}
	#banner_myPage{
		width: 100px;
		height: 36px;
		float: left;
		margin-left:20px;
		margin-right:20px;
		margin-bottom:10px;
	}
	.banner_button{
		width: 100px;
		height: 36px;
		background-color: white;
		border: 1px solid #C8C8C8;
		color: #888888;
		border-radius: 4px;
	}
	#banner_info{
		width: 280px;
		height: 150px;
	}
	#banner_userImg{
		/* width:80px;
		height: 80px;
		opacity:0.5;
		padding-left: 100px;
		padding-top:40px; */
		margin-left: 15px;
		margin-top: 10px;
	}
	.banner_button2{
		width: 116px;
		height:36px;
		float: left;
		background-color: white;
		border: 1px solid #C8C8C8;
		color: #888888;
		margin-left: 12px;
		margin-right: 12px;
		border-radius: 4px;
	}
	.community_inner_list{
		width: 800px; 
		height: 215px;
		font-size: 14px;
		border-bottom: 1px solid #C8C8C8;
	}
	.photo{
		margin-left: 15px;
		margin-top: 15px;
		width: 45px;
		height: 45px;
		float: left;
		background-color: aqua;
		border-radius:50%; 
	}
	.userId{
		float: left;
		height: 36px;
		width: 600px;
		margin-left: 20px;
		margin-top: 24px;
		color: #606060  ;
		font-weight: bold;
	}
	.community_regDate{
		height: 35px;
		width: 120px;
		float: left;
		margin-top: 25px;
		color: 	#888888 ;
	}
	.spot_like{
		overflow: hidden;
		width: 100px;
		height: 50px;
		padding-left: 80px;
		color: #E00000  ;
		margin: 0;
		float: left;
	}
	#spot_name{
		width: 530px;
		height: 50px;
		float: left;
		color:	#484848 ;
		font-size: 13px;
	}
	.community_contents{
		height: 60px;
		width: 630px;
		padding-left: 80px;
		overflow: hidden;
		margin: 0;
		color: 	#888888 ;
	}
	.upDel_button{
		height:30px;
		width: 75px;
		background-color: white;
		color: #606060;
		border: 1px solid #606060; 
		margin-left: 20px;
		border-radius: 4px;
	}
	#community_upDel{
		margin-left: 572px;
	}
/* 
#thema_menu img{
-webkit-transform:scale(0.8); /*Webkit: Scale down image to 0.8x original size*/
-moz-transform:scale(0.8); /*Mozilla scale version*/
-o-transform:scale(0.8); /*Opera scale version*/
-webkit-transition-duration: 0.5s; /*Webkit: Animation duration*/
-moz-transition-duration: 0.5s; /*Mozilla duration version*/
-o-transition-duration: 0.5s; /*Opera duration version*/
opacity: 0.7; /*initial opacity of images*/
margin: 0 10px 5px 0; /*margin between images*/
}

#thema_menu img:hover{
-webkit-transform:scale(1.1); /*Webkit: Scale up image to 1.2x original size*/
-moz-transform:scale(1.1); /*Mozilla scale version*/
-o-transform:scale(1.1); /*Opera scale version*/
box-shadow:0px 0px 30px gray; /*CSS3 shadow: 30px blurred shadow all around image*/
-webkit-box-shadow:0px 0px 30px gray; /*Safari shadow version*/
-moz-box-shadow:0px 0px 30px gray; /*Mozilla shadow version*/
opacity: 1;
}
	 */  
/* ==================================================이미지 슬라이드 */
/* Slideshow container */
* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;margin:0}

/* Slideshow container */
.slideshow-container {
  max-width: 561px;
  height:400px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 0;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
  
}

/* The dots/bullets/indicators */
.dot {
  cursor:pointer;
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .slprev, .slnext,.text {font-size: 11px}
}
/* ================================================================끝 이미지 슬라이드  */
</style>

<script type="text/javascript">
/* 	$(document).ready(function(){
		$("#banner").ScrollFollow({
			speed : 800,
			offset: 200
		});
	}); */

	    $(function() {
	      for(var i=1;i<3;i++){
	         $("#"+(i*4)).css("margin-right","0px");
	      }
	      
	       $("#plan_img").css("background-image","../resources/img/city/slideCity/img_nature_wide.jpg");
	       
	       $(".menu_name").mouseenter(function(){
	   			var id = $(this).attr("id");
	   			$("#"+id).css("background-color","white");
	   			$("#"+id).css("color","#330066");
   		
   			});   
	       $(".menu_name").mouseleave(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("background-color","#330066");
	   			$("#"+id).css("color","white");
	       });
	       $(".banner_button").mouseenter(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("background-color","#606060");
	    	   $("#"+id).css("color","white");
	       });
   		
	       $(".banner_button").mouseleave(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("background-color","white");
	   			$("#"+id).css("color","#606060");
	       });
	       $(".banner_button2").mouseenter(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("background-color","#606060");
	    	   $("#"+id).css("color","white");
	       });
   		
	       $(".banner_button2").mouseleave(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("background-color","white");
	   			$("#"+id).css("color","#606060");
	       });
	       
	       $(".plan_inner_list").mouseenter(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("border-color","#8dbff2");
	       });
	       $(".plan_inner_list").mouseleave(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("border-color","#D8D8D8");
	       });
	       
	       $(".popular_inner_list").mouseenter(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("border-color","#8dbff2");
	       })
	       $(".popular_inner_list").mouseleave(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("border-color","#D8D8D8");
	       })
	       
	       $('#banner').css('position', 'absolute');
	       $(window).scroll(function() {
	           var sclTop = $(this).scrollTop();
	           if (sclTop > 2810)
	           {
	               $('#banner').css('position', 'fixed').css('top', '100px').css('right','185px');        
	           }
	           else 
	           {$('#banner').css('position','absolute').css('top','2880px').css('right','185px');}
	       });
	       
	       $(".thema_image").mouseenter(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("border-color","#8dbff2");
	    	   $("#"+id).css("border-width","3px");
	   
	       });
	       
	       $(".thema_image").mouseleave(function(){
	    	   var id = $(this).attr("id");
	    	   $("#"+id).css("border-color","#D8D8D8");
	    	   $("#"+id).css("border-width","1px");
	       });
	       
	
		$("#back_menu").on("click",function(){
			location.href="./city";
		});
	   }); 
		    
		    var ele = document.getElementById("banner");
			var y = ele.scrollTop;
		    
		    $(document).ready(function(){
		    	        
		    		var currentPosition = parseInt($("#banner").css("top"));// slidemenu div가 top일 때의 px를 int형으로 변환 = 1
		    	    $(window).scroll(function(){// 스크롤바가 움직일 때 마다 콜백 한다
    	            var position = $(window).scrollTop();// 현재 스크롤의 top위치 스크롤 됐을 때만
	    	            //alert("currentPosition : " +currentPosition + " Position : " + position);
    	            $("#banner").stop().animate({"top":position+y+"px"},1000);
		    	    });   
			    		// slidemenu를 움직이기, animate메소드는 두개의 인자를 가진다
				    	// animate("속성","값") or 위치, 시간 
				    	// position :1 + currentPosition : 현재 스크롤의 top 위치.// 현재 스크롤의 top위치 스크롤 됐을 때만")
    	      	   
				    	
				    	
			});   
</script>
</head>
<body>
<!-- <body onload="InitializeM();"> -->

<div id ="section">
<div id="section_1">
		<div id="cityTitle"><h2>${cityView.e_name}&nbsp;&nbsp;&nbsp;&nbsp;${cityView.city_name}</h2></div>
		<div id="back_menu">
			<img src="${pageContext.request.contextPath}/resources/img/city/list.png" id="listImg">
			<input type="text" id="backText" value="지역목록" readonly="readonly">
		</div>
		<div id="h">
			<div class="menu_list"><input type="text" class="menu_name" id="menu_name_infomation" value="${cityView.city_name} 정 보" readonly="readonly"> </div>
			<div class="menu_list"><input type="text" class="menu_name" id="menu_name_spot" value=" 관 광 지 " readonly="readonly"></div>
			<div class="menu_list"><input type="text" class="menu_name" id="menu_name_plan" value="${cityView.city_name} 계 획" readonly="readonly"></div>
			<div class="menu_list"><input type="text" class="menu_name" id="menu_name_map" value="지 도" readonly="readonly"></div>
		</div>
		<div id="h2">
		 	<div id="city_image">
		 		<div class="slideshow-container">

				<div class="mySlides fade">
				  <div class="numbertext">1 / 3</div>
				  <img src="${pageContext.request.contextPath}/resources/img/city/cityIMG/${cityView.city_img1}" style="width:100%">
				  <div class="text"></div>
				</div>
				
				<div class="mySlides fade">
				  <div class="numbertext">2 / 3</div>
				  <img src="${pageContext.request.contextPath}/resources/img/city/cityIMG/${cityView.city_img2}" style="width:100%">
				  <div class="text"></div>
				</div>
				
				<div class="mySlides fade">
				  <div class="numbertext">3 / 3</div>
				 <img src="${pageContext.request.contextPath}/resources/img/city/cityIMG/${cityView.city_img3}" style="width:100%">
				  <div class="text"></div>
				</div>
				
				<a class="prev" onclick="plusSlides(-1)">❮</a>
				<a class="next" onclick="plusSlides(1)">❯</a>

				
				</div>
				<br>
				
				<div style="text-align:center">
				  <span class="dot" onclick="currentSlide(1)"></span> 
				  <span class="dot" onclick="currentSlide(2)"></span> 
				  <span class="dot" onclick="currentSlide(3)"></span> 
				</div>
		 	</div>
			<div id="weather">
				<h4>${cityView.city_name} 날씨</h4>
				<div id="weather_list">
				
				<c:forEach items="${weather}" var="wea">
					<div class="weather_day">
						<div class="day_text">
							<c:if test="${wea.day == '0' }">오늘</c:if>
							<c:if test="${wea.day == '1' }">내일</c:if>
							<c:if test="${wea.day == '2' }">모레</c:if>
							
							<c:if test="${wea.hour =='3' }">3:00</c:if>
							<c:if test="${wea.hour =='6' }">6:00</c:if>
							<c:if test="${wea.hour =='9' }">9:00</c:if>
							<c:if test="${wea.hour =='12' }">12:00</c:if>
							<c:if test="${wea.hour =='15' }">15:00</c:if>
							<c:if test="${wea.hour =='18' }">18:00</c:if>
							<c:if test="${wea.hour =='21' }">21:00</c:if>
							<c:if test="${wea.hour =='24' }">24:00</c:if> 
						</div>
						<div class="weather_img">
							<c:if test="${wea.wfKor== '맑음' }"><img src="${pageContext.request.contextPath}/resources/img/city/weather/sunny.png" class="weather_image"></c:if>
							<c:if test="${wea.wfKor== '구름 조금' }"><img src="${pageContext.request.contextPath}/resources/img/city/weather/partly_cloudy.png" class="weather_image"></c:if>
							<c:if test="${wea.wfKor== '구름 많음' }"><img src="${pageContext.request.contextPath}/resources/img/city/weather/cloudy.png" class="weather_image"></c:if>
							<c:if test="${wea.wfKor== '흐림' }"><img src="${pageContext.request.contextPath}/resources/img/city/weather/cloudy.png" class="weather_image"></c:if>
							<c:if test="${wea.wfKor== '비' }"><img src="${pageContext.request.contextPath}/resources/img/city/weather/rain.png" class="weather_image"></c:if>
							<c:if test="${wea.wfKor== '눈/비' }"><img src="${pageContext.request.contextPath}/resources/img/city/weather/rain.png" class="weather_image"></c:if>
							<c:if test="${wea.wfKor== '눈' }"><img src="${pageContext.request.contextPath}/resources/img/city/weather/rain.png" class="weather_image"></c:if>
						</div>
						<div class="weather_info">
							기 &nbsp;&nbsp;&nbsp;&nbsp;  온&nbsp;&nbsp;&nbsp;${weather['0'].temp} ℃<br>
							강수 확률&nbsp;&nbsp; ${weather['0'].pop} %<br>
							습 &nbsp;&nbsp;&nbsp;&nbsp;    도&nbsp;&nbsp;&nbsp;${weather['0'].reh} %
							
						</div>
					</div>
		
					</c:forEach>
				</div>
			</div> 
		</div>
</div>
		<div id="thema"><h1>여 행  테 마</h1></div>
		<div id="thema_menu">
			<div id="thema_1" class="thema_image"><img src="${pageContext.request.contextPath}/resources/img/city/landmark.jpg"></div>
			<div id="thema_2" class="thema_image"><img src="${pageContext.request.contextPath}/resources/img/city/dddp.jpg"></div>
		</div>	
<div id="section_2">
		<div id="popular"><h1>${cityView.city_name} 인기 장소</h1></div>
		<div id="popular_list">
		<c:forEach items="${spotView}" var="spot" varStatus="spot_list">
 		
			<div class="popular_inner_list" id="${spot_list.index+1}">
				<div id="spotIMG"><img src="${pageContext.request.contextPath}/resources/img/city/hj1.jpg" class="spot_img"></div>
				<div id="spotNAME">
					<div id="name_spot">&nbsp;&nbsp;&nbsp;&nbsp;${spot.spot_name}</div>	
					<div id="clip_img"><img src="${pageContext.request.contextPath}/resources/img/city/clip.png"></div>
					 <div id="clip_count">${spot.total}</div>
					<div id="spot_thema">테마파크<%-- <img src="${pageContext.request.contextPath}/resources/img/city/spot_tag.png"> --%></div>
							 
				</div>
			</div> 
		
		
		</c:forEach>
 		</div>	
		<div class="openAll"><input type="button" value="관 광 명 소    모 두 보 기" class="openButton"></div>
</div>
<!-- ====================================================================================================================================================== -->
		<div id="plan"><h1>${cityView.city_name} 인기 일정</h1></div>
		<div id="plan_list">
		
			<div id="plan1" class="plan_inner_list">
			
				<div id="plan_img" style="background: url('${pageContext.request.contextPath}/resources/img/city/main2.png'); background-size: 330px 210px;">
				<!-- <img src="../resources/img/city/main2.png" class="planImg_list"> -->
					<div id="plan_img2">
						<div id="plan_title">${planView['0'].plan_name}</div>
						<div id="plan_date">${planView['0'].s_date}-${planView['0'].f_date}</div>
					</div>
				</div>
				<div id="plan_content">
				
					<div id="plan_thema">
						<c:if test="${planView['0'].thema ==1 }">가족 여행</c:if>
						<c:if test="${planView['0'].thema ==2 }">친구와 함께</c:if>
						<c:if test="${planView['0'].thema ==3 }">커플 여행</c:if>
						<c:if test="${planView['0'].thema ==4 }">나홀로 여행</c:if>
					 </div>
					 <div id="plan_count"><img src="${pageContext.request.contextPath}/resources/img/city/countImg.png"></div>
					 <div id="plan_counts">${planView['0'].counts}</div>
					 <div id="memberImg"><img src="${pageContext.request.contextPath}/resources/img/city/member.png"></div>
					<div id="plan_id">${planView['0'].id}</div>
				</div>
			</div>
			<div id="plan2" class="plan_inner_list"></div>
			<div id="plan3" class="plan_inner_list"></div>
		<%-- 		<c:forEach items="${planView}" var="plan">
					${plan.plan_no}
					${plan.plan_name}
					${plan.s_date}
					${plan.season}
				</c:forEach> --%>
		</div>
		<div class="openAll"><input type="button" value="여 행 일 정    모 두 보 기" class="openButton" id="plan_All"></div>
		
	<!-- ====================================================================================================================================================== -->
	<div id="section_3">
		<div id="community"><h1>${cityView.city_name} 관광지 후기</h1></div>
		<div id="community_list">
			<div id="community_object">
				<!-- 커뮤니티 글이 하나씩 리스트로 보여짐 -->
				<hr>
				<c:forEach items="${cityReply}" var="cityRe">
					<div class="community_inner_list">
						<div class="photo"><img src="${pageContext.request.contextPath}/resources/img/member/${cityRe.m_img}"></div>
						<div class="userId">${cityRe.id}</div>
						<div class="community_regDate">${cityRe.reg_date}</div>
						<div class="spot_like">
							<c:if test="${cityRe.icon==1}">별로에요</c:if>
							<c:if test="${cityRe.icon==2}">괜찮아요</c:if>
							<c:if test="${cityRe.icon==3}">좋아요</c:if>
						</div>
						<div id="spot_name">${cityRe.spot_name}에 대한 리뷰</div>
						<div class="community_contents">${cityRe.contents}</div>
						<c:if test="${member.id == cityRe.id}">
							<div id="community_upDel"><input type="button" class="upDel_button" value="수정"><input type="button" class="upDel_button" value="삭제"></div>
						</c:if>
					</div>
				</c:forEach>
			</div>
			
			<div id="out_banner">
			<div id="banner">
				<c:if test="${empty member}">
					
					<div id="myImg"></div>
					<div id="myName">tjsdlswkd0216</div>
						
					<div id="banner_qna"><input type="button"value="Q & A" class="banner_button" id="qnaButton"></div>
					<div id="banner_community"><input type="button"value="커뮤니티" class="banner_button" id="cimmunityButton"></div>	
					<div id="banner_myReview"><input type="button"value="나의 리뷰" class="banner_button" id="myReviewButton"></div>	
					<div id="banner_myPage"><input type="button"value="마이페이지" class="banner_button" id="myPageButton"></div>
				</c:if>
				<c:if test="${not empty sessionScope.member}">
					<div id="banner_info"><img src="${pageContext.request.contextPath}/resources/img/city/user3.png" id="banner_userImg"></div>
					<div id=""><input type="button" id="login_button" value="로  그  인" class="banner_button2"></div>
					<div id=""><input type="button" id="join_button" value="회원  가입" class="banner_button2"></div>
				</c:if>
			
			</div>
			</div>
		</div>
	</div>
</div>
			
<script>


 var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
} 
</script>
</body>
</html>