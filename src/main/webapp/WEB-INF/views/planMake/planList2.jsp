<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<style type="text/css">
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
		for(var i=1;i<$("#plan_list2_size").val();i++){
			$("."+(i*3)).css("margin-right","0px");
			
		}
});
</script>
		<input type="hidden" value="${plan_list2.size() }" id="plan_list2_size">
		<c:forEach items="${plan_list2 }" var="planList" varStatus="i2">
	 			<a href="${pageContext.request.contextPath}/planMake/planView?id=${planList.id }&plan_no=${planList.plan_no}">
		 		<div class="plan_inner_list ${i2.index+1 }" >
	 				<div class="plan_list_title" style="text-overflow:ellipsis;overflow:hidden;white-space:nowrap">
	 					<div style="margin-top: 50px;">
		 					<span>${planList.s_date }</span><span>${planList.days}DAYS</span><br>
		 					<span class="plan_title">${planList.plan_name }</span>
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