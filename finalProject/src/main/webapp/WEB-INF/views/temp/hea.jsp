<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<style type="text/css">
	#header{
		height: 75px;
		width: 1440px;
	}
	#header_logo{
		width: 110px;
		height: 65px;
		float: left;
		margin-left:  150px;
	}
	#header_logo_img{
		width: 120px;
		height: 40px;
		padding-top: 18px;
	}
	#header_city{
		height: 25px;
		float: left;
		margin-left: 200px;
		text-align: center;
	}
	#header_plan{
		height: 25px;
		float: left;
		margin-left: 20px;
	}
	#header_use{
		height: 25px;;
		float: left;
		margin-left: 20px;
	}
	#header_notice{
		height: 25px;
		float: left;
		margin-left: 20px;
	}
	#header_member{
		width : 250px;
		height: 75px;
		float: left;
		margin-left: 120px;
	}
	#header_login{
		height: 26px;
		float: left;
	}
	#header_join{
		height: 26px;
		float: left;
	}
	.header_input{
		width: 120px;
		border: none;
		font-size: 14px;
		width: 115px;
		padding-top: 26Px;
		text-align: center; 
	}
	#header_member_img{
		width: 40px;
		height: 40px;
		float: left;
		img-size: 40px 40px;
	}
	#header_member_plan{
		width: 40px;
		height: 40px;
		float: left;
		margin-left: 40px;
	}
	#header_member_clip{
		width: 40px;
		height: 40px;
		float: left;
	}
	#header_member_more{
		width: 40px;
		height: 40px;
		float: left;
	}
	#header_member_logout{
		width: 40px;
		height: 40px;
		float: left;
	}
	#header_member_img1{
		width: 50px;
		height: 50px;
		margin-top: 13px;
	}
	.header_member_image{
		padding-top: 25px;
	}
</style>
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#header_city").mouseover(function(){
		$("#header_city").text("여행지");
	});
	$("#header_city").mouseleave(function(){
		$("#header_city").text("TRAVEL SPOT");
	})
	$("#header_plan").mouseover(function(){
		$("#header_plan").text("여행 일정");
	});
	$("#header_plan").mouseleave(function(){
		$("#header_plan").text("SCHEDULE");
	})
	$("#header_use").mouseover(function(){
		$("#header_use").text("사용 방법");
	});
	$("#header_use").mouseleave(function(){
		$("#header_use").text("HOW TO USE");
	})
	$("#header_notice").mouseover(function(){
		$("#header_notice").text("공지사항");
	});
	$("#header_notice").mouseleave(function(){
		$("#header_notice").text("NOTICE");
	})
	$("#header_login").mouseover(function(){
		$("#header_login").text("로그인");
	});
	$("#header_login").mouseleave(function(){
		$("#header_login").text("JOGIN");
	})
	$("#header_join").mouseover(function(){
		$("#header_join").text("회원가입");
	});
	$("#header_join").mouseleave(function(){
		$("#header_join").text("JOIN");
	})
	
});

</script>
</head>
<body>



<div id="header">
	<div id="header_logo"><img src="${pageContext.request.contextPath}/resources/img/perfectLOGO/logo.jpg" id="header_logo_img"></div>
	<div id="header_city" class="header_input">TRAVEL SPOT</div>
	<div id="header_plan"  class="header_input">SCHEDULE</div>
	<div id="header_use" class="header_input">HOW TO USE</div>
	<div id="header_notice" class="header_input">NOTICE</div>
	
	<div id="header_member">
	<c:if test="${not empty sessionScope.member}">
		<div id="header_member_img"><img src="${pageContext.request.contextPath}/resources/img/login/male-user.png" id="header_member_img1"></div>
		<div id="header_member_plan"><img src="${pageContext.request.contextPath}/resources/img/login/plan.png" id="header_member_plan1" class="header_member_image"></div>
		<div id="header_member_clip"><img src="${pageContext.request.contextPath}/resources/img/login/clip.png" id="header_member_clip1" class="header_member_image"></div>
		<div id="header_member_more"><img src="${pageContext.request.contextPath}/resources/img/login/more.png" id="header_member_more1" class="header_member_image"></div>
		<div id="header_member_logout"><img src="${pageContext.request.contextPath}/resources/img/login/logout.png" id="header_member_logout1" class="header_member_image"></div>	
	</c:if>
	<c:if test="${empty member}">
		 <div id="header_login" class="header_input" data-target="#p_loginmodal"data-toggle="modal">LOGIN</div>
		<div id="header_join" class="header_input" data-target="#p_joinmodal"data-toggle="modal">JOIN</div> 
			
	</c:if>
	</div>
</div>
</body>
</html>
