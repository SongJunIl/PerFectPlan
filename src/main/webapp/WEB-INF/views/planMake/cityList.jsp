<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style type="text/css">
#plan_select_city{
		background-color: white;
		width: 300px;
		height: 825px;
		float: left;
		
	}
	#pselect_city_header{
		overflow:hidden;
		background-color: gray;
		color: white;
		width: 300px;
		height: 50px; 
		line-height: 50px;
	}
	#pselect_city_title{
		width: 150px;
		font-weight: bolder;
		font-size: 25px;
		
		text-align: center;
		float: left;
	}
	#pselect_city_img img{
		width: 30px;
		height: 30px;
		overflow: auto;
		float: left;
		vertical-align: middle;
		margin-left: 20px;
		margin-top: 10px;
	}
	#pselect_city_body{
		margin-top:10px;
		width: 300px;
		height: 825px;
		overflow: auto;
	}
.pcity_inner_name{
		margin-top:15px;
		line-height: normal;
		text-align: center;
	}
	.pcity_inner_img{
		float: left;
	}
	.pcity_inner_name{
		float: left;
		margin-left: 10px;
	}
	.pcity_inner_kname{
		text-align: left;
	}
	.pcity_inner_addbtn{
		float: right;
	}
	.pcity_inner_img img{
		border: 1px solid gray;
		width: 60px;
		height: 60px;
		overflow: auto;
	}
	.pcity_inner_addbtn img{
		border: 1px solid gray;
		width: 40px;
		height: 40px;
		overflow: auto;
	}
	.pselect_city_inner{
		width: 280px;
		height: 70px;
		line-height: 65px;
		border-bottom: 1px gray solid;
		border-top: 1px gray solid;
	}
	.pcity_inner_box{
		width: 245px;
		height: 70px;
		margin: 0 auto;
	}
	.pcity_inner_addbtn{
		cursor: pointer;
	}



#planner_nav_header{
	width: 350px;
	height: 50px;
	color: white;
	background-color: #1a7ad9;
}
#planner_nav_title{
	width:150px;
	float: left;
	margin-left: 20px;
	font-weight: bolder;
	font-size: 25px;
	text-align: center;
	height: 50px;
	line-height: 50px;
}
#planner_nav_date{
	float: left;
	margin-right: 15px;
	width: 90px;
	height: 50px;
	line-height: 50px;
}
#planner_nav_date img{
	margin-right: 5px;
}

#datepicker {
	color: white;
	background: url(${pageContext.request.contextPath}/resources/img/plan/pn_cal_btn.png) no-repeat 125px 7px;
	font-size: 12px;
	width: 150px;
	height: 30px;
	border: 1px white double;
}
#planner_nav_btn{
	width: 100%;
	height: 80px;
	border-top: 1px gray solid; 
	padding-top: 16px;
}

#planner_nav_btn_go{
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


.planner_nav_inner{
	background-color: #efefef;
	width: 280px;
	height: 40px;
	margin: 5px auto;
	border-radius: 10px; 
	/* display: none; */
}
.planner_nav_inner_box{
	width: 260px;
	height: 30px;
	margin: 0 auto;
	
}
.planner_nav_inner_img{
	float: left;
	margin-left: 20px;
	margin-top: 8px; 
}
.planner_nav_inner_name{
	float: left;
	margin-left: 20px;
	text-align: center;
	margin-top: 8px;
}
.planner_nav_inner_day{
	float: right;
	margin-right: 5px;
	margin-top: 8px;
}
.planner_nav_inner_line{
	width:100%;
	text-align: center;
}
.planner_nav_inner_img{
	cursor: pointer;
}
.plan_date_minur,.plan_date_inner,.plan_date_plus{
	float:left;
	margin-left: 10px;
	margin-right: 10px;
	cursor: pointer;
}

