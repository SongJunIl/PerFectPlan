<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
//scroll the message box to the top offset of browser's scrool bar  
$(window).scroll(function()  
{  
    $('#scroll').animate({top:$(window).scrollTop()+"px" },{queue: false, duration: 350});    
});  
//when the close button at right corner of the message box is clicked   
$('#scroll').click(function()  
{  
    //the messagebox gets scrool down with top property and gets hidden with zero opacity   
    $('#scroll').animate({ top:"+=15px",opacity:0 }, "slow");  
});  
</script>
<style type="text/css">
		.popular_inner_list{
		width: 263px;
		height: 233px;
		float: left;
		background-color: black;
		border: 1px solid gray;
		margin-right:10px;
   		margin-bottom: 10px;
	}
	
	$(document).ready(function() {
 
	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#floatMenu").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );
 
	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";
 
		/* 애니메이션 없이 바로 따라감
		 $("#floatMenu").css('top', newPosition);
		 */
 
		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 500);
 
	}).scroll();
 
});
</style>
</head>
<body>

</body>
</html>