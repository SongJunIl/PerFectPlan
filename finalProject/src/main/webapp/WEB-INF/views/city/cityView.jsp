<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	#cityTitle{
		margin-left: 165px;
		margin-top: 30px;
		margin-bottom: 10px;
		font-weight: bold;
		font-size: 15px;
	}
	#h{
		margin-left: 165px;	
		height: 50px;
		width: 1092px;
		margin-top: 10px;
		background-color: red;
	}
	.menu_list{
		height: 48px;
		width: 271px;
		float: left;
		text-align: center;
		border: 1px solid black;
		background-color: navy;
	}
	.menu_name{
		width : 265px;
		height: 45px;
		border: 0px;
		color: white;
		font-size: 20px;
		font-weight: bold;
		text-align: center;
		background-color: navy;
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
		background-color: fuchsia;
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
		background-color: aqua;
	}
	.thema_image{
		width: 364px;
		height: 350px;
		float: left;
	}
	#popular{
		text-align: center;
		margin-top: 50px;
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
		background-color: black;
		border: 1px solid gray;
		margin-right:10px;
   		margin-bottom: 10px;
	}
	.openAll{
		width: 1092px;
		margin-top: 50px;
		margin-bottom: 50px;
		margin-left: 165px;
		text-align: center;
		background-color: aqua;
	}
	.openButton{
		width: 180px;
		height: 50px;
		text-align: center;
		font-weight: bold;
		font-size: 13px;
		color: 	#787878;
		background-color: #E8E8E8 ;
		border: 1px solid black;
	}
	#plan{
		margin-left: 165px;
		text-align: center;
		margin-top: 90px;
		margin-bottom: 50px;
		width: 1092px;
	}
	#plan_list{
		width: 1092px;
		height: 260px;
		margin-left: 165px;
		background-color: aqua;
	}
	#community{
		text-align: center;
		margin-top: 90px;
		margin-bottom: 50px;
	}
	#community_list{
		width: 1092px;
		margin-left: 165px;
		background-color: aqua;
	}
	#community_object{
		width:800px; 
		background:#CCC;
		float: left;
	}
	#banner{
		float: left;
		width: 280px;
		height: 300px;
		margin-left: 10px; 
		background-color: yellow;
		
		position:relative;
		/* left:1000px; 
		top:200px; */
	}
	.community_inner_list{
		width: 800px; 
		height: 200px;
		background-color: black;
		border: 1px solid white;
	}
	.photo{
		width: 40px;
		height: 40px;
		background-color: aqua;
		float: left;
		margin-top: 30px;
	}
	 .community_user_text{
	 	width: 200px;
	 	height: 40px;
	 	background-color: white;
	 	margin-left: 20px;
	 	margin-top: 30px;
	 	float: left;
	}
	#community_contents{
		width:800px;
		height: 80px; 
		overflow: hidden;
		padding-top: 20px;
		padding-left: 60px;
		background-color: white;
		
	}
	
/* 이미지 슬라이드 */
/* Slideshow container */
.slideshow-container {
  max-width: 561px;
  height: 400px;
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
/* 끝 이미지 슬라이드  */
</style>

<script type="text/javascript">
/* 	$(document).ready(function(){
		$("#banner").ScrollFollow({
			speed : 800,
			offset: 200
		});
	}); */

   /* $(function() {
      for(var i=1;i<3;i++){
         $("#"+(i*4)).css("margin-right","0px");
         
      }
   }); */
   
   //scroll the message box to the top offset of browser's scrool bar  
   $(window).scroll(function()  
   {  
       $('#banner').animate({top:$(window).scrollTop()+"px" },{queue: false, duration: 900});    
   });  
   //when the close button at right corner of the message box is clicked   
   $('#banner').click(function()  
   {  
       //the messagebox gets scrool down with top property and gets hidden with zero opacity   
       $('#banner').animate({ top:"+=15px",opacity:0 }, "slow");  
   });  

</script>
</head>
<body>
<div id ="section">
		<div id="cityTitle"><h2>SEOUL</h2></div>
		<div id="h">
			<div class="menu_list"><input type="text" class="menu_name" value="H O M E" readonly="readonly"> </div>
			<div class="menu_list"><input type="text" class="menu_name" value="A T T R A C T I O N" readonly="readonly"></div>
			<div class="menu_list"><input type="text" class="menu_name" value="T R A V E L P L A N" readonly="readonly"></div>
			<div class="menu_list"><input type="text" class="menu_name" value="M A P" readonly="readonly"></div>
		</div>
		<div id="h2">
		 	<div id="city_image">
		 		<div class="slideshow-container">

				<div class="mySlides fade">
				  <div class="numbertext">1 / 3</div>
				  <img src="/resources/img/city/slideCity/img_nature_wide.jpg" style="width:100%" >
				  <div class="text">Caption Text</div>
				</div>
				
				<div class="mySlides fade">
				  <div class="numbertext">2 / 3</div>
				  <img src="/resources/img/city/slideCity/img_fjords_wide.jpg" style="width:100%" >
				  <div class="text">Caption Two</div>
				</div>
				
				<div class="mySlides fade">
				  <div class="numbertext">3 / 3</div>
				  <img src="/resources/img/city/slideCity/img_mountains_wide.jpg" style="width:100%" >
				  <div class="text">Caption Three</div>
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
				<div id="month"></div>
				<div id="week"></div>
			</div> 
		</div>
		<div id="thema"><h2>TRAVEL THEMA</h2></div>
		<div id="thema_menu">
			<div id="thema_1" class="thema_image"></div>
			<div id="thema_2" class="thema_image"></div>
			<div id="thema_3" class="thema_image"></div>
		</div>	
		<div id="popular"><h2>인기 장소</h2></div>
		<div id="popular_list">
		<%for(int i=0;i<8;i++){ %>
			<div class="popular_inner_list" id="<%=i+1%>">
					
			</div>
		<%} %>
		</div>	
		<div class="openAll"><input type="button" value="관광명소 모두 보기" class="openButton"></div>
		<div id="plan"><h2>서울 인기 일정</h2></div>
		<div id="plan_list"></div>
		<div class="openAll"><input type="button" value="여행일정 모두 보기" class="openButton"></div>
		<div id="community"><h2>서울 커뮤니티</h2></div>
		<div id="community_list">
			<div id="community_object">
				<!-- 커뮤니티 글이 하나씩 리스트로 보여짐 -->
				<%for(int i=0;i<8;i++){ %>
				<div class="community_inner_list">
					<div class="photo"></div>
					<div class="community_user_text">
						<div id="idDate"></div>
						<div id="counts"></div>
					</div>
					<div id="community_contents"></div>
				</div>
				<%} %>
			</div>
			<div id="banner"></div>
	
</div>

			<!--   <div id="quick" style="position: absolute; top: 200px; border:solid 3px #336699; width:150px; height:150px;"></div> -->
			
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
  if (n < 1) {slideIndex = slides.length} ;
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