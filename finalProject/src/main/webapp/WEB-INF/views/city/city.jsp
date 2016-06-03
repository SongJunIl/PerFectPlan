<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script type="text/javascript">
	/* var ccbhtml = $("#ccb_detailCity").html(); */
	

		/* $(".bigCity").on('click', function(){
			alert(ccbhtml);
		}); */

		$(document).ready(function(){
		    $(".bigCity").click(function(){
		    	var id = $(this).attr("id");
		    	if( $("#"+id+"_detailCity").css("display") == "block"){
		    		$("#"+id+"_detailCity").slideUp("quick");
		    		$("#"+id).css("color","gray");
		    	}else{
		    		$(".bigCity").css("color", "gray");
			    	$(".detail_city").slideUp("quick");
			    	$("#"+id).css("color","blue");
			    	$(".arrowImg").css("-webkit-transform","rotate(180deg)")
			        $("#"+id+"_detailCity").slideDown("quick");
		    	}
		    });
		});
	
	
		
</script>
<style type="text/css">

	*{
		margin: 0px;
	}
/* 	.arrowImg{
		 -webkit-transform: rotate(180deg); 
	} */
	#body_header{
		height: 400px;
		width: 1440px;
		overflow: hidden;
		background-image:url("/resources/img/city/main2.png");
	}
	#searchBox{
		width: 600px;
		height: 130px;
		margin-top: 135px;
		margin-left: 400px;
		opacity: 0.5;
		background-color: black;
		overflow: hidden;
	}
	#search{
		width: 550px;
		height: 50px;
		font-size: 20px; 
		font-weight: bold;
		margin-left: 23px;
		margin-top: 35px;  
		background-color: white;
	}
	#city{
		height: auto;
		width: 1440px;
		background-color: #f8f8fa; 
		overflow: hidden;
	}
	#city_title{
		margin: 30px auto;
		text-align: center;
		overflow: hidden;
	}
	 #city_list{
		width : 1087px;
		height: auto;
		margin: 0 auto;
		overflow: hidden;
	} 
 	.list_table{
		width: 1087px;
		height: auto;
		color: #555555; 
		margin: 0 auto;
		text-align: center;
		border-spacing: 0px;
		background-color: white;
		border-collapse: collapse;
		border: 1px solid #cfcfcf;
	}
	#list_table tr{
		height: 20px;
		border: 1px solid  #cfcfcf;
		border-collapse: collapse;
		border-spacing: 0px;
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
		background-color: black;
	}
	#right{
		width: 280px;
		height: 540px;
		float: left;
		background-color: aqua;
	}
	.list_img{
		width: 260px;
		height: 260px;
		margin-left: 10px;
		margin-bottom: 10px;
		float: left;
		background-color: yellow;	
	}
	#list_img1{
		width: 530px;
		height: 260px;
		float: left;
		margin-left: 10px;
		margin-bottom: 10px;
		background-color: gray;
	}
	#list_img2{
		width: 270px;
		height: 530px;
		float: left;
		margin-left: 10px;
		margin-bottom: 10px;
		background-color: navy;
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
	.detail_city{
		width: 1092px;
		height: auto;
		display: none;
	}
</style>
</head>
<body>
<!-- 상단에 검색 부분 -->
<div id="body_header">
	<div id="searchBox">
		<input type="text" id="search" placeholder="지역명 , 관광지명을 검색"><br>
		<span><input type="text" value="지도로 보기 >>"readonly="readonly" id="city_map"></span>
		
	</div>
