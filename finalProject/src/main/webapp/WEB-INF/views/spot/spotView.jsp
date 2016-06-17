<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/views/temp/script.jspf" %>
<%@ include file="/WEB-INF/views/temp/header.jspf" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script type="text/javascript">


function rego(){
	document.getElementById("reply_write_spot").scrollIntoView();
}
	$( document ).ready(function() {
		$("#badmyBar").css("width","${icon.badicon}");
		$("#sosomyBar").css("width","${icon.sosoicon}");
		$("#goodmyBar").css("width","${icon.goodicon}");
		$( ".rate_box div" ).click(function() {
		if($(this).attr("data-val") == 1){
		$("#p1").css("background-color","#FF6600");
		$("#p2").css("background-color","white");
		$("#p3").css("background-color","white");
		$("#icon").val($("#p1").attr("data-val"));
		}else if($(this).attr("data-val") == 3){
			$("#p1").css("background-color","white");
			$("#p2").css("background-color","#FF6600");
			$("#p3").css("background-color","white");
			$("#icon").val($("#p2").attr("data-val"));
		}else if($(this).attr("data-val") == 5){
			$("#p1").css("background-color","white");
			$("#p2").css("background-color","white");
			$("#p3").css("background-color","#FF6600");
			$("#icon").val($("#p3").attr("data-val"));
			}
		});
	});
	</script>

<style type="text/css">
.rate_box{width: 350px; height: 20px; float: left;}
.rate_box img{width: 18px; height: 18px; text-align: center; }
.rate_btn{border: 1px solid #d8d8d8; cursor: pointer;  width: 100px; }
#myProgress {
  width: 200px;
  height: 10px;
  background-color: #ddd;
  float: right;
  margin-top: 20px;
}

#badmyBar {
  position: absolute;
  width: 0%;
  height: 10px;
  background-color: #ff9800;

}
#sosomyBar {
  position: absolute;
  width:0%;
  height: 10px;
  background-color: #ff9800;
  
}
#goodmyBar {
  position: absolute;
  width: 0%;
  height: 10px;
  background-color:#ff9800;
  
}
.textform{margin-left: 220px;}
#head_bar{height: 150px; width:750px; float:left; background-color: white;  margin-top:20px; margin-left: 80px;  }
#spot_name{height: 40px; width:750px; background-color: white; margin-bottom: 5px; text-align: left; }
#spot_addr{height: 30px;  width:750px; background-color: white; margin-bottom: 10px;}
#clib_cnt{height: 20px; width: 50px; background-color: white; float: left; margin-right: 20px;} 
#rate_ctn{width: 100px; height: 20px; background-color: white; float: left;}
#review_btn{width:60px; height:60px;border-radius:60px; text-align:center; cursor: pointer; float:right; background-color: silver; margin-right: 60px; margin-top: 50px;}
#clib_btn{width:60px; height:60px;border-radius:60px; text-align:center; cursor: pointer; float:right; background-color: silver; margin-right: 60px; margin-top: 50px;}
#plan_btn{width:60px; height:60px;border-radius:60px; text-align:center; cursor: pointer; float:right; background-color: #0AC9FF; margin-right: 60px; margin-top: 50px;}
#btn_contain{margin-right: 30px;}
#review_text{height: 30px; background-color: white; margin-top: 20px;}
#clib_text{height: 30px; background-color: white; margin-top: 20px;}
#plan_text{height: 30px; background-color: white; margin-top: 20px;}
#center_bar{height: 1500px; margin-top: 180px; border-top: 1px solid #d8d8d8; }
#img_bar{height: 300px; width:850px; margin-top: 20px;  }
#center_side_bar{width: 250px; height :1800px; margin-left:980px; margin-top:20px; background-color: black; float:none;}
#img_text{ width: 850px;  margin-top: 20px; }
#spot_info_box{height: 350px; width: 850px; margin-top: 20px;}
#center_box{height: 1500px;   width: 850px; background-color: white; float: left; margin-left: 200px;}
#spot_info{height: 130px;  border:1px solid #d8d8d8; }
#spot_info_table th{font-size: 13px; color: #808080;line-height: 28px; vertical-align: top; padding-left: 70px; }
#spot_info_table td{color: #555555; font-weight: bold; line-height: 28px; vertical-align: top; padding-left: 50px; }
#spot_title_chart{height: 60px; margin-top: 80px; }
#spot_info_box_chart{height: 250px;border:1px solid #d8d8d8; }
#spot_chart_title{height: 30px;  margin-top: 10px; margin-left: 20px;  }
#happy_rate{font-size: 15px; font-weight: bolder; }
#peple_rate{font-size: 8px; }
#spot_chart_rate{height: 220px; }
.chart_rate_img{margin-left: 20px; margin-bottom: 10px; }
#good_rate{height: 50px; width:370px; margin-left: 10px; margin-bottom: 15px; }
#normal_rate{height: 50px; width:370px; margin-left: 10px; margin-bottom: 15px; }
#bad_rate{height: 50px; width:370px; margin-left: 10px; margin-bottom: 15px;}
#reply_title{height: 50px; margin-top: 35px;}
#reply_view{border-left: 1px solid #d8d8d8; border-right: 1px solid #d8d8d8; border-top: 1px solid #d8d8d8; text-align: center;}
#reply_write{height: 250px; border-left: 1px solid #d8d8d8; border-right: 1px solid #d8d8d8; border-bottom: 1px solid #d8d8d8; }
#reply_write_spot{height: 20px; padding-top:10px; padding-left:20px;  margin-bottom:20px; font-weight: bolder; border-top: 1px solid #d8d8d8;}
#reply_rate_box{height: 25px; width: 350px;  margin-left: 80px; }
#p3{float: left;  text-align: center; width: 100px;}
#p2{float: left; margin-right: 10px; text-align: center; width: 100px; }
#p1{float: left;margin-right: 10px; text-align: center; width: 100px;}
#reply_area{margin-top: 20px; float: left; width: 590px;
    height: 98px;
    color: #555555;
    font-size: 11px;
    line-height: 22px;
    padding: 10px;
    border: 1px solid #e9e9e9;
    margin-top: 10px;
    margin-left: 5px;}
