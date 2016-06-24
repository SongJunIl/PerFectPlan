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
		margin: 0px;
	}
	#body_header{
		height: 500px;
		width: 1440px;
		overflow: hidden;
		background-image:url("${pageContext.request.contextPath}/resources/img/city/section1_bg.jpg");
	}
/* 검색 상자 */
	#searchBox{
		width: 570px;
		height: 110px;
		margin-top: 195px;
		margin-left: 430px;
		opacity: 0.5;
		background-color: black;
		overflow: hidden;
	}
	#searchText{
		width: 460px;
		height: 50px;
		margin-left: 20px;
		margin-top : 28px;
		font-size: 17px;
		font-weight: bold;
		background-color: white;
		float: left;
	}	 
	#SearchImg{
		width: 50px;
		height: 54px;
		float: left;
		margin-top: 28px;
		margin-left: 15px;
		opacity: 0.5;
		background-color: black;
		background-image:url("${pageContext.request.contextPath}/resources/img/city/magnifier.png");
	}
	#viewMap{
		float: left;
		background-color: aqua;
		width: 10px;
		height: 10px;
	}
/* 	.arrowImg{
		 -webkit-transform: rotate(180deg); 
	} */
/*	#body_header{
		height: 400px;
		width: 1440px;
		overflow: hidden;
		background-image:url("${pageContext.request.contextPath}/resources/img/city/main2.png");
	}*/
/* 검색 상자 */
/* 	#searchBox{
		width: 570px;
		height: 110px;
		margin-top: 135px;
		margin-left: 430px;
		opacity: 0.5;
		background-color: black;
		overflow: hidden;
	} */
/* 검색 text 부분 */
/* 	#CitySearch{
		width: 455px;
		height: 50px;
		float: left;
		margin-left: 13px;
		padding-top: 29px;
	}
	#search{
		width: 450px;
		height: 50px;
		font-size: 20px; 
		font-weight: bold;
		margin-left: 23px;
		/* margin-top: 35px; */  
	/* 	background-color: white; */
	} */
/* 검색 이미지 */
/* 	#SearchImg{
		width: 65px;
		height: 55px;
		float: left;
		margin-top: 29px;
		background-color: white;
	}
	#magnifier{
		height: 52px;\
		width: 50px;
		
	}  */
	

	