</div>
<!-- 도시 리스트 뜨는 부분 -->
<div id="city">
	<div id="city_title"><h2>국내 도시</h2></div>
	<div id="city_list">
		<table id="li   st_table" class="list_table">
			<tr>
				<td><a href="cityView?ename=Gwangju"><input type="text" value="광주" class="smallCity" readonly="readonly"></a></td>
				<td><input type="text" value="대구" class="smallCity" readonly="readonly"></td>
				<td><input type="text" value="대전" class="smallCity" readonly="readonly"></td>
				<td><input type="text" value="부산" class="smallCity" readonly="readonly"></td>
				<td><input type="text" value="서울" class="smallCity" readonly="readonly"></td>
				<td><input type="text" value="울산" class="smallCity" readonly="readonly"></td>
				<td><input type="text" value="인천" class="smallCity"readonly="readonly"></td>
				<td><input type="text" value="제주도" class="smallCity" readonly="readonly"></td>
			</tr>
			<tr>
				<td><input type="text" value="강원도" onclick="drop_city()" class="bigCity" id="gangWon" readonly="readonly"><img src="/resources/img/city/downArrow.png" class="arrowImg"></td>
				<td><input type="text" value="경기도" onclick="drop_city()" class="bigCity" id="gyeonGi" readonly="readonly"><img src="/resources/img/city/downArrow.png" class="arrowImg"></td>
				<td><input type="text" value="경상남도" onclick="drop_city()" class="bigCity" id="gsn" readonly="readonly"><img src="/resources/img/city/downArrow.png" class="arrowImg"></td>
				<td><input type="text" value="경상북도" onclick="drop_city()" class="bigCity" id="gsb"readonly="readonly"><img src="/resources/img/city/downArrow.png" class="arrowImg"></td>
				<td><input type="text" value="전라남도" onclick="drop_city()" class="bigCity" id="jln"readonly="readonly"><img src="/resources/img/city/downArrow.png" class="arrowImg"></td>
				<td><input type="text" value="전라북도" onclick="drop_city()" class="bigCity" id="jlb" readonly="readonly"><img src="/resources/img/city/downArrow.png" class="arrowImg"></td>
				<td><input type="text" value="충청남도" onclick="drop_city()" class="bigCity" id="ccn" readonly="readonly"><img src="/resources/img/city/downArrow.png" class="arrowImg"></td>
				<td><input type="text" value="충청북도" readonly="readonly" class="bigCity" id="ccb"><img src="/resources/img/city/downArrow.png" class="arrowImg"></td>
			</tr>
		</table> 
		<div id="gangWon_detailCity" class="detail_city">
			<table class="list_table">
					<tr>
						<td>강릉</td><td>고성</td><td>동해</td><td>삼척</td><td>속초</td></tr>
					<tr><td>양구</td><td>양양</td><td>영월</td><td>원주</td><td>인제</td></tr>
					<tr><td>정선</td><td>철원</td><td>춘천</td><td>태백</td><td>평창</td></tr>
					<tr><td>홍천</td><td>화천</td><td>횡성</td><td></td><td></td></tr>
			</table>
		</div>
		<div id="gyeonGi_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>   가평   </td><td>   고양   </td><td>   과천   </td><td>   광명   </td><td>   광주   </td></tr>
					<tr><td>   구리   </td><td>   군포   </td><td>   김포   </td><td>   남양주   </td><td>   동두천   </td></tr>   
					<tr><td>   부천   </td><td>   성남   </td><td>   수원   </td><td>   시흥   </td><td>   안산   </td></tr>   
					<tr><td>   안성   </td><td>   안양   </td><td>   양주   </td><td>   양평   </td><td>   여주   </td></tr>   
					<tr><td>   연천   </td><td>   오산   </td><td>   용인   </td><td>   의왕   </td><td>   의정부   </td></tr>   
					<tr><td>   이천   </td><td>   파주   </td><td>   평택   </td><td>   포천   </td><td>   하남   </td></tr>   
					<tr><td>   화성   </td></tr>
			</table>
		</div>
		<div id="gsn_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>   거제   </td><td>   거창   </td><td>   고성   </td><td>   김해   </td><td>   남해   </td></tr>   
					<tr><td>   마산   </td><td>   밀양   </td><td>   사천   </td><td>   산청   </td><td>   양산   </td></tr>   
					<tr><td>   의령   </td><td>   진주   </td><td>   진해   </td><td>   창녕   </td><td>   창원   </td></tr>   
					<tr><td>   통영   </td><td>   하동   </td><td>   함안   </td><td>   함양   </td><td>   합천   </td></tr>   
			</table>
		</div>
		<div id="gsb_detailCity" class="detail_city">
			<table class="list_table">
				<tr><td>   경산   </td><td>   경주   </td><td>   고령   </td><td>   구미   </td><td>   군위   </td></tr>   
				<tr><td>   김천   </td><td>   문경   </td><td>   봉화   </td><td>   상주   </td><td>   성주   </td></tr>   
				<tr><td>   안동   </td><td>   영덕   </td><td>   영양   </td><td>   영주   </td><td>   영천   </td></tr>   
				<tr><td>   예천   </td><td>   울릉   </td><td>   울진   </td><td>   의성   </td><td>   청도   </td></tr>   
				<tr><td>   청송   </td><td>   칠곡   </td><td>   포항   </td><td>      </td><td>      </td></tr> 
			</table>
		</div>
		<div id="jln_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>   강진   </td><td>   고흥   </td><td>   곡성   </td><td>   광양   </td><td>   구례   </td></tr>   
					<tr><td>   나주   </td><td>   담양   </td><td>   목포   </td><td>   무안   </td><td>   보성   </td></tr>   
					<tr><td>   순천   </td><td>   신안   </td><td>   여수   </td><td>   영광   </td><td>   영암   </td></tr>   
					<tr><td>   완도   </td><td>   장성   </td><td>   장흥   </td><td>   진도   </td><td>   함평   </td></tr>   
					<tr><td>   해남   </td><td>   화순   </td><td>      </td><td>      </td><td>      </td></tr>
			</table>
		</div>
		<div id="jlb_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>   고창   </td><td>   군산   </td><td>   김제   </td><td>   남원   </td><td>   무주   </td></tr>   
					<tr><td>   부안   </td><td>   순창   </td><td>   완주   </td><td>   익산   </td><td>   임실   </td></tr>   
					<tr><td>   장수   </td><td>   전주   </td><td>   정읍   </td><td>   진안   </td><td>      </td></tr>   
			</table>
		</div>
		<div id="ccn_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>   공주   </td><td>   금산   </td><td>   논산   </td><td>   당진   </td><td>   보령   </td></tr>   
					<tr><td>   부여   </td><td>   서산   </td><td>   서천   </td><td>   아산   </td><td>   예산   </td></tr>   
					<tr><td>   천안   </td><td>   청양   </td><td>   태안   </td><td>   홍성   </td><td>   계룡   </td></tr>   
			</table>
		</div>
		<div id="ccb_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>   괴산   </td><td>   단양   </td><td>   보은   </td><td>   영동   </td><td>   옥천   </td></tr>   
					<tr><td>   음성   </td><td>   제천   </td><td>   진천   </td><td>   청원   </td><td>   청주   </td></tr>   
					<tr><td>   충주   </td><td>   증평   </td><td>      </td><td>      </td><td>      </td></tr>   
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
			<div id="list_img1"></div>
			<div class="list_img"></div>
			<div class="list_img"></div>
			<div class="list_img"></div>
			<div class="list_img"></div>
		</div>
		<div id="right">
		 	<div id="list_img2"></div>
		</div>
		
	</div>
</div>
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
