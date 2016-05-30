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
*{
	margin: 0;
	
}

/*-------header---------*/
#planList_header{
	width: 100%;
	height: 600px;
	background: #7bc0f9;
}
#planList_inner{
	width: 1092px;
	margin: 0 auto;
	
}
#pinner_text{
	width:100%;
	color: white;
	width: 100%;
	text-align: center;
	font-family: 'nanum_b';
    padding-top: 55px;
    padding-bottom: 55px;
    font-size: 36px;
    text-align: center;
}

#pinner_pbtn{
	width: 500px;
	height: 60px;
	margin: 0 auto;
}

#pinner_pbtn_1{
	overflow:hidden;
	width:200px;
	height: 60px;
	float: left;
	background-color: #848d9c;
	font-weight: bolder;
	color: white;
	border-radius:5px;
}
#pinner_pbtn_1 img{
	float:left;
	margin-top: 15px;
	margin-left: 10px;
}
#pinner_pbtn_1 span{
	float:left;
	height: 60px;
	line-height: 60px;
	margin-left: 10px;	
	
}
#pinner_pbtn_2{
	width:170px;
	height: 60px;
	float: right;
	text-align: center;
	margin-right: 60px;
	background-color: #848d9c;
	font-weight: bolder;
	color: white;
	border-radius:5px; 
}
#pinner_pbtn_2 img{
	float:left;
	margin-top: 15px;
	margin-left: 10px;
}
#pinner_pbtn_2 span{
	float:left;
	height: 60px;
	line-height: 60px;
	margin-left: 10px;	
}
/*-------content----------  */
#planList_content{
	width: 100%;
	padding-top: 70px;
}
#pcontent_inner{
	width: 1092px;
	margin: 0 auto;
}
#pinner_header{
	text-align: center;
	font-weight: bolder;
	font-size: 25px;
	color: #505050;
	padding-bottom: 40px;
}

#pinner_filter{
	width: 100%;
	border: 1px solid #cfcfcf;
    margin-bottom: 20px;
}

.pfilter_filter_title{
	width: 140px;
    height: 50px;
    line-height: 50px;
    text-align: center;
    color: #555555;
    font-size: 14px;
    font-weight: bold;
    float: left;
    border-right: 1px solid #e3e3e3;
    border-bottom: 1px dotted #c8c8ca;

}
.pfilter_rigth_filter{
	float: left;
	width: 945px;
	height: 50px;
	border-bottom: 1px dotted #c8c8ca;
    height: 50px;
    line-height: 50px;
}
.pfilter_clear{
	clear: both;
}
.pfilter_right_content{
	float: left;
	width: 95px;
	height: 50px;
	text-align: center;
	cursor: pointer;
}
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
			$("#"+(i*3)).css("margin-right","0px");
			
		}
	});
	
</script>

</head>
<body>
<!-- header -->

<%@ include file="/WEB-INF/views/temp/header.jspf" %>

<!-- section -->
<div id="planList_header">
	<div id="planList_inner">
		<div id="pinner_text">
			누구나 쉽게 일정을 계획할 수 있습니다.
		</div>
		<div id="pinner_img">
			<img src="${pageContext.request.contextPath}/resources/img/plan/planList_header.jpg">
		</div>
		<div id="pinner_pbtn">
			<div id="pinner_pbtn_1">
				<img src="${pageContext.request.contextPath}/resources/img/plan/makePlan.jpg">
				<span>새로운 일정 만들기</span>
			</div>
			<div id="pinner_pbtn_2">
				<img src="${pageContext.request.contextPath}/resources/img/plan/myPlan.jpg">
				<span>My Planner</span>
			</div>
		</div>
	</div>
</div>

<div id="planList_content">
	
	<div id="pcontent_inner">
		
		<div id="pinner_header">
			<span>나그네들의 일정 보기</span>
		</div>
		
		
		<div id="pinner_filter">
			<div class="pfilter_filter_title">
				필터
			</div>
			<div class="pfilter_rigth_filter">
				
				<div class="pfilter_clear"></div>
			</div>
			<div class="pfilter_clear"></div>
			
			<div class="pfilter_filter_title">
				여행지
			</div>
			<div class="pfilter_rigth_filter">
				
				<div class="pfilter_clear"></div>
			</div>
			<div class="pfilter_clear"></div>
			
			<div class="pfilter_filter_title">
				여행일
			</div>
			<div class="pfilter_rigth_filter">
				<div class="pfilter_right_content">
					1-3일
				</div>
				<div class="pfilter_right_content">
					4-6일
				</div>
				<div class="pfilter_right_content">
					7-10일
				</div>
				<div class="pfilter_right_content">
					11일 이상
				</div>
				<div class="pfilter_clear"></div>
			</div>
			<div class="pfilter_clear"></div>
			
			<div class="pfilter_filter_title">
				여행시기
			</div>
			<div class="pfilter_rigth_filter">
				<div class="pfilter_right_content">
					봄
				</div>
				<div class="pfilter_right_content">
					여름
				</div>
				<div class="pfilter_right_content">
					가을
				</div>
				<div class="pfilter_right_content">
					겨울
				</div>
				<div class="pfilter_clear"></div>
			</div>
			<div class="pfilter_clear"></div>
			
			
			<div class="pfilter_filter_title">
				여행테마
			</div>
			<div class="pfilter_rigth_filter">
				<div class="pfilter_right_content">
					가족여행
				</div>
				<div class="pfilter_right_content">
					나홀로여행
				</div>
				<div class="pfilter_right_content">
					커플여행
				</div>
				<div class="pfilter_right_content">
					친구와함께
				</div>
				<div class="pfilter_clear"></div>
			</div>
			<div class="pfilter_clear"></div>
			
		</div>
		<div class="pfilter_clear"></div>
		
		<div id="pinner_list">
		<div id="pinner_list_order">
			<div id="pinner_order_menu"> 
				<span>인기</span>
				<span>│</span>
				<span>신규</span>
			</div>
			<div id="pinner_list_counts">
				????개의 일정
			</div>
			<div class="pfilter_clear"></div>
		</div>
		<%for(int i=0;i<12;i++){ %>
			
		<div class="plan_inner_list" id="<%=i+1%>">
			<div class="plan_list_bg">
				<div class="plan_list_title">
					<span>2016-00-00</span><span>2DAYS</span><br>
					<span>title</span>
				</div>
				
			</div>
			<div class="plan_list_ex">
				<span>Thema</span>
				<div class="plan_counts">조횟수</div>
				<div class="plan_clips">클립수</div>
				<div class="plan_spots">도시수</div>
				<div class="pfilter_clear"></div>
				<div class="plan_bigcity">광역시</div>
				<div class="pfilter_clear"></div>
				<div class="plan_id">ID</div>
			</div>
		</div>
		<%} %>
		<div class="pfilter_clear"></div>	
		</div>
		
		
		<div id="pinner_page">
			<div id="ppage_view">Pagging 할곳</div>
		</div>
		
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/temp/footer.jspf" %>
</body>
</html>