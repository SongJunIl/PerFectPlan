<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<%@ include file="/WEB-INF/views/temp/script.jspf" %>
<%@ include file="/WEB-INF/views/temp/header.jspf" %>
<%@ include file="/resources/css/mypage.css" %>


<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script type="text/javascript">
	function ontop() {p_top_menu_home.innerText="관광지";}
	function ontop1() {p_top_menu_Schedule.innerText="여행지 관리";}
	function ontop2() {p_top_menu_reviewnscrap.innerText="리뷰&스크랩";}
	function ontop3() {p_top_menu_QnA.innerText="질문&답변";}
	function ontop4() {p_top_menu_myinfo.innerText="나의 정보";}
	
	function outtop() {p_top_menu_home.innerText="Spot";}
	function outtop1() {p_top_menu_Schedule.innerText="Travel spot";}
	function outtop2() {p_top_menu_reviewnscrap.innerText="review & Scrap";}
	function outtop3() {p_top_menu_QnA.innerText="QnA";}
	function outtop4() {p_top_menu_myinfo.innerText="My info";}	

	$(document).ready(function(){
		$(".admin_city_list").click(function(){
			var id = $(this).attr("id");
			
			if( $("#"+id+"_inner").css("display") =="block" ){
				$("#"+id+"_update1").slideUp("quick");
				$("#"+id+"_update").css("color","#909090");
				$("#"+id).css("color","#909090").css("font-weight","lighter");
				$("#"+id+"_inner").slideUp("quick");	
			}else{
				if(id+"_inner"=="main_city_inner"){
					$("#main_city_inner").css("height","110px");
				}
				if(id+"_inner" == "gangWon_inner"){
					 $("#gangWon_inner").css("height","185px"); 
				}
				if(id+"_inner" == "gyeongGi_inner"){
					 $("#gyeongGi_inner").css("height","310px"); 
				}
				if(id+"_inner" == "gsn_inner"){
					 $("#gsn_inner").css("height","185px"); 
				}
				if(id+"_inner" == "gsb_inner"){
					 $("#gsb_inner").css("height","225px"); 
				}
				if(id+"_inner" == "jln_inner"){
					 $("#jln_inner").css("height","225px"); 
				}
				if(id+"_inner" == "jlb_inner"){
					 $("#jlb_inner").css("height","150px"); 
				}
				if(id+"_inner" == "ccn_inner"){
					 $("#ccn_inner").css("height","150px"); 
				}
				if(id+"_inner" == "ccb_inner"){
					 $("#ccb_inner").css("height","150px"); 
				}
				$("#"+id).css("color","#1a7ad9").css("font-weight","bold");
				$("#"+id+"_inner").slideDown("quick");
			}
		});
		
		$(".aaaaa").click(function(){
			var id = $(this).attr("id");
			var name=$(this)
			.attr("name");
			$("."+name).each(function(){
				alert($(this).attr("value"));
				var s =$(this).attr("value");
				alert(s);
			});
			$("#"+id).css("color","#1a7ad9");
			$("#"+id+"1").slideDown("quick");
		});
	});
	
</script>
<style type="text/css">
table.type03 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #369;
    margin : 0 auto;
   
}
table.type03 th {
    width: 250px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;

}
table.type03 td {
    width: 640px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}