/* 토글 내용 css */
.city_inner_window{
	background-color:#dcdcdc;
	display: none;
}
.city_list_inner_img{
		float: left;
	}
	.city_list_inner_name{
		margin-top:15px;
		line-height: normal;
		text-align: center;
	}
	.city_list_inner_name{
		float: left;
		margin-left: 10px;
	}
	.city_list_inner_kname{
		text-align: left;
	}
	.city_list_inner_addbtn{
		float: right;
	}
	.city_list_inner_img img{
		border: 1px solid gray;
		width: 50px;
		height: 50px;
		overflow: auto;
	}
	.city_list_inner_addbtn img{
		border: 1px solid gray;
		width: 40px;
		height: 40px;
		overflow: auto;
	}
	.city_list_inner{
		width: 260px;
		height: 70px;
		line-height: 65px;
		border-bottom: 1px gray solid;
		border-top: 1px gray solid;
		margin: 0 auto;
	}
	.city_list_inner_box{
		width: 245px;
		height: 70px;
		margin: 0 auto;
	}
	.city_list_inner_addbtn{
		cursor: pointer;
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<script type="text/javascript">
$(function() {
	var big_array = $(".big_List").val();
	for(i=0;i<big_array;i++){
		if(i>7){			
			$(".inner_box_chech"+i).css("cursor","pointer");
		}
	}
	//========================== 도내 주요 시 보여주기====================================
	var box_index_check=0;
	$(".pcity_inner_box").click(function(){
		var box_index = $(this).attr("data-index");
		if(box_index>7){
			
			
			for(i=0;i<big_array;i++){
			    $(".window_check"+i).slideUp();			
			}
			if(box_index_check != box_index){
			 $(".window_check"+box_index).slideDown();
			/* for(j=0;j<marker2.length;j++){
					marker2[j].setMap(null);
					
			 }
			 for(j=0;j<marker3.length;j++){
					marker3[j].setMap(null);
					
			 } */
			 		 
			/*  var city_length = $(".city_List"+box_index).val();
			
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
							city_ename : city_array[a].city_ename,
							city_name:city_array[a].city_name,
				            title: city_array[a].city_name,
				            no: city_array[a].city_no,
				            city_xlocation :city_array[a].city_xlocation,
				            city_ylocation :city_array[a].city_ylocation,
				            latlng: new daum.maps.LatLng(city_array[a].city_xlocation, city_array[a].city_ylocation)
					});	
					
				} */
			 	/* marker3.splice(0,marker3.length);
			 	for (var i = 0; i < positions3.length; i ++) {
			 	    
			 	    // 마커를 생성합니다
			 	    marker3.push(new daum.maps.Marker({
			 		        map: map, // 마커를 표시할 지도
			 		        position: positions3[i].latlng, // 마커를 표시할 위치
			 		        title : positions3[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
			 		    	}));
			 		
			 	}*/
			 	
				
			 	
			 
			 box_index_check=box_index;  
			} else if(box_index_check == box_index){
				box_index_check=0;
				/* for(j=0;j<marker2.length;j++){
					marker2[j].setMap(map);
					
			 	}
				
				for(j=0;j<marker3.length;j++){
					marker3[j].setMap(null);
					
			 	}
								
				map.setCenter(new daum.maps.LatLng(36.3666102, 127.8783881)); // 지도의 중심좌표 
				 map.setLevel(13); // 지도의 확대 레벨 */
			}
		} 
	});	
	
	
	$(".big_btn").click(function() {
		var index_num=$(this).attr("data-index");
		var index_kind=$(this).attr("data-kind");
		var city_name="";
		if(index_kind=='big'){
			$(".city_no").val($(".big_no"+index_num).val());
			$(".daily_xlocation").val($(".big_xlocation"+index_num).val());
			$(".daily_ylocation").val($(".big_ylocation"+index_num).val());
			city_name=$(".big_name"+index_num).val();
		}else{
			$(".city_no").val($(".city_no"+index_num).val());
			$(".daily_xlocation").val($(".city_xlocation"+index_num).val());
			$(".daily_ylocation").val($(".city_ylocation"+index_num).val());
			city_name=$(".city_name"+index_num).val()
		}
		if (confirm(city_name+" 를 하루 추가 하시겠습니까?") == true){    //확인
		    $("#frm").submit();
		}else{   //취소
		    return false;
		}
	})
});
</script>
<div id="pselect_city_body">
		<form action="dayPlanAdd" method="post" id="frm">
			<input class="plan_no" name="plan_no" type="text" >
			<input class="daily_date" name="daily_date" type="text" >
			<input class="city_no" name="city_no" type="text" >
			<input class="daily_xlocation" name="daily_xlocation" type="text" >
			<input class="daily_ylocation" name="daily_ylocation" type="text">
		</form>
		<input class="big_List" type="hidden" value="${bigCity.size() }">
	<c:forEach items="${bigCity}" var="bigList" varStatus="i">
		
		<input class="big_name${i.index}" type="hidden" value="${bigList.big_name }">
		<input class="big_ename${i.index}" type="hidden" value="${bigList.big_ename }">
		<input class="big_no${i.index}" type="hidden" value="${bigList.no }">
		<input class="big_xlocation${i.index}" type="hidden" value="${bigList.big_xlocation }">
		<input class="big_ylocation${i.index}" type="hidden" value="${bigList.big_ylocation }">
		
		<div class="pselect_city_inner">
			<div class="pcity_inner_box inner_box_chech${i.index}" data-index="${i.index}">
				<div class="pcity_inner_img">
					<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
				</div>
				<div class="pcity_inner_name">
					<div class="pcity_inner_kname">
					${bigList.big_name }
					</div>
					<div class="pcity_inner_ename">
					${bigList.big_ename }
				</div>
				</div>
				<%-- <c:if test="${bigList.big_ename == 'Seoul' || bigList.big_ename == 'Busan' || bigList.big_ename == 'Daegu'|| bigList.big_ename == 'Incheon'|| 
							bigList.big_ename == 'Gwangju'|| bigList.big_ename == 'Daejeon'|| bigList.big_ename == 'Ulsan'||	bigList.big_ename == 'Jeju'}"> --%>
				<c:if test="${bigList.no < 164}">
					<div class="pcity_inner_addbtn big_btn" id="big_btn${i.index}" data-kind="big" data-index="${i.index}">
						<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
					</div>
				</c:if>
					
				<div class="clear"></div>
			</div>	
		</div>
		
		<!-- city_list_inner -->
		
	<!-- 강원도 -->
		<c:if test="${bigList.big_ename == 'Gangwon'}">
			<div class="city_inner_window window_check${i.index}" data-index="${i.index}">	
				<input class="city_List${i.index }" type="hidden" value="${gang.size() }">
				<c:forEach items="${gang}" var="check_city_1" varStatus="i2">
					<input class="city_name${i2.index}" type="hidden" value="${check_city_1.city_name }">
					<input class="e_name${i2.index}" type="hidden" value="${check_city_1.e_name }">
					<input class="city_no${i2.index}" type="hidden" value="${check_city_1.no }">
					<input class="city_xlocation${i2.index}" type="hidden" value="${check_city_1.city_xlocation }">
					<input class="city_ylocation${i2.index}" type="hidden" value="${check_city_1.city_ylocation }">
					
					<div class="city_list_inner">
						<div class="city_list_inner_box">
							<div class="city_list_inner_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
							</div>
							<div class="city_list_inner_name">
								<div class="pcity_inner_kname">
								
								${check_city_1.city_name}
								</div>
								<div class="city_list_inner_ename">
								
								${check_city_1.e_name}
							</div>
							</div>
							<div class="city_list_inner_addbtn big_btn" id="big_btn${i2.index}" data-kind="city" data-index="${i2.index}">
								<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
							</div>
							<div class="clear"></div>
						</div>	
					</div>
				</c:forEach>
			</div>
		</c:if>
		
	<!-- 경기도 -->
		<c:if test="${bigList.big_ename == 'Gyeonggi'}">
			<div class="city_inner_window window_check${i.index}" data-index="${i.index}">	
				<input class="city_List${i.index }" type="hidden" value="${gyeong.size() }">
				<c:forEach items="${gyeong}" var="check_city_1" varStatus="i2">
				<input class="city_name${i2.index}" type="hidden" value="${check_city_1.city_name }">
					<input class="e_name${i2.index}" type="hidden" value="${check_city_1.e_name }">
					<input class="city_no${i2.index}" type="hidden" value="${check_city_1.no }">
					<input class="city_xlocation${i2.index}" type="hidden" value="${check_city_1.city_xlocation }">
					<input class="city_ylocation${i2.index}" type="hidden" value="${check_city_1.city_ylocation }">
					<div class="city_list_inner">
						<div class="city_list_inner_box">
							<div class="city_list_inner_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
							</div>
							<div class="city_list_inner_name">
								<div class="pcity_inner_kname">
								
								${check_city_1.city_name}
								</div>
								<div class="city_list_inner_ename">
								
								${check_city_1.e_name}
							</div>
							</div>
							<div class="city_list_inner_addbtn big_btn" id="big_btn${i2.index}" data-kind="city" data-index="${i2.index}">
								<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
							</div>
							<div class="clear"></div>
						</div>	
					</div>
				</c:forEach>
			</div>
		</c:if>		
		
	<!-- 경상남도 -->
		<c:if test="${bigList.big_ename == 'GyeongsangSouth'}">
			<div class="city_inner_window window_check${i.index}" data-index="${i.index}">
			<input class="city_List${i.index }" type="hidden" value="${gyeongsangS.size() }">	
				<c:forEach items="${gyeongsangS}" var="check_city_1" varStatus="i2">
				<input class="city_name${i2.index}" type="hidden" value="${check_city_1.city_name }">
					<input class="e_name${i2.index}" type="hidden" value="${check_city_1.e_name }">
					<input class="city_no${i2.index}" type="hidden" value="${check_city_1.no }">
					<input class="city_xlocation${i2.index}" type="hidden" value="${check_city_1.city_xlocation }">
					<input class="city_ylocation${i2.index}" type="hidden" value="${check_city_1.city_ylocation }">
					<div class="city_list_inner">
						<div class="city_list_inner_box">
							<div class="city_list_inner_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
							</div>
							<div class="city_list_inner_name">
								<div class="pcity_inner_kname">
								
								${check_city_1.city_name}
								</div>
								<div class="city_list_inner_ename">
								
								${check_city_1.e_name}
							</div>
							</div>
							<div class="city_list_inner_addbtn big_btn" id="big_btn${i2.index}" data-kind="city" data-index="${i2.index}">
								<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
							</div>
							<div class="clear"></div>
						</div>	
					</div>
				</c:forEach>
			</div>
		</c:if>
		
	<!-- 경상북도 -->
		<c:if test="${bigList.big_ename == 'GyeongsangNorth'}">
			<div class="city_inner_window window_check${i.index}" data-index="${i.index}">
			<input class="city_List${i.index }" type="hidden" value="${gyeongsangN.size() }">	
				<c:forEach items="${gyeongsangN}" var="check_city_1" varStatus="i2">
				<input class="city_name${i2.index}" type="hidden" value="${check_city_1.city_name }">
					<input class="e_name${i2.index}" type="hidden" value="${check_city_1.e_name }">
					<input class="city_no${i2.index}" type="hidden" value="${check_city_1.no }">
					<input class="city_xlocation${i2.index}" type="hidden" value="${check_city_1.city_xlocation }">
					<input class="city_ylocation${i2.index}" type="hidden" value="${check_city_1.city_ylocation }">
					<div class="city_list_inner">
						<div class="city_list_inner_box">
							<div class="city_list_inner_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
							</div>
							<div class="city_list_inner_name">
								<div class="pcity_inner_kname">
								
								${check_city_1.city_name}
								</div>
								<div class="city_list_inner_ename">
								
								${check_city_1.e_name}
							</div>
							</div>
							<div class="city_list_inner_addbtn big_btn" id="big_btn${i2.index}" data-kind="city" data-index="${i2.index}">
								<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
							</div>
							<div class="clear"></div>
						</div>	
					</div>
				</c:forEach>
			</div>
		</c:if>
		
	<!-- 전라남도 -->
		<c:if test="${bigList.big_ename == 'JeollaSouth'}">
			<div class="city_inner_window window_check${i.index}" data-index="${i.index}">
			<input class="city_List${i.index }" type="hidden" value="${jeollaS.size() }">	
				<c:forEach items="${jeollaS}" var="check_city_1" varStatus="i2">
				<input class="city_name${i2.index}" type="hidden" value="${check_city_1.city_name }">
					<input class="e_name${i2.index}" type="hidden" value="${check_city_1.e_name }">
					<input class="city_no${i2.index}" type="hidden" value="${check_city_1.no }">
					<input class="city_xlocation${i2.index}" type="hidden" value="${check_city_1.city_xlocation }">
					<input class="city_ylocation${i2.index}" type="hidden" value="${check_city_1.city_ylocation }">
					<div class="city_list_inner">
						<div class="city_list_inner_box">
							<div class="city_list_inner_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
							</div>
							<div class="city_list_inner_name">
								<div class="pcity_inner_kname">
								
								${check_city_1.city_name}
								</div>
								<div class="city_list_inner_ename">
								
								${check_city_1.e_name}
							</div>
							</div>
							<div class="city_list_inner_addbtn big_btn" id="big_btn${i2.index}" data-kind="city" data-index="${i2.index}">
								<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
							</div>
							<div class="clear"></div>
						</div>	
					</div>
				</c:forEach>
			</div>
		</c:if>
		
	<!-- 전라북도 -->
		<c:if test="${bigList.big_ename == 'JeollaNorth'}">
			<div class="city_inner_window window_check${i.index}" data-index="${i.index}">
			<input class="city_List${i.index }" type="hidden" value="${jeollaN.size() }">	
				<c:forEach items="${jeollaN}" var="check_city_1" varStatus="i2">
				<input class="city_name${i2.index}" type="hidden" value="${check_city_1.city_name }">
					<input class="e_name${i2.index}" type="hidden" value="${check_city_1.e_name }">
					<input class="city_no${i2.index}" type="hidden" value="${check_city_1.no }">
					<input class="city_xlocation${i2.index}" type="hidden" value="${check_city_1.city_xlocation }">
					<input class="city_ylocation${i2.index}" type="hidden" value="${check_city_1.city_ylocation }">
					<div class="city_list_inner">
						<div class="city_list_inner_box">
							<div class="city_list_inner_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
							</div>
							<div class="city_list_inner_name">
								<div class="pcity_inner_kname">
								
								${check_city_1.city_name}
								</div>
								<div class="city_list_inner_ename">
								
								${check_city_1.e_name}
							</div>
							</div>
							<div class="city_list_inner_addbtn big_btn" id="big_btn${i2.index}" data-kind="city" data-index="${i2.index}">
								<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
							</div>
							<div class="clear"></div>
						</div>	
					</div>
				</c:forEach>
			</div>
		</c:if>
		
	<!-- 충청남도 -->
		<c:if test="${bigList.big_ename == 'ChungcheongSouth'}">
			<div class="city_inner_window window_check${i.index}" data-index="${i.index}">	
			<input class="city_List${i.index }" type="hidden" value="${chungcheongS.size() }">
				<c:forEach items="${chungcheongS}" var="check_city_1" varStatus="i2">
					<input class="city_name${i2.index}" type="hidden" value="${check_city_1.city_name }">
					<input class="e_name${i2.index}" type="hidden" value="${check_city_1.e_name }">
					<input class="city_no${i2.index}" type="hidden" value="${check_city_1.no }">
					<input class="city_xlocation${i2.index}" type="hidden" value="${check_city_1.city_xlocation }">
					<input class="city_ylocation${i2.index}" type="hidden" value="${check_city_1.city_ylocation }">
					<div class="city_list_inner">
						<div class="city_list_inner_box">
							<div class="city_list_inner_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
							</div>
							<div class="city_list_inner_name">
								<div class="pcity_inner_kname">
								
								${check_city_1.city_name}
								</div>
								<div class="city_list_inner_ename">
								
								${check_city_1.e_name}
							</div>
							</div>
							<div class="city_list_inner_addbtn big_btn" id="big_btn${i2.index}" data-kind="city" data-index="${i2.index}">
								<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
							</div>
							<div class="clear"></div>
						</div>	
					</div>
				</c:forEach>
			</div>
		</c:if>
		
	<!-- 충청북도 -->
		<c:if test="${bigList.big_ename == 'ChungcheongNorth'}">
			<div class="city_inner_window window_check${i.index}" data-index="${i.index}">	
			<input class="city_List${i.index }" type="hidden" value="${chungcheongN.size() }">
				<c:forEach items="${chungcheongN}" var="check_city_1" varStatus="i2">
				<input class="city_name${i2.index}" type="hidden" value="${check_city_1.city_name }">
					<input class="e_name${i2.index}" type="hidden" value="${check_city_1.e_name }">
					<input class="city_xlocation${i2.index}" type="hidden" value="${check_city_1.city_xlocation }">
					<input class="city_ylocation${i2.index}" type="hidden" value="${check_city_1.city_ylocation }">
					<div class="city_list_inner">
						<div class="city_list_inner_box">
							<div class="city_list_inner_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
							</div>
							<div class="city_list_inner_name">
								<div class="pcity_inner_kname">
								
								${check_city_1.city_name}
								</div>
								<div class="city_list_inner_ename">
								
								${check_city_1.e_name}
							</div>
							</div>
							<div class="city_list_inner_addbtn big_btn" id="big_btn${i2.index}" data-kind="city" data-index="${i2.index}">
								<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
							</div>
							<div class="clear"></div>
						</div>	
					</div>
				</c:forEach>
			</div>
		</c:if>	
			
	</c:forEach>
		
	</div>