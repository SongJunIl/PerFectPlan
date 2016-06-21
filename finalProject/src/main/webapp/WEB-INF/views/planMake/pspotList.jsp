<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style type="text/css">

	.spot_list_inner_img{
		float: left;
	}
	.spot_list_inner_name{
		margin-top:15px;
		line-height: normal;
		
	}
	.spot_list_inner_name{
		float: left;
		margin-left: 10px;
	}
	.spot_list_inner_kname{
		text-align: left;
	}
	.spot_list_inner_addbtn{
		float: right;
	}
	.spot_list_inner_img img{
		border: 1px solid gray;
		width: 60px;
		height: 60px;
		overflow: auto;
	}
	.spot_list_inner_addbtn img{
		border: 1px solid gray;
		width: 40px;
		height: 40px;
		overflow: auto;
	}
	.spot_list_inner{
		width: 359px;
		height: 100px;
		line-height: 65px;
		border-bottom: 1px gray solid;
		border-top: 1px gray solid;
		margin: 0 auto;
	}
	.spot_list_inner_box{
		width: 280px;
		height: 90px;
		margin: 0 auto;
		padding-top: 15px;
	}
	.spot_list_inner_addbtn{
		cursor: pointer;
	}
</style>
	
	<input type="hidden" id="spot_list" value="${spot_List.size()}">
	<c:forEach items="${spot_List}" var="spot_list" varStatus="i2">
					<input class="spot_num${i2.index}" type="hidden" value="${spot_list.num}">
					<input class="spot_name${i2.index}" type="hidden" value="${spot_list.spot_name }">
					<input class="city_no${i2.index}" type="hidden" value="${spot_list.city_no }">
					<input class="spot_xlocation${i2.index}" type="hidden" value="${spot_list.spot_xlocation }">
					<input class="spot_ylocation${i2.index}" type="hidden" value="${spot_list.spot_ylocation }">
					
					<div class="spot_list_inner">
						<div class="spot_list_inner_box">
							<div class="spot_list_inner_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
							</div>
							<div class="spot_list_inner_name">
								<div class="spot_inner_kname">
								
									${spot_list.spot_name}
								</div>
								<div class="spot_list_inner_clip">
								
									<img src="${pageContext.request.contextPath}/resources/img/plan/list_clip_icon.png"> : ${spot_list.counts}
									|
									<img src="${pageContext.request.contextPath}/resources/img/plan/list_clip_icon.png"> : 50
								</div>
							</div>
							<div class="spot_list_inner_addbtn big_btn" id="big_btn${i2.index}" data-index="${i2.index}">
								<img src="${pageContext.request.contextPath}/resources/img/plan/spot_to_inspot_a.png" >
							</div>
							<div class="clear"></div>
						</div>	
					</div>
				</c:forEach>
	