#write_btn{float: right; }

	.p_home_body{
		height: auto;
		width: 1100px;
	}
	/* bigcity div */
	.admin_city_list{
		width: 900px;
		height: 40px;
		margin: 0 auto;
		font-size: 16px;
		color: #909090;
		background-color: #f4f4f9;
		border-bottom: 1px solid #C8C8C8;
		border-left: 1px solid #C8C8C8;
		border-right: 1px solid #C8C8C8;
	}
	/* bigCity input text */
	.admin_city_list_text{
		padding-left: 20px;
		padding-top: 8px;
		border: none;
		background-color: #f4f4f9;
	}
	#main_city{
		 border-top-left-radius:8px;
		 border-top-right-radius:8px;
		 border-top: 1px solid #C8C8C8;
	}
	#ccb{
		border-bottom-left-radius:8px;
		border-bottom-right-radius:8px;		 
	}
	/* slidedown 부분 div */
	.admin_city_inner_list{
		width: 900px;
		height: auto;
		display: none;
		margin: 0 auto;
		color: #909090;
		padding-top: 20px;
		background-color:#f8f8fa ;
		border-left: 1px solid #C8C8C8;
		border-right: 1px solid #C8C8C8;
		border-bottom:  1px solid #C8C8C8;
	}

	.aaaaa{
		width: 179px;
		height: 40px;
		float: left;
		text-align: center;
		background-color:#f8f8fa ;
	}
	.bbbbb{
		width: 900px;
		height:410px;
		display: none;
		margin: 0 auto;
		border-bottom: 1px solid #C8C8C8 ;
		border-left:  1px solid #C8C8C8;
		border-right:  1px solid #C8C8C8;
	}
	#city_image_title{
		width: 990px;
		padding-top: 20px;
		color: gray;
		font-size: 15px;
		text-align: center;
	}
	.city_image{
		width: 278px;
		height: 200px;
		background-color: yellow;
		margin-left: 10px;
		margin-right: 10px;
		margin-top: 30px;
		float: left;
		border: 1px solid gray; 
	}
	#city_image_change{
		padding-top: 40px;
		overflow: hidden;
		width: 900px;
		height: 100px;
	}
	.image_change_button{
		float: left;
		width: 200px;
		height: 35px;
		margin-left: 55px;
		margin-right:40px; 
	}
	.image_change_file_button{
		width: 200px;
		height: 25px;
	}
	.image_change_save{
		overflow: hidden;
		width: 900px;
		height: 25px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/SE2/js/HuskyEZCreator.js"></script>
<title>관리자 페이지</title>

</head>
<body>
<!-- Tab menu -->
<input type="hidden" id="session_id" value="${sessionScope.admin.id }">

<div id="main-body" >
	<div id="p_my_top" >
				<div id=p_top_title>
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
							  <!-- Indicators -->
							  <ol class="carousel-indicators">
							    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							    <li data-target="#myCarousel" data-slide-to="1"></li>
							    <li data-target="#myCarousel" data-slide-to="2"></li>
							    <li data-target="#myCarousel" data-slide-to="4"></li>
							    <li data-target="#myCarousel" data-slide-to="5"></li>
							    <li data-target="#myCarousel" data-slide-to="6"></li>
							    <li data-target="#myCarousel" data-slide-to="7"></li>
							    <li data-target="#myCarousel" data-slide-to="8"></li>
							    <li data-target="#myCarousel" data-slide-to="9"></li>
							    <li data-target="#myCarousel" data-slide-to="10"></li>
							  </ol>
							
							  <!-- Wrapper for slides -->
							  <div class="carousel-inner" role="listbox">
							    <div class="item active">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo1.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo2.jpg">							    
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo3.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo4.jpg">
							    </div>
							 	 <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo5.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo6.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo7.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo8.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo9.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo10.jpg">
							    </div>
							
							  
							  </div>
							
							  <!-- Left and right controls -->
							  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
							    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							    <span class="sr-only">Previous</span>
							  </a>
							  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
							    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							    <span class="sr-only">Next</span>
							  </a>
							</div>
			
			
			
				</div>
		<div id=p_top_menu>
			<div id=p_top_menu_center>
				<ul id="myTab" class="nav nav-tabs" role="tablist">
				  <li role="presentation" class="active"><a data-target="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true" class="p_tab_title_tab"><div class="p_top_menu_list" ><span id="p_top_menu_home" onmouseover="ontop()" onmouseout="outtop()">Spot</span></div></a></li>
				  <li role="presentation" class=""><a data-target="#schedule" role="tab" id="schedule-tab" data-toggle="tab" aria-controls="schedule" aria-expanded="false" class="p_tab_title_tab"><div class="p_top_menu_list"><span id="p_top_menu_Schedule" onmouseover="ontop1()" onmouseout="outtop1()">Schedule</span></div></a></li>
				  <li role="presentation" class=""><a data-target="#reviewnscrap" role="tab" id="reviewnscrap-tab" data-toggle="tab" aria-controls="reviewnscrap" aria-expanded="false" class="p_tab_title_tab"><div class="p_top_menu_list"><span id="p_top_menu_reviewnscrap" onmouseover="ontop2()" onmouseout="outtop2()">Review & Scrap</span></div></a></li>				
				  <li role="presentation" class="" id="p_qnalist_1"><a data-target="#QnA" role="tab" id="QnA-tab" data-toggle="tab" aria-controls="QnA" aria-expanded="false" class="p_tab_title_tab"><div class="p_top_menu_list" ><span id="p_top_menu_QnA" onmouseover="ontop3()" onmouseout="outtop3()">QnA</span>
				  <c:choose>
				  	<c:when test="${empty admin }">
				  	 <input type="hidden" id="p_qnaid" value="${member.id}"></div>
				  	</c:when>
				  	<c:otherwise>
				  	 <input type="hidden" id="p_qnaid" value="${admin.id}"></div>
				  	</c:otherwise>
				  </c:choose>
				 </a></li>
				  <li role="presentation" class=""><a data-target="#myinfo" role="tab" id="myinfo-tab" data-toggle="tab" aria-controls="QnA" aria-expanded="false" class="p_tab_title_tab"><div class="p_top_menu_list" ><span id="p_top_menu_myinfo" onmouseover="ontop4()" onmouseout="outtop4()">My Info</span></div></a></li>	
				</ul>
			</div>										
		</div>	
	</div>

<div class="container">
	<!-- 회원 img 넣을 div 생성  <img src="..." alt="..." class="img-rounded">-->
	<!-- Home tab -->
	
	<div id="myTabContent" class="tab-content">
	  <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
	    <div class="p_home_body">
		<div class="p_home_body_d1" id="p_home_body_d1_1">
			<div class="p_home_body_d1_header">
				<div class="p_home_body_title"><h1>관광지 관리</h1></div><div class="p_home_body_plus"></div>
			</div>
			<!-- 관광지 관리자 페이지 -->
	<div id="search_bar">
	<form action="adminPagesearch" method="get">
		<select name="searchType" >
			<option value="spot_name">관광지</option>
		</select>
		<input type="text" name="searchWord" id="spot_such">
		<input type="submit" value="SEARCH">
	</form>
</div>
								<div id="p_home_body_Schedule">
    <table class="type03" id="list_all">
   <c:forEach items="${list}" var="dto" varStatus="i"> 
    <tr>
        <th scope="row" width="100%" height="100%"><a href="<%=request.getContextPath()%>/spot/spotView?num=${dto.num}"><img src="${pageContext.request.contextPath}/resources/fileimg/${dto.spot_img}" width="100%" height="210px"></a></th>
        <td><a href="spotView?num=${dto.num}">${dto.spot_name}</a>
        <p><img  src="${pageContext.request.contextPath}/resources/img/btn/postion.png">&nbsp;&nbsp;${dto.spot_address}</p>
        <p>${dto.contents}</p><br>
        <p><img src="${pageContext.request.contextPath}/resources/img/btn/clib.png"> ${clibcount[i.index]}</p> 
        		<a href="adminPageUpdate?num=${dto.num}&big_name=${dto.big_name}&spot_name=${dto.spot_name}&city_name=${dto.city_name}&contents=${dto.contents}&spot_xlocation=${dto.spot_xlocation}&spot_ylocation=${dto.spot_ylocation}&thema=${dto.thema}&city_no=${dto.city_no}&spot_address=${dto.spot_address}&file=${dto.spot_img}&category=${dto.category}&address=${dto.address}&phone=${dto.phone}&website=${dto.website}"><input type="button" value="UPDATE" id="update" name="update"></a>
				<a href="<%=request.getContextPath()%>/admin/adminPageDelete?num=${dto.num}"><input type="button" value="DELETE" id="delete"></a>
        </td>
    </tr>
    <tr >
    <th></th>
    <td></td>
    </tr>
    
    </c:forEach>
		</table>
		<div id="write_btn">
<a href="adminPageWrite"><input type="button" class="btn btn-primary" name="write" id="writebtn" value="글쓰기"></a>
</div>

	</div>


		</div>
		
	</div>
	  </div>
	  
	  <!-- ================================================================================================================================ -->
	  <!--schedule tab  -->
	  
	  <div role="tabpanel" class="tab-pane fade" id="schedule" aria-labelledby="schedule-tab">
			<div class="p_home_body" >
		<!-- 주요도시 -->
				<div id="main_city" class="admin_city_list"><input type="text" value="주요도시" class="admin_city_list_text" readonly="readonly"></div>
					<div id="main_city_inner" class="admin_city_inner_list">
						<c:forEach items="${main_cityList}" var="main_city">
							<div class="aaaaa" id="main_city_update">${main_city.city_name}</div>
						</c:forEach>
					</div>
					<div class="bbbbb" id="main_city_update1">
						<div id="city_image_title">이미지 변경</div>
						<div id="city_image1" class="city_image"></div>
						<div id="city_image2" class="city_image"></div>
						<div id="city_image3" class="city_image"></div>
						<form action="../cityWrite" method="post" enctype="multipart/form-data">
						<div id="city_image_change">
							<div class="image_change_button"><input type="file" name="file1" id="change_b1" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file2" id="change_b2" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file3" id="change_b3" class="image_change_file_button"></div>
						</div>
						<div class="image_change_save"><input type="submit" value="save"></div>
						</form>
					</div>
					
					
					
		<!-- 강원도 -->			
				<div id="gangWon" class="admin_city_list"><input type="text" value="강원도" class="admin_city_list_text" readonly="readonly"></div>
					<div id="gangWon_inner" class="admin_city_inner_list">
						<c:forEach items="${gangwon_cityList}" var="gangWon">
							<div class="aaaaa"  id="gangWon_update"><input type="hidden" value="${gangWon.no}" name="update_no">${gangWon.city_name}</div>
						</c:forEach>
					</div>
					<div class="bbbbb" id="gangWon_update1">
						<div id="city_image_title">이미지 변경</div>
						<div id="city_image1" class="city_image"></div>
						<div id="city_image2" class="city_image"></div>
						<div id="city_image3" class="city_image"></div>
						<form action="../cityWrite" method="post" enctype="multipart/form-data">
						<div id="city_image_change">
							<div class="image_change_button"><input type="file" name="file1" id="change_b1" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file2" id="change_b2" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file3" id="change_b3" class="image_change_file_button"></div>
						</div><input type="hidden" name="update_no" value="">
						<div class="image_change_save"><input type="submit" value="save"></div>
						</form>
					</div>
					
					
					
		<!-- 경기도 -->			
				<div id="gyeongGi" class="admin_city_list"><input type="text" value="경기도" class="admin_city_list_text" readonly="readonly"></div>
					<div id="gyeongGi_inner" class="admin_city_inner_list">
							<c:forEach items="${gyeonggi_cityList}" var="gyeonggi">
								<div class ="aaaaa"  id="gyeongGi_update" name="${gyeonggi.no}">${gyeonggi.city_name}
									<input type="hidden" class="${gyeonggi.no}" value="${gyeonggi.city_img1}">
									<input type="hidden" class="${gyeonggi.no}" value="${gyeonggi.city_img2}">
									<input type="hidden" class="${gyeonggi.no}"  value="${gyeonggi.city_img3}">
								</div>
							</c:forEach>
					</div>
					<div class="bbbbb" id="gyeongGi_update1">
						<div id="city_image_title">이미지 변경</div>
						<div id="city_image1" class="city_image"></div>
						<div id="city_image2" class="city_image"></div>
						<div id="city_image3" class="city_image"></div>
						<div id="city_image_change">
							<div class="image_change_button"><input type="file" name="file1" id="change_b1" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file2" id="change_b2" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file3" id="change_b3" class="image_change_file_button"></div>
						</div>
						<div class="image_change_save"><input type="button" value="save"></div>
					</div>
					
					
					
		<!-- 경상남도 -->			
				<div id="gsn" class="admin_city_list"><input type="text" value="경상남도" class="admin_city_list_text" readonly="readonly"></div>
					<div id="gsn_inner" class="admin_city_inner_list">
						<c:forEach items="${gyeongsangS_cityList}" var="gyenogsangS">
							<div class="aaaaa"  id="gsn_update">${gyenogsangS.city_name}</div>
						</c:forEach>
					</div>
					<div class="bbbbb" id="gsn_update1">
						<div id="city_image_title">이미지 변경</div>
						<div id="city_image1" class="city_image"></div>
						<div id="city_image2" class="city_image"></div>
						<div id="city_image3" class="city_image"></div>
						<div id="city_image_change">
							<div class="image_change_button"><input type="file" name="file1" id="change_b1" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file2" id="change_b2" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file3" id="change_b3" class="image_change_file_button"></div>
						</div>
						<div class="image_change_save"><input type="submit" value="save"></div>
					</div>
					
					
					
		<!-- 경상북도 -->			
				<div id="gsb"class="admin_city_list"><input type="text" value="경상북도" class="admin_city_list_text" readonly="readonly"></div>
					<div id="gsb_inner" class="admin_city_inner_list">
						<c:forEach items="${gyeongsangN_cityList}" var="gyeongsangN">
							<div class="aaaaa"  id="gsb_update">${gyeongsangN.city_name}</div>
						</c:forEach>
					</div>
					<div class="bbbbb" id="gsb_update1">
						<div id="city_image_title">이미지 변경</div>
						<div id="city_image1" class="city_image"></div>
						<div id="city_image2" class="city_image"></div>
						<div id="city_image3" class="city_image"></div>
						<div id="city_image_change">
							<div class="image_change_button"><input type="file" name="file1" id="change_b1" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file2" id="change_b2" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file3" id="change_b3" class="image_change_file_button"></div>
						</div>
						<div class="image_change_save"><input type="submit" value="save"></div>
					</div>
					
					
					
		<!-- 전라남도 -->			
				<div id="jln"class="admin_city_list"><input type="text" value="전라남도" class="admin_city_list_text" readonly="readonly"></div>
					<div id="jln_inner" class="admin_city_inner_list">
						<c:forEach items="${ JeollaS_cityList}" var="jeollaS">
							<div class="aaaaa"  id="jln_update"> ${jeollaS.city_name}</div>
						</c:forEach>
					</div>
					<div class="bbbbb" id="jln_update1">
						<div id="city_image_title">이미지 변경</div>
						<div id="city_image1" class="city_image"></div>
						<div id="city_image2" class="city_image"></div>
						<div id="city_image3" class="city_image"></div>
						<div id="city_image_change">
							<div class="image_change_button"><input type="file" name="file1" id="change_b1" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file2" id="change_b2" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file3" id="change_b3" class="image_change_file_button"></div>
						</div>
						<div class="image_change_save"><input type="submit" value="save"></div>
					</div>
					
					
					
		<!-- 전라북도 -->			
				<div id="jlb"class="admin_city_list"><input type="text" value="전라북도" class="admin_city_list_text" readonly="readonly"></div>
					<div id="jlb_inner" class="admin_city_inner_list">
						<c:forEach items="${JeollaN_cityList}" var="jeollaN">
							<div class="aaaaa"  id="jlb_update"> ${jeollaN.city_name}</div>
						</c:forEach>
					</div>
					<div class="bbbbb" id="jlb_update1">
						<div id="city_image_title">이미지 변경</div>
						<div id="city_image1" class="city_image"></div>
						<div id="city_image2" class="city_image"></div>
						<div id="city_image3" class="city_image"></div>
						<div id="city_image_change">
							<div class="image_change_button"><input type="file" name="file1" id="change_b1" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file2" id="change_b2" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file3" id="change_b3" class="image_change_file_button"></div>
						</div>
						<div class="image_change_save"><input type="submit" value="save"></div>
					</div>
					
					
					
		<!-- 충청남도 -->			
				<div id="ccn"class="admin_city_list"><input type="text" value="충청남도" class="admin_city_list_text" readonly="readonly"></div>
					<div id="ccn_inner" class="admin_city_inner_list">
						<c:forEach items="${ chungcheongS_cityList}" var="chungcheongS">
							<div class="aaaaa"  id="ccn_update"> ${chungcheongS.city_name}</div>
						</c:forEach>
					</div>
					<div class="bbbbb" id="ccn_update1">
						<div id="city_image_title">이미지 변경</div>
						<div id="city_image1" class="city_image"></div>
						<div id="city_image2" class="city_image"></div>
						<div id="city_image3" class="city_image"></div>
						<div id="city_image_change">
							<div class="image_change_button"><input type="file" name="file1" id="change_b1" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file2" id="change_b2" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file3" id="change_b3" class="image_change_file_button"></div>
						</div>
						<div class="image_change_save"><input type="submit" value="save"></div>
					</div>
					
					
					
		<!-- 충청북도 -->			
				<div id="ccb"class="admin_city_list"><input type="text" value="충청북도" class="admin_city_list_text" readonly="readonly"></div>
					<div id="ccb_inner" class="admin_city_inner_list">
						<c:forEach items="${chungcheongN_cityList}" var="chungcheongN">
							<div class="aaaaa"  id="ccb_update"> ${chungcheongN.city_name}</div>
						</c:forEach>
					</div>
					<div class="bbbbb" id="ccb_update1">
						<div id="city_image_title">이미지 변경</div>
						<div id="city_image1" class="city_image"></div>
						<div id="city_image2" class="city_image"></div>
						<div id="city_image3" class="city_image"></div>
						<div id="city_image_change">
							<div class="image_change_button"><input type="file" name="file1" id="change_b1" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file2" id="change_b2" class="image_change_file_button"></div>
							<div class="image_change_button"><input type="file" name="file3" id="change_b3" class="image_change_file_button"></div>
						</div>
						<div class="image_change_save"><input type="submit" value="save"></div>
					</div>
			
			
								<!-- <div class="panel-group" id="accordion">
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
								       <div id="p_ac_title">
								       	<div class="p_ac_1">여행일정 이름</div>
								       	<div class="p_ac_1">여행날짜</div>
								       	<div class="p_ac_1">여행위치</div>
								       </div></a><div class="p_ac_1" id="p_ac_delete"><span class="glyphicon glyphicon-trash" id="p_ac_trash" aria-hidden="true"></span></div>
								      </h4>
								    </div>
								    <div id="collapse1" class="panel-collapse collapse in">
								      <div class="panel-body">
								      			<div class="p_panel_body_list">
										      		<div class="p_body_div_1" id="p_panel_body_list_img">
										      			<div class="p_body_div_2" id="p_panel_body_list_img_info">g</div>
										      		</div>
													<div class="p_body_div_3" id="p_panel_body_list_contents"></div>	      			
								      			
								      			</div>
								      </div>
								    </div>
								  </div>
								  
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
								        Collapsible Group 2</a>
								      </h4>
								    </div>
								    <div id="collapse2" class="panel-collapse collapse">
								      <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								      sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
								      minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
								      commodo consequat.</div>
								    </div>
								  </div>
								  
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
								        Collapsible Group 3</a>
								      </h4>
								    </div>
								    <div id="collapse3" class="panel-collapse collapse">
								      <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								      sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
								      minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
								      commodo consequat.</div>
								    </div>
								  </div>
								</div> -->
			
			</div>
	  </div>
	 
	 
	 
	 
	 
	  
	  <!-- review n scrap tab -->
	  
	  <div role="tabpanel" class="tab-pane fade" id="reviewnscrap" aria-labelledby="reviewnscrap-tab">
			<div class="p_home_body" id="p_home_body_reviewnsacrap_1">
					<div class="p_reviewnscrap_1" id="p_review_1">
												<div class="p_review_list">	
												<h1>review</h1>
													<div id="p_review_body_list_img" class="p_body_div_1">
										      			<div class="p_body_div_2"  id="p_review_body_list_img_info">g</div>
										      		</div>
													<div class="p_body_div_3" id="p_review_body_list_contents"></div>	
												</div>
												
												<div class="p_review_list">	
													<div id="p_review_body_list_img" class="p_body_div_1">
										      			<div class="p_body_div_2"  id="p_review_body_list_img_info">g</div>
										      		</div>
													<div class="p_body_div_3" id="p_review_body_list_contents"></div>	
												</div>
					</div>
					<div class="p_reviewnscrap_1" id="p_scrap_1">
												<div class="p_scrap_list">
												<h1>scrap</h1>
													<div id="p_scrap_body_list_img" class="p_body_div_1">
										      			<div class="p_body_div_2" id="p_scrap_body_list_img_info">g</div>
										      		</div>
													<div class="p_body_div_3" id="p_scrap_body_list_contents"></div>	
												</div>
					
												<div class="p_scrap_list">
													<div id="p_scrap_body_list_img" class="p_body_div_1">
										      			<div class="p_body_div_2" id="p_scrap_body_list_img_info">g</div>
										      		</div>
													<div class="p_body_div_3" id="p_scrap_body_list_contents"></div>	
												</div>
					
					
					</div>
				
					
			
			</div>
	  </div>
	  
	  
	  
	  
	  <!--QnA tab  -->
	  
	  <div role="tabpanel" class="tab-pane fade" id="QnA" aria-labelledby="QnA-tab">
			<div id="p_qna_writebtn"><button type="button" id="modalbt1" data-toggle="modal" data-target="#p_qnaWritemodal" class="btn btn-warning">질문 하기</button></div>
			<div class="p_home_body p_qna_body"><h1>QnA</h1> 
				
			</div>
			
		
	  </div>
	  
	  
	  
	  
	  
	  
	  <!--my info tab  -->
	  
	  <div role="tabpanel" class="tab-pane fade" id="myinfo" aria-labelledby="myinfo-tab">
			<div class="p_home_body" ">
						<div id="p_home_body_mypage">
							<form action="${pageContext.request.contextPath}/member/update" method="post">
								<div>
							<table class="table table-striped">
								<tr>
									<td><h1>my info</h1><input type="hidden" name="no" value="${member.no}"></td>
								</tr>
								<tr>
									<td><div class="input-group p_myinfo_input"><span class="input-group-addon" id="p_addon_1">ID</span>
  										<input type="text" class="form-control"  name="id" readonly="memberID" value="${member.id}" aria-describedby="basic-addon1">
											</div>
									</td>
								</tr>
								<tr>
									<td><div class="input-group p_myinfo_input"><span class="input-group-addon" id="p_addon_2">PW</span>
  										<input type="password" class="form-control" id="p_up_pwcheck" name="pw"  aria-describedby="basic-addon1">
											</div>
									</td>
								</tr>
								<tr>
									<td><div class="input-group p_myinfo_input"><span class="input-group-addon" id="p_addon_3">Name</span>
  										<input type="text" class="form-control" id="p_up_namecheck"  name="name" value="${member.name}"  aria-describedby="basic-addon1">
											</div>
									</td>
								</tr>
								<tr>
									<td><div class="input-group p_myinfo_input"><span class="input-group-addon" id="p_addon_4" >Email</span>
  										<input type="email" class="form-control" placeholder="Email" name="email" id="p_up_echeck"  value="${member.email}" aria-describedby="basic-addon1">
											</div>
											<div id="p_up_emailcheckresult">${echeck}</div>
									</td>
								</tr>
								
							</table>
									<button type="button" class="button button5" id="p_update_btn">수정 완료</button>
							  </div>
							</form>
									<a href="${pageContext.request.contextPath}/member/mypage"><button class="button button3" id="p_updatecancel_btn">수정 취소</button></a><span>              </span>
							<div id="p_mypage_moutbt"><button type="button" class="btn btn-warning" data-toggle="modal" data-target=".bs-example-modal-sm" id="">회원 탈퇴</button></div>						

										<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
										  <div class="modal-dialog modal-sm">
										    <div class="modal-content" id="p_modal_mout">
										     <form action="${pageContext.request.contextPath}/member/delete" method="post">
												 <input type="hidden" name="no" value="${member.no}">
										      <br><br><span>정말로 탈퇴 하시겠습니까?</span><br><br><br>
									  		  <button type="submit" class="button button3">예</button></a><span>              </span>
										      <button class="button button5" data-dismiss="modal" >아니오</button>
										     </form>	
										    </div>	
										  </div>
										</div>
						</div>
			
			</div>
	  </div>
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	</div>
	
</div>






<!--QnA write Modal -->
<div class="modal fade" id="p_qnaWritemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" id="p_qna_md_2">
      <form action="${pageContext.request.contextPath}/member/qna_write" id="frm" method="post">
    <div class="modal-content" id="p_qna_md_3">
		     	<div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">질문 하기</h4>
     			</div>
     				<input type="hidden" name="id" value="${member.id}">
     				<input type="hidden" name="m_img" value="${member.m_img}">
					<input type="text" id="p_qna_mdtitle" name="title" placeholder="제목을 입력하세요.">
							<div class="modal-body">
					<textarea name="contents" id="SmartEditor" rows="10" cols="100" style="width: 568px; height: 170px;"></textarea>
							</div>
		      </div>
		      <div class="modal-footer" id="p_qna_footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" id="savebutton" class="btn btn-primary">Save</button>
		      </div>
		</form>
    
    </div>
  </div>

<!--QnA Replywrite Modal -->
<div class="modal fade" id="p_qnaReplymodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" id="p_qna_md_2">
      <form action="${pageContext.request.contextPath}/member/replyqna_write" method="post">
  		  <div class="modal-content" id="p_qna_md_4">
		     	<div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">답변 하기</h4>
     			</div>
					<input type="text" id="p_qna_mdtitle"  name="title" placeholder="제목을 입력하세요.">
							<div class="modal-body" id="replyqna_md_body">
					<textarea name="contents" id="ir3" rows="10" cols="100" style="width: 568px; height: 170px;"></textarea>
							</div><div id="p_hidden_d_ata"></div>
		      </div>
		      <div class="modal-footer" id="p_replymd_footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="submit" id="replyqna_submit" class="btn btn-primary">Save</button>
		      </div>
		</form>
    
    </div>
  </div>


<%@ include file="/WEB-INF/views/temp/footer2.jspf" %>
</body>
</html>