/*  */
	#city{
		height: auto;
		width: 1440px;
		background-color: #f8f8fa; 
		margin-top: 0px;
		/* overflow: hidden; */
	}
	#city_title{
		height: 110px;
		margin: 0px auto;
		text-align: center;
		overflow: hidden;
		background-color: #f8f8fa;
	}
	#city_title_2{
		padding-top: 30px;
	}
	 #city_list{
		/* width : 1087px; */
		width: 1440px;
		height: auto;
		margin: 0 auto;
		overflow: hidden;
		background-color: #f8f8fa;
	} 
	.detail_city{
		/* width: 1085px; */
		width: 1440px;
		height: auto;
		display: none;
	}
 	.list_table{
		width: 1068px;
		height: auto;
		color: #555555; 
		margin: 0 auto;
		font-size: 13px;
		text-align: center;
		border-spacing: 0px;
		background-color: white;
		border-collapse: collapse;
		border: 1px solid #cfcfcf;
	}
	#outerTable tr{
		height: 55px;
		border: 1px solid #D0D0D0   ;	
	}
	#list_table tr{
		height: 35px;
		border: 1px solid  #cfcfcf;
		border-collapse: collapse;
		border-spacing: 0px;
	} 
	#list_inner_table{
		background-color: #fafafa;
		font-size: 13px;
		color: #808080;
		border: none;
		border-bottom: 1px solid #c8c8ca;
		border-left: 1px solid #c8c8ca;
		border-right: 1px solid #c8c8ca;;
	}
	#list_inner_table tr{
		height: 40px;
	}
	#city2{
		width: 1440px;
		height: 50px;
		background-color: #f8f8fa;
	}
	#topeight{
	}
	#city2_title{
		margin: 35px auto;
		text-align: center;
		overflow: hidden;
	}
	#cityimg_list{
		width: 1210px;
		
		height: 520;
		margin : 0 auto;
		margin-left: 170px; 
		background-color: fuchsia;
	}
	#left{
		width: 810px;
		height: 540px;
		float: left;	
		/* background-color: black; */
	}
	#right{
		width: 280px;
		height: 540px;
		float: left;
		/* background-color: aqua; */
	}
	.list_img{
		width: 260px;
		height: 260px;
		margin-left: 10px;
		margin-bottom: 10px;
		float: left;
		font-size: 40px;
		color:white;
		font-weight: bold;
		/* background-color: yellow; */	
	}
	#list_img1{
		width: 530px;
		height: 260px;
		float: left;
		margin-left: 10px;
		margin-bottom: 10px;
		background-color: gray;
		font-size: 40px;
		color:white;
		font-weight: bold;
	}
	#list_img1 h2{
		padding-top: 90px;
		padding-left: 200px;
	}
	.list_img h2{
		padding-top: 90px;
		padding-left: 70px;
	}
	#list_img2 h2{
		padding-top: 200px;
		padding-left: 70px;
	}
	#list_img2{
		width: 270px;
		height: 530px;
		float: left;
		margin-left: 10px;
		margin-bottom: 10px;
		background-color: navy;
		font-size: 40px;
		color:white;
		font-weight: bold;
	}
	.bigCity{
		width: 60px;
		height: 40px;
		border: 0px;
		color: #909090;
		font-size: 15px;
		text-align: center;
	}
	#bigCity{
		width: 60px;
		height: 40px;
		border: 0px;
		color: #909090;
		font-size: 15px;
		text-align: center;
	}
	#arrowImg{
		overflow: hidden;
		padding-top: 15px;
	}
	.smallCity{
		width: 60px;
		height: 40px;
		border: 0px;
		color: #909090;
		font-size: 15px;
		text-align: center;
	}
	#city_map{
		border: 0px;
		color: white;
		text-align:right;
		margin-left: 380px;
		background-color: black; 
	}
	a{
		text-decoration: none;
		color: gray;
	}
	a:VISITED {
		color:gray;
	}
	a:HOVER{
		color:gray;
	}
</style>
<script type="text/javascript">

		$(document).ready(function(){
/* 			  $(".smallCity").mouseenter(function(){
		    	   var id = $(this).attr("id");
		    	   $("#"+id).css("color","#1a7ad9");
		    	   $("#"+id).css("font-weight","bold");
		       });
		       $(".smallCity").mouseleave(function(){
		    	   var id = $(this).attr("id");
		   			$("#"+id).css("color","#909090");
		   			$("#"+id).css("font-weight","lighter");
		       });
		       $(".bigCity").mouseenter(function(){
		    	   var id = $(this).attr("id");
		    	   $("#"+id).css("color","#1a7ad9");
		    	   $("#"+id).css("font-weight","bold");
		       });
		       $(".bigCity").mouseleave(function(){
		    	   var id = $(this).attr("id");
		   			$("#"+id).css("color","#909090");
		   			$("#"+id).css("font-weight","lighter");
		       }); */
		       
		       
		    $(".bigCity").click(function(){
		    	var id = $(this).attr("id");
		    	if( $("#"+id+"_detailCity").css("display") == "block"){
		    		$("#"+id+"_detailCity").slideUp("quick");
		    		$("#"+id).css("color","#909090");
		    		$("#"+id).css("font-weight","lighter");
		    	}else{
		    		$(".bigCity").css("color", "gray");
		    		$(".bigCity").css("font-weight", "lighter");
			    	$(".detail_city").slideUp("quick");
			    	$("#"+id).css("color","#1a7ad9");
			    	$("#"+id).css("font-weight","bold");
			    	
			    	/* $(".arrowImg").css("-webkit-transform","rotate(180deg)") */
			        $("#"+id+"_detailCity").slideDown("quick");
		    	}
		    });
	
		
			$("#SearchImg").on('click',function(){
				var search = $("#searchText").val();
				location.href = "./searchCity?search="+search;
			});		
			
			$(".gogo").on('click',function(){
				var id = $(this).attr("id");
				var city_ename = $("#hidden_ename_"+id).val();
				var city_no = $("#hidden_no_"+id).val();
				location.href="./cityView?e_name="+city_ename+"&city_no="+city_no;
			});
			
		});
		
