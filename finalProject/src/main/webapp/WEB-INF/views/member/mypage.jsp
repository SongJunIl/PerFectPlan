<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/temp/script.jspf" %>
<%@ include file="/WEB-INF/views/temp/header.jspf" %>
<Head>
<script type="text/javascript">
	function ontop() {p_top_menu_home.innerText="홈";}
	function ontop1() {p_top_menu_Schedule.innerText="여행 일정";}
	function ontop2() {p_top_menu_reviewnscrap.innerText="리뷰&스크랩";}
	function ontop3() {p_top_menu_QnA.innerText="질문&답변";}	
	
	function outtop() {p_top_menu_home.innerText="Home";}
	function outtop1() {p_top_menu_Schedule.innerText="Schedule";}
	function outtop2() {p_top_menu_reviewnscrap.innerText="review & Scrap";}
	function outtop3() {p_top_menu_QnA.innerText="QnA";}
</script>

	<style type="text/css">
		
		#p_my_top{
			height: 300px;
			background-color: orange;
		}
		#p_top_title{
			height: 270px;
			background-color: lime;
		}
		#p_top_menu{
			height: 30px;
			background-color: blue;
		}
		
		.p_top_menu_list{
			vertical-align:middle;
			text-align:center;
			font:bolder;
			font-size:20px;
			color:white;
			width: 200px;
			display: inline-block;
		}
	
	
	
	</style>	
</Head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body>

<div id="main-body" >
	<div id="p_my_top" >
		<div id=p_top_title></div>
		<div id=p_top_menu>
			<div class="p_top_menu_list" id=""><span id="p_top_menu_home" onmouseover="ontop()" onmouseout="outtop()">Home</span></div>
			<div class="p_top_menu_list"><span id="p_top_menu_Schedule" onmouseover="ontop1()" onmouseout="outtop1()">Schedule</span></div>
			<div class="p_top_menu_list"><span id="p_top_menu_reviewnscrap" onmouseover="ontop2()" onmouseout="outtop2()">Review & Scrap</span></div>
			<div class="p_top_menu_list" id="QnA"><span id="p_top_menu_QnA" onmouseover="ontop3()" onmouseout="outtop3()">QnA</span></div>
												
		</div>	
	</div>





</div>
</body>
<%@ include file="/WEB-INF/views/temp/footer.jspf" %>
