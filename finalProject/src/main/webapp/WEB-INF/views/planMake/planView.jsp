<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<%@ include file="/WEB-INF/views/temp/script.jspf" %>
<style type="text/css">
	.all_page{
		width: 1092px;
		margin: 0 auto;
	}
	.plan_view_header{
		width: 100%;
		height: 350px;
		color: window;
		border: 1px solid #c8c8ca;
	}
	.plan_view_mem{
		float: left;
		margin-left: 30px;
		margin-top: 160px;
	}
	.paln_mem_profile{
		float: left;
		width: 45px;
		height: 45px;
		border-radius:100px;
		background-color: white;
	}
	.paln_mem_name{
		float: left;
		height: 40px;
		font-size: 25px;
		font-weight: bold;
		line-height: 40px;
		margin-left: 15px;
	}
	.plan_view_jim{
		width: 45px;
		height: 45px;
		border-radius:100px;
		background-color: white;
		float: right;
		margin-top: 15px;
		margin-right: 15px;
	}
	.clear{
		clear: both;
	}
	.plan_view_inner{
		margin-left: 30px;
		margin-top: 10px;
	}
	.plan_title{
		font-weight: bolder;
		font-size: 30px;
		width: 520px;
	}
	.plan_date_thema{
		margin-top: 5px;
		width: 520px;
	}
	.plan_date{
		float: left;
	}
	.thema{
		float: left;
		margin-left: 20px;
		background-color: gray;
		color: white;
		border-radius :6px; 
		width: 70px;
		text-align: center;
		
		
	}
	.plan_loc_co_jim_box{
		margin-top:5px;
		width: 520px;
	}
	.plan_loc_co_jim_inner{
		border: white 1px solid;
		width: 180px;
		height: 30px;
	}
	.plan_loc_inner{
		margin-top:3px;
		margin-left:14px;
		float: left;
	}
	.plan_co_inner{
		margin-top:3px;
		margin-left:14px;
		float: left;
	
	}
	.plan_jim_inner{
		margin-top:3px;
		margin-left:14px;
		float: left;
	
	}
	.plan_view_body{
		width: 1092px;
		margin-top: 30px;
		height: 125px;
		
	}
	.plan_view_body_dailyplan{
		width: 720px;
		border: 1px solid #c8c8ca;
	}
	.plan_view_body_day{
		float: left;
		width: 110px;
		height: 60px;
		background-color: #203341;
		color: white;
		font-size: 25px;
		font-weight: bolder;
		text-align: center;
		line-height: 60px;
	}
	.plan_view_body_title{
		height: 60px;
		float: left;
		border-bottom: 1px solid #c8c8ca;
		width: 608px;
	}
	.plan_view_body_title_date{
		margin-top: 5px;
		margin-left: 15px;
	}
	.plan_view_body_title_city_name{
		font-size: 20px;
		font-weight: bold;
		margin-left: 15px;
	}
	
	.plan_daily_num{
		float: left;
		width: 30px;
		height: 30px;
		list-style:30px;
		text-align: center;
		background-color: #555555;
		border-radius:100px;
		font-size: 20px;
		font-weight: bold;
		color: white; 
		margin-left: 30px;
		margin-top: 30px;
	}
	.plan_daily_spot_img{
		float: left;
		margin-left: 30px;
	}
	.plan_daily_spot_img img{
		width: 70px;
		height: 70px;
	}
	.plan_daily_spot{
		float: left;
		width: 605px;
		padding-top: 15px;
	}
	.plan_daily_spot_box{
		float: left;
	}
	.plan_daily_spot_content{
		float: left;
		width: 425px;
		height:60px;
		margin-left: 15px;
		
		
	}
	.plan_daily_spot_name{
		width: 415px;
		margin-bottom: 5px;
	}
	.plan_daily_spot_thema{
		width:80px;
		padding: 0 10px;
		border: 1px solid #cccccc;
		background-color: #f5f5f5;
		border-radius: 4px;
		
		
	}
	.plan_daily_spot_info{
		float: right;
		margin-top: 15px;
	}
	.plan_view_body_dailyplan_inner{
		height: 120px;
		
	}
	.plan_view_body_dailyplan_dotdash{
		border-top: 1px solid #c8c8ca;
		border-bottom: 1px solid #c8c8ca;
		height: 35px;
		text-align: center;
	}
</style>
</head>
<body>
<!-- header -->
 <%@ include file="/WEB-INF/views/temp/header.jspf" %>
<!-- section -->
	<div class="all_page">
	
		<div class="plan_view_header" style="background-color: black;">
			<div class="plan_view_mem">
				<div class="paln_mem_profile">
					<img src="${pageContext.request.contextPath}/resources/img/plan/btn_like.png">
				</div>
				<div class="paln_mem_name">
					조진우
				</div>
			</div>
			<div class="plan_view_jim">
				<img src="${pageContext.request.contextPath}/resources/img/plan/btn_like.png">
			</div>
			<div class="clear"></div>
			<div class="plan_view_inner">
				<div class="plan_title">
					아브라카타브라
				</div>
				<div class="plan_date_thema">				
					<div class="plan_date">
						2016.04.25 ~ 2016.05.01 (3일)
					</div>
					<div class="thema">
						OO여행
					</div>
					<div class="clear"></div>
				</div>
				<div class="plan_loc_co_jim_box">
					<div class="plan_loc_co_jim_inner">
						<div class="plan_loc_inner">
							<img src="${pageContext.request.contextPath}/resources/img/plan/cnt_spot.png"> 10
						</div>
						<div class="plan_co_inner">
							<img src="${pageContext.request.contextPath}/resources/img/plan/cnt_view.png"> 264						
						</div>
						<div class="plan_jim_inner">
							<img src="${pageContext.request.contextPath}/resources/img/plan/cnt_copy.png"> 7
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="plan_view_body">
			<div class="plan_view_plna_list">
				<div class="plan_view_body_dailyplan">
					<div class="plan_view_body_day">DAY1</div>
					<div class="plan_view_body_title">
						<div class="plan_view_body_title_date">2016.06.30(목)</div>
						<div class="plan_view_body_title_city_name">부산</div>
					</div>
					<div class="clear"></div>
					<div class="plan_view_body_dailyplan_body">
						<div class="plan_view_body_dailyplan_dotdash">
							<img src="${pageContext.request.contextPath}/resources/img/plan/down-straight-arrow-pointing-to-a-dot.png">
						</div>
						<div class="plan_view_body_dailyplan_inner">
							<div class="plan_daily_num">
								1
							</div>
							<div class="plan_daily_spot">
								<div class="plan_daily_spot_img">
									<img src="${pageContext.request.contextPath}/resources/img/plan/backpacker-running.png">
								</div>
								<div class="plan_daily_spot_box">
									<div  class="plan_daily_spot_content">
										<div class="plan_daily_spot_name">
											상해거리
										</div>
										<div class="plan_daily_spot_thema">
											관광명소
										</div>
									</div>	
									<div class="plan_daily_spot_info">
										<img src="${pageContext.request.contextPath}/resources/img/plan/information.png">
										
									</div>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="clear"></div>
						</div>	
					</div>
				</div>
			</div>
		</div>
		
	</div>
<!-- footer -->
<%@ include file="/WEB-INF/views/temp/footer.jspf" %>
</body>
</html>