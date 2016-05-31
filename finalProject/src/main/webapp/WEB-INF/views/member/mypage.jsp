<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/temp/script.jspf" %>
<%@ include file="/WEB-INF/views/temp/header.jspf" %>
<Head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function ontop() {p_top_menu_home.innerText="홈";}
	function ontop1() {p_top_menu_Schedule.innerText="여행 일정";}
	function ontop2() {p_top_menu_reviewnscrap.innerText="리뷰&스크랩";}
	function ontop3() {p_top_menu_QnA.innerText="질문&답변";}
	function ontop4() {p_top_menu_myinfo.innerText="나의 정보";}
	
	function outtop() {p_top_menu_home.innerText="Home";}
	function outtop1() {p_top_menu_Schedule.innerText="Schedule";}
	function outtop2() {p_top_menu_reviewnscrap.innerText="review & Scrap";}
	function outtop3() {p_top_menu_QnA.innerText="QnA";}
	function outtop4() {p_top_menu_myinfo.innerText="My info";}	
	$(document).ready(function() {
	    $('a[data-toggle="tab"]').on('hidden.bs.tab', function(e){
		alert("이벤트 실행됨");
	    });
	});
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
			height: 50px;
			background-color: blue;
		}
		
		.p_top_menu_list{
			vertical-align:middle;
			text-align:center;
			font:bolder;
			font-size:20px;
			width: 170px;
			display: inline-block;
		}
		#p_top_menu_center{width: 1010px; margin: 0 auto;}
		.p_tab_title_tab{width: 200px;}
		.p_home_body{width: 800px; height: 1000px; background-color: green; margin: 0 auto; margin-top: 30px}
		.p_home_body_d1{height: 350px; margin-top: 10px; }
		#p_home_body_d1_1{background-color: aqua;}
		#p_home_body_d1_2{background-color: orange;}
		#p_home_body_d1_3{background-color: lime;}
		.p_home_body_title{float: left;}
		.p_home_body_plus{float: right; margin-top: 10px; margin-right: 15px;}
		.p_home_body_d1_header{clear: both; border-bottom: 1px black solid; height: 75px;}
	
		.p_ac_1{display: inline-block; margin-left: 15px;}
		#p_ac_delete{display:inline-block; margin-top:-15px; float: right; width: 50px;}	
		#p_ac_trash{margin-left: 20px;}
		
		.p_panel_body_list{width: 800px; height: 350px;}
		#p_panel_body_list_img{width:770px; height: 250px; background-color: fuchsia;}
		#p_panel_body_list_img_info{width:770px; margin-top: 200px; height:50px; background-color:lime; display: inline-block;}
		#p_panel_body_list_contents{width:770px; height: 100px; background-color: olive;}
		
	</style>	
</Head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body>

<div id="main-body" >
	<div id="p_my_top" >
		<div id=p_top_title></div>
		<div id=p_top_menu>
			<div id=p_top_menu_center>
				<ul id="myTab" class="nav nav-tabs" role="tablist">
				  <li role="presentation" class="active"><a data-target="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true" class="p_tab_title_tab"><div class="p_top_menu_list" ><span id="p_top_menu_home" onmouseover="ontop()" onmouseout="outtop()">Home</span></div></a></li>
				  <li role="presentation" class=""><a data-target="#schedule" role="tab" id="schedule-tab" data-toggle="tab" aria-controls="schedule" aria-expanded="false" class="p_tab_title_tab"><div class="p_top_menu_list"><span id="p_top_menu_Schedule" onmouseover="ontop1()" onmouseout="outtop1()">Schedule</span></div></a></li>
				  <li role="presentation" class=""><a data-target="#reviewnscrap" role="tab" id="reviewnscrap-tab" data-toggle="tab" aria-controls="reviewnscrap" aria-expanded="false" class="p_tab_title_tab"><div class="p_top_menu_list"><span id="p_top_menu_reviewnscrap" onmouseover="ontop2()" onmouseout="outtop2()">Review & Scrap</span></div></a></li>				
				  <li role="presentation" class=""><a data-target="#QnA" role="tab" id="QnA-tab" data-toggle="tab" aria-controls="QnA" aria-expanded="false" class="p_tab_title_tab"><div class="p_top_menu_list" ><span id="p_top_menu_QnA" onmouseover="ontop3()" onmouseout="outtop3()">QnA</span></div></a></li>
				  <li role="presentation" class=""><a data-target="#myinfo" role="tab" id="myinfo-tab" data-toggle="tab" aria-controls="QnA" aria-expanded="false" class="p_tab_title_tab"><div class="p_top_menu_list" ><span id="p_top_menu_myinfo" onmouseover="ontop4()" onmouseout="outtop4()">My Info</span></div></a></li>	
				</ul>
			</div>										
		</div>	
	</div>
	
	