</script>
</head>
<body>
<!-- 상단에 검색 부분 -->
<div id="body_header">
	<div id="searchBox">
		<input type="text" id="searchText" name="searchText" placeholder="  지역명 , 관광지명을 검색">
		<div id="SearchImg"></div>
		<div id="viewMap"></div>
	
	</div>
</div>
<!-- 도시 리스트 뜨는 부분 -->
<div id="city">
	<div id="city_title"><h2 id="city_title_2">국내 도시</h2></div>
	<div id="city_list">
		<table class="list_table" id="outerTable">
			<tr>
				<td><a href="cityView?e_name=Gwangju&city_no=156"><input type="text" value="광주" class="smallCity" readonly="readonly" id="gj"></a></td>
				<td><a href="cityView?e_name=Daegu&city_no=157"><input type="text" value="대구" class="smallCity" readonly="readonly" id="dg"></a></td>
				<td><a href="cityView?e_name=Daejeon&city_no=158"><input type="text" value="대전" class="smallCity" readonly="readonly" id="dj"></a></td>
				<td><a href="cityView?e_name=Busan&city_no=159"><input type="text" value="부산" class="smallCity" readonly="readonly" id="bs"></a></td>
				<td><a href="cityView?e_name=Seoul&city_no=160"><input type="text" value="서울" class="smallCity" readonly="readonly" id="su"></a></td>
				<td><a href="cityView?e_name=Ulsan&city_no=161"><input type="text" value="울산" class="smallCity" readonly="readonly" id="us"></a></td>
				<td><a href="cityView?e_name=Incheon&city_no=162"><input type="text" value="인천" class="smallCity"readonly="readonly" id="ic"></a></td>
				<td><a href="cityView?e_name=Jeju&city_no=163"><input type="text" value="제주도" class="smallCity" readonly="readonly" id="jjd"></a></td>
			</tr>
			<tr>
				<td><input type="text" value="강원도" onclick="drop_city()" class="bigCity" id="gangWon" readonly="readonly"><img src="${pageContext.request.contextPath}/resources/img/city/arrowDown.png" id="arrowImg"></td>
				<td><input type="text" value="경기도" onclick="drop_city()" class="bigCity" id="gyeonGi" readonly="readonly"><img src="${pageContext.request.contextPath}/resources/img/city/arrowDown.png"></td>
				<td><input type="text" value="경상남도" onclick="drop_city()" class="bigCity" id="gsn" readonly="readonly">&nbsp;<img src="${pageContext.request.contextPath}/resources/img/city/arrowDown.png"></td>
				<td><input type="text" value="경상북도" onclick="drop_city()" class="bigCity" id="gsb"readonly="readonly">&nbsp;<img src="${pageContext.request.contextPath}/resources/img/city/arrowDown.png"></td>
				<td><input type="text" value="전라남도" onclick="drop_city()" class="bigCity" id="jln"readonly="readonly">&nbsp;<img src="${pageContext.request.contextPath}/resources/img/city/arrowDown.png"></td>
				<td><input type="text" value="전라북도" onclick="drop_city()" class="bigCity" id="jlb" readonly="readonly">&nbsp;<img src="${pageContext.request.contextPath}/resources/img/city/arrowDown.png"></td>
				<td><input type="text" value="충청남도" onclick="drop_city()" class="bigCity" id="ccn" readonly="readonly">&nbsp;<img src="${pageContext.request.contextPath}/resources/img/city/arrowDown.png"></td>
				<td><input type="text" value="충청북도" readonly="readonly" class="bigCity" id="ccb">&nbsp;<img src="${pageContext.request.contextPath}/resources/img/city/arrowDown.png"></td>
			</tr>
		</table> 
		<div id="gangWon_detailCity" class="detail_city">
			<table class="list_table" id="list_inner_table">
				<tr><td>	<a href="cityView?e_name=Gangneung&city_no=1&lat=92&lon=131">강릉</a>	</td><td>	<a href="cityView?e_name=Goseong &city_no=2&lat=85&lon=145">고성</a>	</td><td>	<a href="cityView?e_name=Donghae&city_no=3&lat=97&lon=127">동해</a>	</td><td>	<a href="cityView?e_name=Samcheok&city_no=4&lat=98&lon=125">삼척</a>	</td><td>	<a href="cityView?e_name=Sokcho&city_no=5&lat=87&lon=141">속초</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Yanggu &city_no=6&lat=77&lon=139">양구</a>	</td><td>	<a href="cityView?e_name=Yangyang &city_no=7&lat=88&lon=138">양양</a>	</td><td>	<a href="cityView?e_name=Yeongwol &city_no=8&lat=86&lon=119">영월</a>	</td><td>	<a href="cityView?e_name=Wonju&city_no=9&lat=76&lon=122">원주</a>	</td><td>	<a href="cityView?e_name=Inje &city_no=10&lat=80&lon=138">인제</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Jeongseon &city_no=11&lat=89&lon=123">정선</a>	</td><td>	<a href="cityView?e_name=Cheorwon &city_no=12&lat=65&lon=139">철원</a>	</td><td>	<a href="cityView?e_name=Chuncheon&city_no=13&lat=73&lon=134">춘천</a>	</td><td>	<a href="cityView?e_name=Taebaek&city_no=14&lat=95&lon=119">태백</a>	</td><td>	<a href="cityView?e_name=Pyeongchang &city_no=15&lat=84&lon=123">평창</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Hongcheon &city_no=16&lat=75&lon=130">홍천</a>	</td><td>	<a href="cityView?e_name=Hwacheon &city_no=17&lat=72&lon=139">화천</a>	</td><td>	<a href="cityView?e_name=Hoengseong &city_no=18&lat=77&lon=125">횡성</a>	</td><td>		</td><td>		</td></tr>
			</table>
		</div>
		<div id="gyeonGi_detailCity" class="detail_city">
			<table class="list_table" id="list_inner_table">
				<tr><td>	<a href="cityView?e_name=Gapyeong&city_no=19&lat=69&lon=133">가평</a>	</td><td>	<a href="cityView?e_name=Goyang&city_no=20&lat=57&lon=128">고양</a>	</td><td>	<a href="cityView?e_name=Gwacheon&city_no=21&lat=60&lon=124">과천</a>	</td><td>	<a href="cityView?e_name=Gwangmyeong&city_no=22&lat=58&lon=125">광명</a>	</td><td>	<a href="cityView?e_name=Gwangju&city_no=23&lat=65&lon=123">광주</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Guri&city_no=24&lat=62&lon=127">구리</a>	</td><td>	<a href="cityView?e_name=Gunpo&city_no=25&lat=59&lon=122">군포</a>	</td><td>	<a href="cityView?e_name=Gimpo&city_no=26&lat=55&lon=128">김포</a>	</td><td>	<a href="cityView?e_name=Namyangju&city_no=27&lat=64&lon=128">남양주</a>	</td><td>	<a href="cityView?e_name=Dongducheon&city_no=28&lat=61&lon=134">동두천</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Bucheon&city_no=29&lat=57&lon=125">부천</a>	</td><td>	<a href="cityView?e_name=Seongnam&city_no=30&lat=62&lon=123">성남</a>	</td><td>	<a href="cityView?e_name=Suwon&city_no=31&lat=60&lon=121">수원</a>	</td><td>	<a href="cityView?e_name=Siheung&city_no=32&lat=57&lon=123">시흥</a>	</td><td>	<a href="cityView?e_name=Ansan&city_no=33&lat=58&lon=121">안산</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Anseong&city_no=34&lat=65&lon=115">안성</a>	</td><td>	<a href="cityView?e_name=Anyang&city_no=35&lat=59&lon=123">안양</a>	</td><td>	<a href="cityView?e_name=Yangju&city_no=36&lat=61&lon=131">양주</a>	</td><td>	<a href="cityView?e_name=Yangpyeong&city_no=37&lat=69&lon=125">양평</a>	</td><td>	<a href="cityView?e_name=Yeoju&city_no=38&lat=71&lon=121">여주</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Yeoncheon&city_no=39&lat=61&lon=138">연천</a>	</td><td>	<a href="cityView?e_name=Osan&city_no=40&lat=62&lon=118">오산</a>	</td><td>	<a href="cityView?e_name=Yongin&city_no=41&lat=64&lon=119">용인</a>	</td><td>	<a href="cityView?e_name=Uiwang&city_no=42&lat=60&lon=122">의왕</a>	</td><td>	<a href="cityView?e_name=Uijeongbu&city_no=43&lat=61&lon=130">의정부</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Icheon&city_no=44&lat=68&lon=121">이천</a>	</td><td>	<a href="cityView?e_name=Paju&city_no=45&lat=56&lon=131">파주</a>	</td><td>	<a href="cityView?e_name=Pyeongtaek&city_no=46&lat=62&lon=114">평택</a>	</td><td>	<a href="cityView?e_name=Pocheon&city_no=47&lat=64&lon=134">포천</a>	</td><td>	<a href="cityView?e_name=Hanam&city_no=48&lat=64&lon=126">하남</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Hwaseong&city_no=49&lat=57&lon=119">화성</a>	</td><td>		</td><td>		</td><td>		</td><td>		</td></tr>

			</table>
		</div>
		<div id="gsn_detailCity" class="detail_city">
			<table class="list_table" id="list_inner_table">
  				<tr><td>	<a href="cityView?e_name=Geoje&city_no=50&lat=90&lon=69">거제</a>	</td><td>	<a href="cityView?e_name=Geochang &city_no=51&lat=77&lon=86">거창</a>	</td><td>	<a href="cityView?e_name=Goseong &city_no=52&lat=85&lon=71">고성</a>	</td><td>	<a href="cityView?e_name=Gimhae&city_no=53&lat=95&lon=77">김해</a>	</td><td>	<a href="cityView?e_name=Namhae &city_no=54&lat=77&lon=68">남해</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Masan&city_no=55&lat=89&lon=76">마산</a>	</td><td>	<a href="cityView?e_name=Miryang&city_no=56&lat=92&lon=83">밀양</a>	</td><td>	<a href="cityView?e_name=Sacheon&city_no=57&lat=80&lon=71">사천</a>	</td><td>	<a href="cityView?e_name=Sancheong &city_no=58&lat=76&lon=80">산청</a>	</td><td>	<a href="cityView?e_name=Yangsan&city_no=59&lat=97&lon=79">양산</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Uiryeong &city_no=60&lat=83&lon=78">의령</a>	</td><td>	<a href="cityView?e_name=Jinju&city_no=61&lat=81&lon=75">진주</a>	</td><td>	<a href="cityView?e_name=Jinhae&city_no=62&lat=91&lon=75">진해</a>	</td><td>	<a href="cityView?e_name=Changnyeong &city_no=63&lat=87&lon=83">창녕</a>	</td><td>	<a href="cityView?e_name=Changwon&city_no=64&lat=90&lon=77">창원</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Tongyeong&city_no=65&lat=87&lon=68">통영</a>	</td><td>	<a href="cityView?e_name=Hadong &city_no=66&lat=74&lon=73">하동</a>	</td><td>	<a href="cityView?e_name=Haman &city_no=67&lat=86&lon=77">함안</a>	</td><td>	<a href="cityView?e_name=Hamyang &city_no=68&lat=74&lon=82">함양</a>	</td><td>	<a href="cityView?e_name=Hapcheon &city_no=69&lat=81&lon=84">합천</a>	</td></tr>

			</table>
		</div>
		<div id="gsb_detailCity" class="detail_city">
			<table class="list_table" id="list_inner_table">
				<tr><td>	<a href="cityView?e_name=Gyeongsan&city_no=70&lat=91&lon=90">경산</a>	</td><td>	<a href="cityView?e_name=Gyeongju&city_no=71&lat=100&lon=91">경주</a>	</td><td>	<a href="cityView?e_name=Goryeong &city_no=72&lat=83&lon=87">고령</a>	</td><td>	<a href="cityView?e_name=Gumi&city_no=73&lat=84&lon=96">구미</a>	</td><td>	<a href="cityView?e_name=Gunwi &city_no=74&lat=88&lon=99">군위</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Gimcheon&city_no=75&lat=80&lon=96">김천</a>	</td><td>	<a href="cityView?e_name=Mungyeong&city_no=76&lat=81&lon=106">문경</a>	</td><td>	<a href="cityView?e_name=Bonghwa &city_no=77&lat=90&lon=113">봉화</a>	</td><td>	<a href="cityView?e_name=Sangju&city_no=78&lat=81&lon=102">상주</a>	</td><td>	<a href="cityView?e_name=Seongju &city_no=79&lat=83&lon=91">성주</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Andong&city_no=80&lat=91&lon=106">안동</a>	</td><td>	<a href="cityView?e_name=Yeongdeok &city_no=81&lat=102&lon=103">영덕</a>	</td><td>	<a href="cityView?e_name=Yeongyang &city_no=82&lat=97&lon=108">영양</a>	</td><td>	<a href="cityView?e_name=Yeongju&city_no=83&lat=89&lon=111">영주</a>	</td><td>	<a href="cityView?e_name=Yeongcheon&city_no=84&lat=95&lon=93">영천</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Yecheon&city_no=85&lat=86&lon=107">예천</a>	</td><td>	<a href="cityView?e_name=Ulleung &city_no=86&lat=127&lon=127">울릉</a>	</td><td>	<a href="cityView?e_name=Uljin &city_no=87&lat=102&lon=115">울진</a>	</td><td>	<a href="cityView?e_name=Uiseong &city_no=88&lat=90&lon=101">의성</a>	</td><td>	<a href="cityView?e_name=Cheongdo &city_no=89&lat=91&lon=86">청도</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Cheongsong &city_no=90&lat=97&lon=103">청송</a>	</td><td>	<a href="cityView?e_name=Chilgok &city_no=91&lat=85&lon=93">칠곡</a>	</td><td>	<a href="cityView?e_name=Pohang&city_no=92&lat=102&lon=94">포항</a>	</td><td>		</td><td>		</td></tr>

			</table>
		</div>
		<div id="jln_detailCity" class="detail_city">
			<table class="list_table" id="list_inner_table">
				<tr><td>	<a href="cityView?e_name=Gangjin &city_no=93&lat=57&lon=63">강진</a>	</td><td>	<a href="cityView?e_name=Goheung &city_no=94&lat=66&lon=62">고흥</a>	</td><td>	<a href="cityView?e_name=Gokseong &city_no=95&lat=66&lon=77">곡성</a>	</td><td>	<a href="cityView?e_name=Gwangyang&city_no=96&lat=73&lon=70">광양</a>	</td><td>	<a href="cityView?e_name=Gurye &city_no=97&lat=69&lon=75">구례</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Naju&city_no=98&lat=56&lon=71">나주</a>	</td><td>	<a href="cityView?e_name=Damyang &city_no=99&lat=61&lon=78">담양</a>	</td><td>	<a href="cityView?e_name=Mokpo&city_no=100&lat=50&lon=67">목포</a>	</td><td>	<a href="cityView?e_name=Muan &city_no=101&lat=52&lon=71">무안</a>	</td><td>	<a href="cityView?e_name=Boseong &city_no=102&lat=62&lon=66">보성</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Suncheon&city_no=103&lat=70&lon=70">순천</a>	</td><td>	<a href="cityView?e_name=Sinan &city_no=104&lat=50&lon=66">신안</a>	</td><td>	<a href="cityView?e_name=Yeosu&city_no=105&lat=73&lon=66">여수</a>	</td><td>	<a href="cityView?e_name=Yeonggwang &city_no=106&lat=52&lon=77">영광</a>	</td><td>	<a href="cityView?e_name=Yeongam &city_no=107&lat=56&lon=66">영암</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Wando &city_no=108&lat=57&lon=56">완도</a>	</td><td>	<a href="cityView?e_name=Jangseong &city_no=109&lat=57&lon=77">장성</a>	</td><td>	<a href="cityView?e_name=Jangheung &city_no=110&lat=59&lon=64">장흥</a>	</td><td>	<a href="cityView?e_name=Jindo &city_no=111&lat=48&lon=59">진도</a>	</td><td>	<a href="cityView?e_name=Hampyeong &city_no=112&lat=52&lon=72">함평</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Haenam &city_no=113&lat=54&lon=61">해남</a>	</td><td>	<a href="cityView?e_name=Hwasun &city_no=114&lat=61&lon=72">화순</a>	</td><td>		</td><td>		</td><td>		</td></tr>

			</table>
		</div>
		<div id="jlb_detailCity" class="detail_city">
			<table class="list_table" id="list_inner_table">
				<tr><td>	<a href="cityView?e_name=Gochang &city_no=115&lat=56&lon=80">고창</a>	</td><td>	<a href="cityView?e_name=Gunsan&city_no=116&lat=56&lon=92">군산</a>	</td><td>	<a href="cityView?e_name=Gimje&city_no=117&lat=59&lon=88">김제</a>	</td><td>	<a href="cityView?e_name=Namwon&city_no=118&lat=68&lon=80">남원</a>	</td><td>	<a href="cityView?e_name=Muju &city_no=119&lat=72&lon=93">무주</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Buan &city_no=120&lat=56&lon=87">부안</a>	</td><td>	<a href="cityView?e_name=Sunchang &city_no=121&lat=63&lon=79">순창</a>	</td><td>	<a href="cityView?e_name=Wanju &city_no=122&lat=63&lon=89">완주</a>	</td><td>	<a href="cityView?e_name=Iksan&city_no=123&lat=60&lon=91">익산</a>	</td><td>	<a href="cityView?e_name=Imsil &city_no=124&lat=66&lon=84">임실</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Jangsu &city_no=125&lat=70&lon=85">장수</a>	</td><td>	<a href="cityView?e_name=Jeonju&city_no=126&lat=63&lon=89">전주</a>	</td><td>	<a href="cityView?e_name=Jeongeup&city_no=127&lat=58&lon=83">정읍</a>	</td><td>	<a href="cityView?e_name=Jinan &city_no=128&lat=68&lon=88">진안</a>	</td><td>		</td></tr>

			</table>
		</div>
		<div id="ccn_detailCity" class="detail_city">
			<table class="list_table" id="list_inner_table">
				<tr><td>	<a href="cityView?e_name=Gongju&city_no=129&lat=63&lon=102">공주</a>	</td><td>	<a href="cityView?e_name=Geumsan &city_no=130&lat=69&lon=95">금산</a>	</td><td>	<a href="cityView?e_name=Nonsan&city_no=131&lat=62&lon=97">논산</a>	</td><td>	<a href="cityView?e_name=Dangjin&city_no=132&lat=54&lon=112">당진</a>	</td><td>	<a href="cityView?e_name=Boryeong&city_no=133&lat=54&lon=100">보령</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Buyeo &city_no=134&lat=59&lon=99">부여</a>	</td><td>	<a href="cityView?e_name=Seosan&city_no=135&lat=51&lon=110">서산</a>	</td><td>	<a href="cityView?e_name=Seocheon &city_no=136&lat=55&lon=94">서천</a>	</td><td>	<a href="cityView?e_name=Asan&city_no=137&lat=60&lon=110">아산 </a>	</td><td>	<a href="cityView?e_name=Yesan &city_no=138&lat=58&lon=107">예산 </a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Cheonan&city_no=139&lat=63&lon=112">천안 </a>	</td><td>	<a href="cityView?e_name=Cheongyang &city_no=140&lat=57&lon=103">청양 </a>	</td><td>	<a href="cityView?e_name=Taean &city_no=141&lat=48&lon=109">태안 </a>	</td><td>	<a href="cityView?e_name=Hongseong &city_no=142&lat=55&lon=106">홍성 </a>	</td><td>	<a href="cityView?e_name=Gyeryong&city_no=143&lat=65&lon=99">계룡</a>	</td></tr>

			</table>
		</div>
		<div id="ccb_detailCity" class="detail_city">
			<table class="list_table" id="list_inner_table">
				<tr><td>	<a href="cityView?e_name=Goesan &city_no=144&lat=74&lon=111">괴산 </a>	</td><td>	<a href="cityView?e_name=Danyang &city_no=145&lat=84&lon=115">단양 </a>	</td><td>	<a href="cityView?e_name=Boeun &city_no=146&lat=73&lon=103">보은 </a>	</td><td>	<a href="cityView?e_name=Yeongdong &city_no=147&lat=74&lon=97">영동 </a>	</td><td>	<a href="cityView?e_name=Okcheon &city_no=148&lat=71&lon=99">옥천 </a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Eumseong &city_no=149&lat=72&lon=113">음성 </a>	</td><td>	<a href="cityView?e_name=Jecheon&city_no=150&lat=81&lon=118">제천 </a>	</td><td>	<a href="cityView?e_name=Jincheon &city_no=151&lat=68&lon=111">진천 </a>	</td><td>	<a href="cityView?e_name=Cheongwon&city_no=152&lat=69&lon=107">청원 </a>	</td><td>	<a href="cityView?e_name=Cheongju&city_no=153&lat=69&lon=106">청주 </a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Chungju&city_no=154&lat=76&lon=114">충주 </a>	</td><td>	<a href="cityView?e_name=Jeungpyeong &city_no=155&lat=71&lon=110">증평</a>	</td><td>		</td><td>		</td><td>		</td></tr>

			</table>
		</div>
	</div>
