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
		
	}
</style>
</head>
<body>
<!-- header -->
 <%@ include file="/WEB-INF/views/temp/header.jspf" %>
<!-- section -->
	<div class="all_page">
	
		<div class="plan_view_header" style="background-color: blue">
			<div class="plan_view_mem">
				<div class="paln_mem_profile">
					
				</div>
				<div class="paln_mem_name">
					조진우
				</div>
			</div>
			<div class="plan_view_jim">
				
			</div>
			<div class="clear"></div>
			<div class="plan_view_inner">
				<div class="plan_title">
					아브라카타브라
				</div>
				<div class="plan_date">
					2016.04.25 ~ 2016.05.01 (3일)
				</div>
				<div class="thema">
					OO여행
				</div>
				<div class="plan_loc_co_jim_box">
					
				</div>
			</div>
		</div>
		
		<div class="plan_view_body">
		
		</div>
		
	</div>
<!-- footer -->
<%@ include file="/WEB-INF/views/temp/footer.jspf" %>
</body>
</html>