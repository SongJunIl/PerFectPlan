<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	margin: 0;
	overflow: hidden;
}
#planList_header{
	width: 100%;
	height: 600px;
	background: #7bc0f9;
}
#planList_inner{
	width: 1092px;
	margin: 0 auto;
	
}
#inner_text{
	width:100%;
	color: white;
	font-family: 'nanum_b';
    padding-top: 55px;
    padding-bottom: 55px;
    font-size: 36px;
    text-align: center;
}

#inner_pbtn{
	width: 500px;
	height: 60px;
	margin: 0 auto;
}

#inner_pbtn_1{
	width:200px;
	height: 60px;
	float: left;
	text-align: center;
	background-color: #848d9c;
}
#inner_pbtn_2{
	width:170px;
	height: 60px;
	float: right;
	text-align: center;
	margin-right: 120px;
	background-color: #848d9c;
}
</style>

</head>
<body>
<!-- header -->

<!-- section -->
<div id="planList_header">
	<div id="planList_inner">
		<div id="inner_text">
			누구나 쉽게 일정을 계획할 수 있습니다.
		</div>
		<div id="inner_img">
			<img src="${pageContext.request.contextPath}/resources/img/plan/planList_header.jpg">
		</div>
		<div id="inner_pbtn">
			<div id="inner_pbtn_1">
				<img src="${pageContext.request.contextPath}/resources/img/plan/makePlan.jpg">
				<span>새로운 일정 만들기</span>
			</div>
			<div id="inner_pbtn_2">
				<img src="${pageContext.request.contextPath}/resources/img/plan/myPlan.jpg">
				<span>My Planner</span>
			</div>
		</div>
	</div>
</div>

<!-- footer -->

</body>
</html>