</div>
<div id="city2"></div>
<!-- 하단에 인기 도시 8개  -->
<div id="topeight">
	<div id="city2_title"><h2>인기 지역 TOP 8</h2></div>
	<div id="cityimg_list">	
		<div id="left">
			<div id="list_img1" class="clickevent gogo" style="background: url('${pageContext.request.contextPath}/resources/img/city/cityIMG/${city['0'].city_img1}'); background-size:530px 260px;"><h2>${city['0'].city_name}</h2>
			<input type="hidden" value="${city['0'].e_name}" id="hidden_ename_list_img1">
			<input type="hidden" value="${city['0'].no}" id="hidden_no_list_img1">
		</div>
			<div class="list_img gogo" id="go1"         style="background: url('${pageContext.request.contextPath}/resources/img/city/cityIMG/${city['1'].city_img1}'); background-size:260px 260px;"><h2>${city['1'].city_name}</h2>
			<input type="hidden" value="${city['1'].e_name}" id="hidden_ename_go1">
			<input type="hidden" value="${city['1'].no}" id="hidden_no_go1">
		</div>
			<div class="list_img gogo" id="go2"         style="background: url('${pageContext.request.contextPath}/resources/img/city/cityIMG/${city['2'].city_img1}'); background-size:260px 260px;"><h2>${city['2'].city_name}</h2>
			<input type="hidden" value="${city['2'].e_name}" id="hidden_ename_go2">
			<input type="hidden" value="${city['2'].no}" id="hidden_no_go2">
		</div>
			<div class="list_img gogo" id="go3"         style="background: url('${pageContext.request.contextPath}/resources/img/city/cityIMG/${city['3'].city_img1}'); background-size:260px 260px;"><h2>${city['3'].city_name}</h2>
			<input type="hidden" value="${city['3'].e_name}" id="hidden_ename_go3">
			<input type="hidden" value="${city['3'].no}" id="hidden_no_go3">
		</div>
			<div class="list_img gogo" id="go4"         style="background: url('${pageContext.request.contextPath}/resources/img/city/cityIMG/${city['4'].city_img1}'); background-size:260px 260px;"><h2>${city['4'].city_name}</h2>
			<input type="hidden" value="${city['4'].e_name}" id="hidden_ename_go4">
			<input type="hidden" value="${city['4'].no}" id="hidden_no_go4">
		</div>
		</div>
		<div id="right">
		 	<div id="list_img2" class="clickevent gogo"  style="background: url('${pageContext.request.contextPath}/resources/img/city/cityIMG/${city['5'].city_img1}'); background-size:270px 530px;"><h2>${city['5'].city_name}</h2>
		 	<input type="hidden" value="${city['5'].city_name}" id="hidden_ename_list_img2">
		 	<input type="hidden" value="${city['5'].no}" id="hidden_no_list_img2">
		 </div>
		</div>
	</div>
</div><br>
<script type="text/javascript">
	
</script>
<%-- 		<c:forEach items="${city}" var="popular_city">
			<h2>도시명 : ${popular_city.no}</h2><br>
			도시 사진 : <img src="${pageContext.request.contextPath}/resources/img/city/cityIMG/${popular_city.city_img1}"><br>
		</c:forEach>
 --%>
<!-- <script type="text/javascript">
 function drop_city(id){
	alert(id);
	 id="#"+id; 
	 document.getElementById(id).style.display="none";
	$("#ccb_detailCity").css("color", "red");
}
</script>
 -->
</body>
</html>