<div class="container">
	
	<div id="myTabContent" class="tab-content">
	  <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
	    <div class="p_home_body">
		<div class="p_home_body_d1" id="p_home_body_d1_1">
			<div class="p_home_body_d1_header">
				<div class="p_home_body_title"><h1>recently Schedule</h1></div><div class="p_home_body_plus"><a href=""><span class="glyphicon glyphicon-plus" aria-hidden="true">더보기</span></a></div>
			</div>
								<div id="p_home_body_Schedule">
									
								</div>


		</div>
		<div class="p_home_body_d1" id="p_home_body_d1_2">
			<div class="p_home_body_d1_header">
				<div class="p_home_body_title"><h1>recently Review & Scrap</h1></div><div class="p_home_body_plus"><a href=""><span class="glyphicon glyphicon-plus" aria-hidden="true">더보기</span></a></div>		
			</div>
			
								<div id="p_home_body_review">
								
								</div>
								<div id="p_home_body_scrap">
								
								</div>


		</div>	
		<div class="p_home_body_d1" id="p_home_body_d1_3">
			<div class="p_home_body_d1_header">
				<div class="p_home_body_title"><h1>recently QnA</h1></div><div class="p_home_body_plus"><a href=""><span class="glyphicon glyphicon-plus" aria-hidden="true">더보기</span></a></div>		
		 	</div>
								<div id="p_home_body_QnA">
								
								</div>



		</div>
	</div>
	  </div>
	  
	  
	  
	  
	  
	  <div role="tabpanel" class="tab-pane fade" id="schedule" aria-labelledby="schedule-tab">
			<div class="p_home_body">
			
								<div class="panel-group" id="accordion">
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
								       <div id="p_ac_title">
								       	<div class="p_ac_1">여행일정 이름</div>
								       	<div class="p_ac_1">여행날짜</div>
								       	<div class="p_ac_1">여행위치</div>
								       </div></a><div class="p_ac_1" id="p_ac_delete"><span class="glyphicon glyphicon-trash" id="p_ac_trash" aria-hidden="true"></span></div>
								      </h4>
								    </div>
								    <div id="collapse1" class="panel-collapse collapse in">
								      <div class="panel-body">
								      			<div class="p_panel_body_list">
										      		<div id="p_panel_body_list_img">
										      			<div id="p_panel_body_list_img_info">g</div>
										      		</div>
													<div id="p_panel_body_list_contents"></div>	      			
								      			
								      			</div>
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
								        Collapsible Group 2</a>
								      </h4>
								    </div>
								    <div id="collapse2" class="panel-collapse collapse">
								      <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								      sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
								      minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
								      commodo consequat.</div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
								        Collapsible Group 3</a>
								      </h4>
								    </div>
								    <div id="collapse3" class="panel-collapse collapse">
								      <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								      sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
								      minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
								      commodo consequat.</div>
								    </div>
								  </div>
								</div>
			
			</div>
	  </div>
	  <div role="tabpanel" class="tab-pane fade" id="reviewnscrap" aria-labelledby="reviewnscrap-tab">
			<div class="p_home_body"><h1>review n scrap</h1></div>
	  </div>
	  <div role="tabpanel" class="tab-pane fade" id="QnA" aria-labelledby="QnA-tab">
			<div class="p_home_body"><h1>QnA</h1></div>
	  </div>
	  <div role="tabpanel" class="tab-pane fade" id="myinfo" aria-labelledby="myinfo-tab">
			<div class="p_home_body"><h1>my info</h1></div>
	  </div>
	 
	</div>
</div>


















</div>
</body>
<%@ include file="/WEB-INF/views/temp/footer.jspf" %>
