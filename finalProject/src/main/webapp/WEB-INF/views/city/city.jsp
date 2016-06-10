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
		    		$("#"+id).css("font-weight","lighter");
		    	}else{
		    		$(".bigCity").css("color", "gray");
			    	$(".detail_city").slideUp("quick");
			    	$("#"+id).css("color","#0000cc");
			    	$("#"+id).css("font-weight","bold");
			    	
			    	/* $(".arrowImg").css("-webkit-transform","rotate(180deg)") */
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
		background-image:url("${pageContext.request.contextPath}/resources/img/city/main2.png");
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
	.detail_city{
		width: 1085px;
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
	#list_table tr{
	height: 30px;
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
		<table id="list_table" class="list_table">
			<tr>
				<td><a href="cityView?e_name=Gwangju"><input type="text" value="광주" class="smallCity" readonly="readonly"></a></td>
				<td><a href="cityView?e_name=Daegu"><input type="text" value="대구" class="smallCity" readonly="readonly"></a></td>
				<td><a href="cityView?e_name=Daejeon"><input type="text" value="대전" class="smallCity" readonly="readonly"></a></td>
				<td><a href="cityView?e_name=Busan"><input type="text" value="부산" class="smallCity" readonly="readonly"></a></td>
				<td><a href="cityView?e_name=Seoul"><input type="text" value="서울" class="smallCity" readonly="readonly"></a></td>
				<td><a href="cityView?e_name=Ulsan"><input type="text" value="울산" class="smallCity" readonly="readonly"></a></td>
				<td><a href="cityView?e_name=Incheon"><input type="text" value="인천" class="smallCity"readonly="readonly"></a></td>
				<td><a href="cityView?e_name=Jeju"><input type="text" value="제주도" class="smallCity" readonly="readonly"></a></td>
			</tr>
			<tr>
				<td><input type="text" value="강원도" onclick="drop_city()" class="bigCity" id="gangWon" readonly="readonly"><img src="${pageContext.request.contextPath}/resources/img/city/downArrow.png"></td>
				<td><input type="text" value="경기도" onclick="drop_city()" class="bigCity" id="gyeonGi" readonly="readonly"><img src="${pageContext.request.contextPath}/resources/img/city/downArrow.png"></td>
				<td><input type="text" value="경상남도" onclick="drop_city()" class="bigCity" id="gsn" readonly="readonly"><img src="${pageContext.request.contextPath}/resources/img/city/downArrow.png"></td>
				<td><input type="text" value="경상북도" onclick="drop_city()" class="bigCity" id="gsb"readonly="readonly"><img src="${pageContext.request.contextPath}/resources/img/city/downArrow.png"></td>
				<td><input type="text" value="전라남도" onclick="drop_city()" class="bigCity" id="jln"readonly="readonly"><img src="${pageContext.request.contextPath}/resources/img/city/downArrow.png"></td>
				<td><input type="text" value="전라북도" onclick="drop_city()" class="bigCity" id="jlb" readonly="readonly"><img src="${pageContext.request.contextPath}/resources/img/city/downArrow.png"></td>
				<td><input type="text" value="충청남도" onclick="drop_city()" class="bigCity" id="ccn" readonly="readonly"><img src="${pageContext.request.contextPath}/resources/img/city/downArrow.png"></td>
				<td><input type="text" value="충청북도" readonly="readonly" class="bigCity" id="ccb"></td>
			</tr>
		</table> 
		<div id="gangWon_detailCity" class="detail_city">
			<table class="list_table">
					<tr>
						<td><a href="cityView?e_name=Gangneung">강릉</a></td>
						<td><a href="cityView?e_name=Goseong ">고성</a></td>
						<td><a href="cityView?e_name=Donghae">동해</a></td>
						<td><a href="cityView?e_name=Samcheok">삼척</a></td>
						<td><a href="cityView?e_name=Sokcho">속초</a></td>
					</tr>
					<tr>
						<td><a href="cityView?e_name=Yanggu">양구</a></td>
						<td><a href="cityView?e_name=Yangyang ">양양</a></td>
						<td><a href="cityView?e_name=Yeongwol ">영월</a></td>
						<td><a href="cityView?e_name=Wonju">원주</a></td>
						<td><a href="cityView?e_name=Inje ">인제</a></td>
					</tr>
					<tr>
						<td><a href="cityView?e_name=Jeongseon ">정선</a></td>
						<td><a href="cityView?e_name=Cheorwon ">철원</a></td>
						<td><a href="cityView?e_name=Chuncheon">춘천</a></td>
						<td><a href="cityView?e_name=Taebaek">태백</a></td>
						<td><a href="cityView?e_name=Pyeongchang ">평창</a></td>
					</tr>
					<tr>
						<td><a href="cityView?e_name=Hongcheon ">홍천</a></td>
						<td><a href="cityView?e_name=Hwacheon ">화천</a></td>
						<td><a href="cityView?e_name=Hoengseong ">횡성</a></td>
						<td></td><td></td>
					</tr>
			</table>
		</div>
		<div id="gyeonGi_detailCity" class="detail_city">
			<table class="list_table">
					<tr>
						<td><a href="cityView?e_name=Gapyeong">가평</a></td>
						<td><a href="cityView?e_name=Goyang">고양</a></td>
						<td><a href="cityView?e_name=Gwacheon">과천</a></td>
						<td><a href="cityView?e_name=Gwangmyeong">광명</a></td>
						<td><a href="cityView?e_name=Gwangju">광주</a></td>
					</tr>
					<tr>
						<td><a href="cityView?e_name=Guri">구리</a></td>
						<td><a href="cityView?e_name=Gunpo">군포</a></td>
						<td><a href="cityView?e_name=Gimpo">김포</a></td>
						<td><a href="cityView?e_name=Namyangju">남양주</a></td>
						<td><a href="cityView?e_name=Dongducheon">동두천</a></td>
					</tr>   
					<tr>
						<td>   <a href="cityView?e_name=Bucheon">부천</a>   </td>
						<td>   <a href="cityView?e_name=Seongnam">성남</a>   </td>
						<td>   <a href="cityView?e_name=Suwon">수원</a>   </td>
						<td>   <a href="cityView?e_name=Siheung">시흥</a>   </td>
						<td>   <a href="cityView?e_name=Ansan">안산</a>   </td>
					</tr>   
					<tr>
						<td>   <a href="cityView?e_name=Anseong">안성</a>   </td>
						<td>   <a href="cityView?e_name=Anyang">안양</a>   </td>
						<td>   <a href="cityView?e_name=Yangju">양주</a>   </td>
						<td>   <a href="cityView?e_name=Yangpyeong">양평</a>   </td>
						<td>   <a href="cityView?e_name=Yeoju">여주</a>   </td>
					</tr>   
					<tr>
						<td>   <a href="cityView?e_name=Yeoncheon">연천</a>   </td>
						<td>   <a href="cityView?e_name=Osan">오산</a>   </td>
						<td>   <a href="cityView?e_name=Yongin">용인</a>   </td>
						<td>   <a href="cityView?e_name=Uiwang">의왕</a>   </td>
						<td>   <a href="cityView?e_name=Uijeongbu">의정부</a>   </td>
					</tr>   
					<tr>
						<td>   <a href="cityView?e_name=Icheon">이천</a>   </td>
						<td>   <a href="cityView?e_name=Paju">파주</a>   </td>
						<td>   <a href="cityView?e_name=Pyeongtaek">평택</a>   </td>
						<td>   <a href="cityView?e_name=Pocheon">포천</a>   </td>
						<td>   <a href="cityView?e_name=Hanam">하남</a>   </td>
					</tr>   
					<tr>
						<td>   <a href="cityView?e_name=Hwaseong">화성   </td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
			</table>
		</div>
		<div id="gsn_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>	<a href="cityView?e_name=Geoje">거제</a>	</td><td>	<a href="cityView?e_name=Geochang ">거창</a>	</td><td>	<a href="cityView?e_name=Goseong1">고성</a>	</td><td>	<a href="cityView?e_name=Gimhae">김해</a>	</td><td>	<a href="cityView?e_name=Namhae ">남해</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Masan">마산</a>	</td><td>	<a href="cityView?e_name=Miryang">밀양</a>	</td><td>	<a href="cityView?e_name=Sacheon">사천</a>	</td><td>	<a href="cityView?e_name=Sancheong ">산청</a>	</td><td>	<a href="cityView?e_name=Yangsan">양산</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Uiryeong ">의령</a>	</td><td>	<a href="cityView?e_name=Jinju">진주</a>	</td><td>	<a href="cityView?e_name=Jinhae">진해</a>	</td><td>	<a href="cityView?e_name=Changnyeong ">창녕</a>	</td><td>	<a href="cityView?e_name=Changwon">창원</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Tongyeong">통영</a>	</td><td>	<a href="cityView?e_name=Hadong ">하동</a>	</td><td>	<a href="cityView?e_name=Haman ">함안</a>	</td><td>	<a href="cityView?e_name=Hamyang ">함양</a>	</td><td>	<a href="cityView?e_name=Hapcheon ">합천</a>	</td></tr>
  
			</table>
		</div>
		<div id="gsb_detailCity" class="detail_city">
			<table class="list_table">
				<tr><td>	<a href="cityView?e_name=Gyeongsan">경산</a>	</td><td>	<a href="cityView?e_name=Gyeongju">경주</a>	</td><td>	<a href="cityView?e_name=Goryeong ">고령</a>	</td><td>	<a href="cityView?e_name=Gumi">구미</a>	</td><td>	<a href="cityView?e_name=Gunwi ">군위</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Gimcheon">김천</a>	</td><td>	<a href="cityView?e_name=Mungyeong">문경</a>	</td><td>	<a href="cityView?e_name=Bonghwa ">봉화</a>	</td><td>	<a href="cityView?e_name=Sangju">상주</a>	</td><td>	<a href="cityView?e_name=Seongju ">성주</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Andong">안동</a>	</td><td>	<a href="cityView?e_name=Yeongdeok ">영덕</a>	</td><td>	<a href="cityView?e_name=Yeongyang ">영양</a>	</td><td>	<a href="cityView?e_name=Yeongju">영주</a>	</td><td>	<a href="cityView?e_name=Yeongcheon">영천</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Yecheon ">예천</a>	</td><td>	<a href="cityView?e_name=Ulleung ">울릉</a>	</td><td>	<a href="cityView?e_name=Uljin ">울진</a>	</td><td>	<a href="cityView?e_name=Uiseong ">의성</a>	</td><td>	<a href="cityView?e_name=Cheongdo ">청도</a>	</td></tr>
				<tr><td>	<a href="cityView?e_name=Cheongsong ">청송</a>	</td><td>	<a href="cityView?e_name=Chilgok ">칠곡</a>	</td><td>	<a href="cityView?e_name=Pohang">포항</a>	</td><td>		</td><td>		</td></tr>
			</table>
		</div>
		<div id="jln_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>	<a href="cityView?e_name=Gangjin ">강진</a>	</td><td>	<a href="cityView?e_name=Goheung ">고흥</a>	</td><td>	<a href="cityView?e_name=Gokseong ">곡성</a>	</td><td>	<a href="cityView?e_name=Gwangyang">광양</a>	</td><td>	<a href="cityView?e_name=Gurye ">구례</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Naju">나주</a>	</td><td>	<a href="cityView?e_name=Damyang ">담양</a>	</td><td>	<a href="cityView?e_name=Mokpo">목포</a>	</td><td>	<a href="cityView?e_name=Muan ">무안</a>	</td><td>	<a href="cityView?e_name=Boseong ">보성</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Suncheon">순천</a>	</td><td>	<a href="cityView?e_name=Sinan ">신안</a>	</td><td>	<a href="cityView?e_name=Yeosu">여수</a>	</td><td>	<a href="cityView?e_name=Yeonggwang ">영광</a>	</td><td>	<a href="cityView?e_name=Yeongam ">영암</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Wando ">완도</a>	</td><td>	<a href="cityView?e_name=Jangseong ">장성</a>	</td><td>	<a href="cityView?e_name=Jangheung ">장흥</a>	</td><td>	<a href="cityView?e_name=Jindo ">진도</a>	</td><td>	<a href="cityView?e_name=Hampyeong ">함평</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Haenam ">해남</a>	</td><td>	<a href="cityView?e_name=Hwasun ">화순</a>	</td><td>		</td><td>		</td><td>		</td></tr>

			</table>
		</div>
		<div id="jlb_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>	<a href="cityView?e_name=Gochang ">고창</a>	</td><td>	<a href="cityView?e_name=Gunsan">군산</a>	</td><td>	<a href="cityView?e_name=Gimje">김제</a>	</td><td>	<a href="cityView?e_name=Namwon">남원</a>	</td><td>	<a href="cityView?e_name=Muju ">무주</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Buan ">부안</a>	</td><td>	<a href="cityView?e_name=Sunchang ">순창</a>	</td><td>	<a href="cityView?e_name=Wanju ">완주</a>	</td><td>	<a href="cityView?e_name=Iksan">익산</a>	</td><td>	<a href="cityView?e_name=Imsil ">임실</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Jangsu ">장수</a>	</td><td>	<a href="cityView?e_name=Jeonju">전주</a>	</td><td>	<a href="cityView?e_name=Jeongeup">정읍</a>	</td><td>	<a href="cityView?e_name=Jinan ">진안</a>	</td><td>		</td></tr>

			</table>
		</div>
		<div id="ccn_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>	<a href="cityView?e_name=Gongju">공주</a>	</td><td>	<a href="cityView?e_name=Geumsan ">금산</a>	</td><td>	<a href="cityView?e_name=Nonsan">논산</a>	</td><td>	<a href="cityView?e_name=Dangjin">당진</a>	</td><td>	<a href="cityView?e_name=Boryeong">보령</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Buyeo ">부여</a>	</td><td>	<a href="cityView?e_name=Seosan">서산</a>	</td><td>	<a href="cityView?e_name=Seocheon ">서천</a>	</td><td>	<a href="cityView?e_name=Asan">아산</a>	</td><td>	<a href="cityView?e_name=Yesan ">예산</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Cheonan">천안</a>	</td><td>	<a href="cityView?e_name=Cheongyang ">청양</a>	</td><td>	<a href="cityView?e_name=Taean ">태안</a>	</td><td>	<a href="cityView?e_name=Hongseong ">홍성</a>	</td><td>	<a href="cityView?e_name=Gyeryong">계룡</a>	</td></tr>
  
			</table>
		</div>
		<div id="ccb_detailCity" class="detail_city">
			<table class="list_table">
					<tr><td>	<a href="cityView?e_name=Goesan ">괴산</a>	</td><td>	<a href="cityView?e_name=Danyang ">단양</a>	</td><td>	<a href="cityView?e_name=Boeun ">보은</a>	</td><td>	<a href="cityView?e_name=Yeongdong ">영동</a>	</td><td>	<a href="cityView?e_name=Okcheon ">옥천</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Eumseong ">음성</a>	</td><td>	<a href="cityView?e_name=Jecheon">제천</a>	</td><td>	<a href="cityView?e_name=Jincheon ">진천</a>	</td><td>	<a href="cityView?e_name=Cheongwon">청원</a>	</td><td>	<a href="cityView?e_name=Cheongju">청주</a>	</td></tr>
					<tr><td>	<a href="cityView?e_name=Chungju">충주</a>	</td><td>	<a href="cityView?e_name=Jeungpyeong ">증평</a>	</td><td>		</td><td>		</td><td>		</td></tr>
 
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
