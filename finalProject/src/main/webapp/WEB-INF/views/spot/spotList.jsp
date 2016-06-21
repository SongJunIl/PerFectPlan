<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
  #h{
 	margin-left: 200px;
 	margin-top: 25px;
  }
  .menu_list{
      height: 48px;
      width: 220px;
      float: left;
      text-align: center;
      border: 1px solid black;
      background-color: navy;
   }
   .menu_name{
      width : 100px;
      height: 45px;
      border: 0px;
      color: white;
      font-size: 10px;
      font-weight: bold;
      text-align: center;
      background-color: navy;
   }
   #spot_such{
   background: url('${pageContext.request.contextPath}/resources/img/btn/such.gif');
   background-repeat: no-repeat;
   background-position: right; 
   }
   ul.tabs {
    margin-top:20px;
    margin-left:200px;
    padding: 0;
    float: left;
    list-style: none;
    height: 32px;
    border-bottom: 1px solid #eee;
    border-left: 1px solid #eee;
    width:885px;
    font-family:"dotum";
    font-size:12px;
}
ul.tabs li {
    float: left;
    text-align:center;
    cursor: pointer;
    width:140px;
    height: 31px;
    line-height: 31px;
    border: 1px solid #eee;
    border-left: none;
    font-weight: bold;
    background: #fafafa;
    overflow: hidden;
    position: relative;
}
ul.tabs li.active {
    background: #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
}
table.type03 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #369;
    margin : 0 auto;
   
}
table.type03 th {
    width: 250px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;

}
table.type03 td {
    width: 640px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}
#search_bar{margin-left: 190px; margin-top: 20px;}
#curPage{ text-align: center; margin-left: 280px;}
#write_btn{float: right; margin-right: 200px;}
#g{height: 20px; background-color: white;}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/temp/script.jspf" %>
<%@ include file="/WEB-INF/views/temp/header.jspf" %>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="h">
         <div class="menu_list"><input type="text" class="menu_name" value="H O M E" readonly="readonly"> </div>
         <div class="menu_list"><input type="text" class="menu_name" value="A T T R A C T I O N" readonly="readonly"></div>
         <div class="menu_list"><input type="text" class="menu_name" value="T R A V E L P L A N" readonly="readonly"></div>
         <div class="menu_list"><input type="text" class="menu_name" value="M A P" readonly="readonly"></div>  
      </div>
 

<table class="table table-bordered">
	<thead>
	<div id="container">
    <ul class="tabs">
    	
        <li class="active" rel="tab1" id="all_category" value="1">전체</li>
        <li class="active"rel="tab2" id="spot_category" value="2">관광지</li>
        <li class="active"rel="tab3" id="landmark_category" value="3">랜드마크</li>
    </ul>
    </div>
    </thead>
  
    <table class="type03" id="list_all">
   <c:forEach items="${list}" var="dto"> 
    <tr>
        <th scope="row" width="100%" height="100%"><a href="spotView?num=${dto.num}"><img src="${pageContext.request.contextPath}/resources/fileimg/${dto.spot_img}" width="100%" height="210px"></a></th>
        <td><a href="spotView?num=${dto.num}">${dto.spot_name}</a>
        <p><img  src="${pageContext.request.contextPath}/resources/img/btn/postion.png">&nbsp;&nbsp;${dto.spot_address}</p>
        <p>${dto.contents}</p><br>
        <p><img src="${pageContext.request.contextPath}/resources/img/btn/clib.png"></p>
        </td>
    </tr>
    
    <tr >
    <th></th>
    <td></td>
    </tr>
    
    </c:forEach>
		</table>
		
</table>
	

<!-- 검색바 --> 
<div id="search_bar">
	<form action="./search" method="get">
		<select name="searchType" >
			<option value="spot_name">관광지</option>
		</select>
		<input type="text" name="searchWord" id="spot_such">
		<input type="submit" value="SEARCH">
	</form>
</div>

<div id="write_btn">
<input type="button" class="btn btn-primary" name="write" id="write" value="글쓰기">
</div>
<div id="curPage">
	<c:if test="${page.curBlock > 1}">
		<a href="./spotList?curPage=${page.startNum-1}">[이전]</a>
	</c:if>
	<c:forEach begin="${page.startNum}" end="${page.lastNum}" var="i">
		<a href="./spotList?curPage=${i}">${i}</a>
	</c:forEach>
	<c:if test="${page.lastNum < page.totalBlock}">
		<a href="./spotList?curPage=${page.lastNum+1}">[다음]</a>
	</c:if>
</div>
</body>
<script type="text/javascript">

	$("#write").on('click',function(){
		location.href = "spotWrite?type=${page.type}";
	});
	
	$( document ).ready(function() {
		$("#all_category").css("background-color","#FF6600");
		
	$( ".active" ).click(function() {
		if($(this).attr("value") == 1){
		$("#all_category").css("background-color","#FF6600");
		$("#spot_category").css("background-color","white");
		$("#landmark_category").css("background-color","white");
			var t = $("#all_category").attr("value");
			 $.ajax({
		            type:"POST",
		            url:"${pageContext.request.contextPath}/spot/category",
		            data:{
		            	category:t
		                },
		                success: function (data){
		                	 $("#list_all").html(data);     
		                }
			 });
	         
		
		}else if($(this).attr("value") == 2){
			$("#all_category").css("background-color","white");
			$("#spot_category").css("background-color","#FF6600");
			$("#landmark_category").css("background-color","white");
				var t = $("#spot_category").attr("value");
				 $.ajax({
			            type:"POST",
			            url:"${pageContext.request.contextPath}/spot/category",
			            data:{
			            	category:t
			                },
			                success: function (data){
			                	 $("#list_all").html(data);     
			                }
				 });
		         
			
		}else if($(this).attr("value") == 3){
			$("#all_category").css("background-color","white");
			$("#spot_category").css("background-color","white");
			$("#landmark_category").css("background-color","#FF6600");
			
				var t = $("#landmark_category").attr("value");
				 $.ajax({
			            type:"POST",
			            url:"${pageContext.request.contextPath}/spot/category",
			            data:{
			            	category:t
			                },
			                success: function (data){
			                	 $("#list_all").html(data);     
			                }
				 });
			}
		});
	});

</script>
</html>







