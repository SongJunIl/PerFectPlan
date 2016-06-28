<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<style type="text/css">
	.plan_inner_list{
 	float: left;
 	margin-right:28px;
 	margin-bottom: 20px;
 }
 .plan_list_bg{
 	width: 345px;
 	height: 200px;
 	background-color: gray;
 	overflow: hidden;
 }
 .plan_list_title span{
 	margin-left: 10px;
 }
 .plan_list_title{
 	margin-top: 140px;
 	width: 200px;
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
 }
 
</style>
<script type="text/javascript">
$(function() {
		for(var i=1;i<5;i++){
			$("."+(i*3)).css("margin-right","0px");
			
		}
});
</script>
		<input type="hidden" value="${plan_list2.size() }" id="plan_list2_size">
		<c:forEach items="${plan_list2 }" var="planList" varStatus="i2">
	 			<a href="${pageContext.request.contextPath}/planMake/planView?id=${planList.id }&plan_no=${planList.plan_no}">
		 		<div class="plan_inner_list ${i2.index+1 }" >
		 			<div class="plan_list_bg">
		 				<div class="plan_list_title" style="text-overflow:ellipsis;overflow:hidden;white-space:nowrap">
		 					<span>${planList.s_date }</span><span>${planList.days}DAYS</span><br>
		 					<span class="plan_title">${planList.plan_name }</span>
		 				</div>
		 				
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