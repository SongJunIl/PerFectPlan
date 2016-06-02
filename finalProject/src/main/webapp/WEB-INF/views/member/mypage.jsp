<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/temp/script.jspf" %>
<%@ include file="/WEB-INF/views/temp/header.jspf" %>
<%@ include file="/resources/css/mypage.css" %>
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

</script>

</Head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body>

<!-- Tab menu -->
<div id="main-body" >
	<div id="p_my_top" >
				<div id=p_top_title>
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
							  <!-- Indicators -->
							  <ol class="carousel-indicators">
							    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							    <li data-target="#myCarousel" data-slide-to="1"></li>
							    <li data-target="#myCarousel" data-slide-to="2"></li>
							    <li data-target="#myCarousel" data-slide-to="4"></li>
							    <li data-target="#myCarousel" data-slide-to="5"></li>
							    <li data-target="#myCarousel" data-slide-to="6"></li>
							    <li data-target="#myCarousel" data-slide-to="7"></li>
							    <li data-target="#myCarousel" data-slide-to="8"></li>
							    <li data-target="#myCarousel" data-slide-to="9"></li>
							    <li data-target="#myCarousel" data-slide-to="10"></li>
							    <li data-target="#myCarousel" data-slide-to="11"></li>
							  </ol>
							
							  <!-- Wrapper for slides -->
							  <div class="carousel-inner" role="listbox">
							    <div class="item active">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo1.jpg">
							    </div>
							
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo2.jpg">							    
							    </div>
							
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo3.jpg">
							    </div>
							
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo4.jpg">
							    </div>
							 	 <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo5.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo6.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo7.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo8.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo9.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="${pageContext.request.contextPath}/resources/img/mypage/photo10.jpg">
							      <img class="p_slide_img" src="/resources/img/mypage/photo1.jpg">
							    </div>
							
							    <div class="item">
							      <img class="p_slide_img" src="/resources/img/mypage/photo2.jpg">							    
							    </div>
							
							    <div class="item">
							      <img class="p_slide_img" src="/resources/img/mypage/photo3.jpg">
							    </div>
							
							    <div class="item">
							      <img class="p_slide_img" src="/resources/img/mypage/photo4.jpg">
							    </div>
							 	 <div class="item">
							      <img class="p_slide_img" src="/resources/img/mypage/photo5.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="/resources/img/mypage/photo6.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="/resources/img/mypage/photo7.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="/resources/img/mypage/photo8.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="/resources/img/mypage/photo9.jpg">
							    </div>
							    <div class="item">
							      <img class="p_slide_img" src="/resources/img/mypage/photo10.jpg">
							    </div>
							  
							  </div>
							
							  <!-- Left and right controls -->
							  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
							    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							    <span class="sr-only">Previous</span>
							  </a>
							  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
							    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							    <span class="sr-only">Next</span>
							  </a>
							</div>
			
			
			
				</div>
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
	
	<!-- Home tab -->
	
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
	  
	  
	  
	  
	  <!--schedule tab  -->
	  
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
										      		<div class="p_body_div_1" id="p_panel_body_list_img">
										      			<div class="p_body_div_2" id="p_panel_body_list_img_info">g</div>
										      		</div>
													<div class="p_body_div_3" id="p_panel_body_list_contents"></div>	      			
								      			
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
	 
	 
	 
	 
	 
	  
	  <!-- review n scrap tab -->
	  
	  <div role="tabpanel" class="tab-pane fade" id="reviewnscrap" aria-labelledby="reviewnscrap-tab">
			<div class="p_home_body" id="p_home_body_reviewnsacrap_1">
				
					<div class="p_reviewnscrap_1" id="p_review_1">
												<div class="p_review_list">	
												<h1>review</h1>
													<div id="p_review_body_list_img" class="p_body_div_1">
										      			<div class="p_body_div_2"  id="p_review_body_list_img_info">g</div>
										      		</div>
													<div class="p_body_div_3" id="p_review_body_list_contents"></div>	
												</div>
												
												<div class="p_review_list">	
													<div id="p_review_body_list_img" class="p_body_div_1">
										      			<div class="p_body_div_2"  id="p_review_body_list_img_info">g</div>
										      		</div>
													<div class="p_body_div_3" id="p_review_body_list_contents"></div>	
												</div>
					</div>
					<div class="p_reviewnscrap_1" id="p_scrap_1">
												<div class="p_scrap_list">
												<h1>scrap</h1>
													<div id="p_scrap_body_list_img" class="p_body_div_1">
										      			<div class="p_body_div_2" id="p_scrap_body_list_img_info">g</div>
										      		</div>
													<div class="p_body_div_3" id="p_scrap_body_list_contents"></div>	
												</div>
					
												<div class="p_scrap_list">
													<div id="p_scrap_body_list_img" class="p_body_div_1">
										      			<div class="p_body_div_2" id="p_scrap_body_list_img_info">g</div>
										      		</div>
													<div class="p_body_div_3" id="p_scrap_body_list_contents"></div>	
												</div>
					
					
					</div>
				
					
			
			</div>
	  </div>
	  
	  
	  
	  
	  <!--QnA tab  -->
	  
	  <div role="tabpanel" class="tab-pane fade" id="QnA" aria-labelledby="QnA-tab">
			<div class="p_home_body"><h1>QnA</h1></div>
	  </div>
	  
	  
	  
	  
	  
	  
	  <!--my info tab  -->
	  
	  <div role="tabpanel" class="tab-pane fade" id="myinfo" aria-labelledby="myinfo-tab">
			<div class="p_home_body" ">
						<div id="p_home_body_mypage">
							<table class="table table-striped">
								<tr>
									<td><h1>my info</h1></td>
								</tr>
								<tr>
									<td><div class="input-group"><span class="input-group-addon" id="p_addon_1">ID</span>
  										<input type="text" class="form-control" readonly="memberID" aria-describedby="basic-addon1">
											</div>
									</td>
								</tr>
								<tr>
									<td><div class="input-group"><span class="input-group-addon" id="p_addon_2">PW</span>
  										<input type="password" class="form-control" placeholder="PassWord" aria-describedby="basic-addon1">
											</div>
									</td>
								</tr>
								<tr>
									<td><div class="input-group"><span class="input-group-addon" id="p_addon_3">Name</span>
  										<input type="text" class="form-control" placeholder="name"  aria-describedby="basic-addon1">
											</div>
									</td>
								</tr>
								<tr>
									<td><div class="input-group"><span class="input-group-addon" id="p_addon_4" >Email</span>
  										<input type="text" class="form-control" placeholder="Email"  aria-describedby="basic-addon1">
											</div>
									</td>
								</tr>
								<tr>
									<td><button class="button button3">수정 취소</button><span>              </span><button class="button button5">수정 완료</button></td>
								</tr>
							</table>
							<div id="p_mypage_moutbt"><button type="button" class="btn btn-warning" data-toggle="modal" data-target=".bs-example-modal-sm" id="">회원 탈퇴</button></div>						

										<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
										  <div class="modal-dialog modal-sm">
										    <div class="modal-content" id="p_modal_mout">
										    	
										      <br><br><span>정말로 탈퇴 하시겠습니까?</span><br><br><br>
										      <button class="button button3">예</button><span>              </span>
										      <button class="button button5">아니오</button>
										    </div>	
										  </div>
										</div>
						</div>
			
			</div>
	  </div>
	 
	</div>
</div>


















</div>
</body>
<%@ include file="/WEB-INF/views/temp/footer.jspf" %>
