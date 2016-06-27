<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<style type="text/css">
	*{
		margin: 0px;
	}
	#body_header{
		height: 400px;
		width: 1440px;
		overflow: hidden;
		background-image:url("${pageContext.request.contextPath}/resources/img/city/main2.png");
	}
/* 검색 상자 */
	#searchBox{
		width: 570px;
		height: 110px;
		margin-top: 135px;
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
		background-image:url("${pageContext.request.contextPath}/resources/img/city/magnifier3.png");
	}
	#viewMap{
		float: left;
		background-color: aqua;
		width: 10px;
		height: 10px;
	}
/* 중간 시작 */
	#section{
		margin: 0 auto;
		width: 1091px;
	}
	#result_text{
		padding-top: 50px;
	}
	#back{
		height: 30px;
		padding-top: 10px;
		padding-bottom: 30px;
	}
	#listImg{
		margin-left: 980px;
		padding-top: 15px;
		float: left;
	}
	#backText{
		width: 60px;
		border: none;
		font-size: 13px;
		font-weight: bold;
		float: left;	
		padding-left: 5px;
		padding-top: 18px;	
	}
	/* city 리스트 */
	.city_list{
		width: 510px;
		height: 193px;
		float: left;
		margin-top: 20px;
		margin-left: 10px;
		margin-right: 10px;
		border: 1px solid #D8D8D8;
	}
	#city_img{
		width: 300px;
		margin-top: 10px;
		margin-left: 10px;
		float: left;
	}
	#city_img2{
		width: 300px;
		height: 170px;
		border: 1px solid black;
	}
	#city_info{
		float: left;
		width: 180px;
		height: 230px;
		margin-top: 10px;
		margin-left: 10px;
	}
	#city_name{
		margin: 0 auto;
		margin-left: 35px;
		margin-top: 10px;
	}
	#counts{
		width: 180px;
		height: 30px;
	}
	#city_clip{
		margin-left: 50px;
		margin-top: 13px;
		float: left;
	}
	#clip_no{
		float: left;
		margin-top: 18px;
		font-size: 15px;
		margin-left: 7px;
		color: gray;
	}
	#counts_2{
		width: 180px;
		height: 30px;
		margin-top: 20px;
	}
	#city_review{
		margin-left: 50px;
		margin-top: 5px;
		float: left;
	}
	#review_no{
		float: left;
		margin-top: 12px;
		font-size: 15px;
		margin-left: 7px;
		color: gray;
	}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$("#SearchImg").on('click',function(){
		var search = $("#searchText").val();
		location.href = "./searchCity?search="+search;
	});
	$("#back").on('click',function(){
		location.href="./city";
	});
	
	$(".city_img2").on('click',function(){
		var city_index = $(this).attr("city-index");
		var city_no = $("#city_no_param"+city_index).val();
		var e_name  = $("#city_ename_param"+city_index).val();
		var lat = $("#city_lat_param"+city_index).val();
		var lon = $("#city_lon_param"+city_index).val();
		
		location.href="./cityView?e_name="+e_name+"&city_no="+city_no+"&lat="+lat+"&lon="+lon;
	});

});
</script>	
<title>Insert title here</title>	
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
<div id="section">
		<div id="result_text"><h3>검색된 도시</h3></div>
		<div id="back"><img src="${pageContext.request.contextPath}/resources/img/city/list.png" id="listImg"> <input type="text" id="backText" value="지역목록" readonly="readonly"></div>
		
<!-- 검색 결과 리스트 시작================================================================================================================================================================================================== -->
	<c:forEach items="${searchCity}" var="city" varStatus="i">
		<div class="city_list">
		
			<div id="city_img">
				<img src="${pageContext.request.contextPath}/resources/img/city/cityIMG/${city.city_img1}" id="city_img2" class="city_img2" city-index="${i.index}">
				<input type="hidden" id="city_no_param${i.index}" value="${searchCitySpot[i.index].no}">
				<input type="hidden" id="city_ename_param${i.index}" value="${city.e_name}">
				<input type="hidden" id="city_lat_param${i.index}" value="${city.lat}">
				<input type="hidden" id="city_lon_param${i.index}" value="${city.lon}">
				
			</div>		
			
			<div id="city_info">
				<div id="city_name">
					<h3>
						<c:if test="${searchCitySpot[i.index].big_ename == 'ChungcheongSouth'}">충청남도</c:if>
						<c:if test="${searchCitySpot[i.index].big_ename == 'ChungcheongNorth'}">충청북도</c:if> 
						<c:if test="${searchCitySpot[i.index].big_ename == 'Gangwon'}">강원도</c:if>
						<c:if test="${searchCitySpot[i.index].big_ename == 'Gyeonggi'}">경기도</c:if>
						<c:if test="${searchCitySpot[i.index].big_ename == 'GyeongsangSouth'}">경상남도</c:if>
						<c:if test="${searchCitySpot[i.index].big_ename == 'GyeongsangNorth'}">경상북도</c:if>
						<c:if test="${searchCitySpot[i.index].big_ename == 'JeollaSouth'}">전라남도</c:if>
						<c:if test="${searchCitySpot[i.index].big_ename == 'JeollaNorth'}">전라북도</c:if>
						${city.city_name}<br> ${city.e_name}
					</h3>
				</div>
				
				<div id="counts">
					<div id="city_clip"> <img src="${pageContext.request.contextPath}/resources/img/city/spotmarker.png"></div> 
					<div id="clip_no">${searchCitySpot[i.index].jim} 곳</div>
				</div>
				
				<div id="counts_2">
					<div id="city_review"><img src="${pageContext.request.contextPath}/resources/img/city/reviewImg.png"></div>
					<div id="review_no">${searchCityReply[i.index].jim} 개</div>
				</div>
				
			</div>
		</div>
	</c:forEach>
<!-- 끝 결과 도시리스트 -->
</div>

</body>
</html>