#reply_id{margin-top: 15px;}
#reply_submit{ float: right; width: 70px;
    height: 30px;
    line-height: 20px;
    color: white;
    font-size: 13px;
    background: #ff9320;
    border: 1px solid #f7870f;
    cursor: pointer;}
#reply_write_btn{width: 700px; height: 50px; margin-top: 20px;   }
#no_result{margin-top: 50px; margin-top: 20px; margin-bottom: 20px; text-align: center;}
#reply_form{margin-bottom:50px; border-bottom: 1px solid #d8d8d8;}
#no_result_text{padding-bottom: 20px;}
#user_txt{height: 20px;  }
#user_name{padding-bottom:20px; padding-left: 40px; font-weight: bolder; }
#review_opbtn{float: right;  width: 100px; margin-top: 20px;}
#delect{float: left; color: #49b2e9; }
#update{float: left;color: #49b2e9;}
#user_content{padding-left: 50px; padding-bottom: 30px;}
#user_rate{padding-left: 50px; padding-bottom: 20px; padding-top: 20px;}
.icon_rate{color: #ff440d;}
#reg_Date{font-size: 11px;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="head_bar">
	<div id="spot_name">
	<h2>${spotDTO.spot_name}</h2> 
	</div>
	<div id="spot_addr">
	<img  src="${pageContext.request.contextPath}/resources/img/btn/postion.png">&nbsp;&nbsp;${spotDTO.spot_address }
	</div>
	<div id="clib_cnt">
	<img src="${pageContext.request.contextPath}/resources/img/btn/clib.png" height="20px;">
	</div>
	<div id="rate_cnt">
	<img src="${pageContext.request.contextPath}/resources/img/btn/rate.png" height="20px;">&nbsp;&nbsp;${icon2.totalicon2}/10
	</div>
</div>

<div id="btn_contain">

<div id="plan_btn">
<img  src="${pageContext.request.contextPath}/resources/img/btn/spot_padd_btn.png">
<div id="plan_text">일정추가</div>
</div>

<div id="clib_btn">
<img  src="${pageContext.request.contextPath}/resources/img/btn/spot_clip_btn.png">
<div id="clib_text">클립</div>
</div>

<div id="review_btn" >
<img id="review_btn_img" onclick="rego()"  src="${pageContext.request.contextPath}/resources/img/btn/spot_review_btn.png">
<div id="review_text" >리뷰쓰기</div>
</div>
</div>
<!-- center bar -->
<div id="center_bar">
<div id="center_box">
<div id="img_bar"><img src="${pageContext.request.contextPath}/resources/fileimg/${spotDTO.spot_img}" width="850px" height="300px"></div>
<div id="img_text"><p><img  src="${pageContext.request.contextPath}/resources/img/btn/info.png" width="17px;"height="17px;"> ${spotDTO.contents}</p></div>
<div id="spot_info_box">
<div id="spot_info">
<table id="spot_info_table"><br>
<tr>
<th>카테고리</th>
<td>${spotDTO.category }</td>
<th>웹사이트</th>
<td><a href="${spotDTO.website}">${spotDTO.website}</a></td>
</tr>
<tr>
<th>가는 길</th>
<td>${spotDTO.address }</td>
</tr>
<tr>
<th>전화번호</th>
<td>${spotDTO.phone }</td>
</tr>
</table>
</div>
<div id="spot_po"></div>
<div id="spot_title_chart">
<h3>여행 인기 분석도</h3>
</div>
<div id="spot_info_box_chart">
<div id="spot_chart_title"><span id="happy_rate">만족도</span> <span id="peple_rate">${icon.totalicon} 명의 평가</span></div>
<div id="spot_chart_rate">

<div id="good_rate">
<div id="myProgress">
  <div id="goodmyBar"></div><div class="textform">${icon.goodicon/2}%</div>
  </div>
<img class="chart_rate_img" src="${pageContext.request.contextPath}/resources/btn/chart_good.gif"> 
&nbsp;&nbsp;좋아요!
</div>

<div id="normal_rate">
<div id="myProgress">
  <div id="sosomyBar"></div><div class="textform">${icon.sosoicon/2}%</div>
  </div>
<img class="chart_rate_img" src="${pageContext.request.contextPath}/resources/btn/chart_normal.gif">
&nbsp;&nbsp;괜찮아요!
</div>

<div id="bad_rate">
<div id="myProgress">
  <div id="badmyBar"></div><div class="textform">${icon.badicon/2}%</div>
  </div>
  
<img class="chart_rate_img" src="${pageContext.request.contextPath}/resources/btn/chart_bad.gif">
&nbsp;&nbsp;별로에요!
</div>
</div>
</div>

<div id="reply_title"><h3>댓글남기기</h3></div>
<div id="reply_view">
<c:if test="${empty spotReply}">
<img src="${pageContext.request.contextPath}/resources/img/btn/no_result_icon.png" id="no_result">
<div id="no_result_text">아직 리뷰가 없습니다.</div>
</c:if>
<c:if test="${spotReply != null}">
<c:forEach items="${spotReply}" var="spotReplys">
<div id="reply_form">
<div id="review_opbtn">
<div id="delect"><a href="spotReplyDelete?num=${spotReplys.num}&ref=${spotReplys.ref}">삭제&nbsp;&nbsp;</a>|</div>
<div id="update"><a href="spotReplyUpdate?num=${spotReplys.num}&ref=${spotReplys.ref}">&nbsp;&nbsp;수정</a></div>

</div>
</div>
<div id="user_txt">
<div id="user_name">${spotReplys.id}&nbsp;&nbsp;&nbsp;&nbsp;<span id="reg_Date">${spotReplys.reg_date}</span></div>
</div>
<div id="user_rate">
<c:if test="${spotReplys.icon == 1 }"><span class="icon_rate">별로에요!</span></c:if>
<c:if test="${spotReplys.icon == 3 }"><span class="icon_rate">괜찮아요!</span></c:if>
<c:if test="${spotReplys.icon == 5 }"><span class="icon_rate">좋아요!</span></c:if>
</div>
<div id="user_content">${spotReplys.contents}</div>
</c:forEach>
</c:if>
<div id="reply_view_title"></div>
</div>

<div id="reply_write"> 
<div id="reply_write_spot">${spotDTO.spot_name} 리뷰 남기기</div>
<div id="reply_rate_box">
<div class="rate_box">
<div class="rate_btn" data-val="1" data="1" id="p1" >
<img alt="" src="${pageContext.request.contextPath}/resources/btn/bad.png"> 별로에요!</div>
<div class="rate_btn" data-val="3"  data="3" id="p2">
<img alt="" src="${pageContext.request.contextPath}/resources/btn/soso.png"> 괜찮아요!</div>
<div class="rate_btn" data-val="5"  data="5" id="p3">
<img alt="" src="${pageContext.request.contextPath}/resources/btn/good.png"> 좋아요!</div>
</div>

<form action="spotReply" method="post">
<input type="hidden" name="num" value="${spotDTO.num}">
ID : &nbsp;<input type="text" name="id" id="reply_id">
<textarea rows="6" cols="75" id="reply_area" name="contents" placeholder="장소에 대한 리뷰를 입력하세요."></textarea><div id="reply_write_btn"><input type="submit" value="댓글달기" id="reply_submit"></div>
<input type="hidden" id="icon" name="icon" >
</form>
</div>
</div>
<a href="./spotList">Spot List</a>
</div>
</div>
<a href="spotUpdate?num=${spotDTO.num}"><input type="button" value="UPDATE" id="update" name="update"></a>

<a href="spotDelete?num=${spotDTO.num}"><input type="button" value="DELETE" id="delete"></a>
</div>

</body>


</html>