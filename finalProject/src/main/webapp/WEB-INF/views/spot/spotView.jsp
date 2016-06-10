<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/views/temp/script.jspf" %>
<%@ include file="/WEB-INF/views/temp/header.jspf" %>
<style type="text/css">
.rate_box{width: 100px; height: 20px;}
.rate_box img{width: 18px; height: 18px; text-align: center; }
.rate_btn{border: 2px solid black;  cursor: pointer; }
#myProgress {
  position: relative;
  width: 100%;
  height: 15px;
  background-color: #ddd;
}

#badmyBar {
  position: absolute;
  width: 0%;
  height: 100%;
  background-color: #4CAF50;
}
#sosomyBar {
  position: absolute;
  width: 0%;
  height: 100%;
  background-color: #4CAF50;
}
#goodmyBar {
  position: absolute;
  width: 0%;
  height: 100%;
  background-color: #4CAF50;
}
.textform{margin-left: 105px;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script type="text/javascript">
	$( document ).ready(function() {
		$("#badmyBar").css("width","${icon.badicon}");
		$("#sosomyBar").css("width","${icon.sosoicon}");
		$("#goodmyBar").css("width","${icon.goodicon}");
		$( ".rate_box div" ).click(function() {
		if($(this).attr("data-val"
				) == 1){
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<%-- 게시물 view --%>
<h2>boardView</h2>
<p>Big_Name : ${spotDTO.big_name}</p>
<p>Spot_Name : ${spotDTO.spot_name}</p>
<p>City_Name : ${spotDTO.city_name}</p>
<p>Contents : ${spotDTO.contents}</p>
<p>spot_xlocation : ${spotDTO.spot_xlocation}</p>
<p>spot_ylocation : ${spotDTO.spot_ylocation}</p>
<p>spot_address : ${spotDTO.spot_address }</p>

<a href="spotUpdate?num=${spotDTO.num}"><input type="button" value="UPDATE" id="update" name="update"></a>

<a href="spotDelete?num=${spotDTO.num}"><input type="button" value="DELETE" id="delete"></a>
<a href="./spotList">Spot List</a><br><br>
<div>

<%--리플 view --%>
<c:forEach items="${spotReply}" var="spotReplys">
<p>id : ${spotReplys.id}</p>
<p>contents : ${spotReplys.contents}</p>
<p>reg_date : ${spotReplys.reg_date}</p>
<p>reply_num :  ${spotReplys.num}</p>
<p>reply_ref : ${spotReplys.ref}</p>
<p>img:<img src="${pageContext.request.contextPath}/resources/fileimg/${spotReplys.spot_img}"></p>
<a href="spotReplyDelete?num=${spotReplys.num}&ref=${spotReplys.ref}"><input type="button" value="DELETE" id="delete"></a>
<a href="spotReplyUpdate?num=${spotReplys.num}&ref=${spotReplys.ref}"><input type="button" value="UPDATE" id="update" name="update"></a><br><br><br>
</c:forEach>
</div>
<%-- 리플 작성 --%>
<div class="write_center">
<div class="rate_box">
<div class="rate_btn" data-val="1" data="1" id="p1" >
<img alt="" src="${pageContext.request.contextPath}/resources/btn/bad.png"> 별로에요!</div>
<div class="rate_btn" data-val="3"  data="3" id="p2">
<img alt="" src="${pageContext.request.contextPath}/resources/btn/soso.png"> 괜찮아요!</div>
<div class="rate_btn" data-val="5"  data="5" id="p3">
<img alt="" src="${pageContext.request.contextPath}/resources/btn/good.png"> 좋아요!</div>

<form action="spotReply" method="post">
<input type="hidden" name="num" value="${spotDTO.num}"><br>
ID : &nbsp;&nbsp;&nbsp;<input type="text" name="id"><br>
내용 : <textarea rows="10" cols="100" name="contents"></textarea><input type="submit" value="댓글달기" ><br>
<input type="hidden" id="icon" name="icon">
</form>

bad
<div id="myProgress">
  <div id="badmyBar"></div><div class="textform">${icon.badicon}</div>
</div>
soso
<div id="myProgress">
  <div id="sosomyBar"><div class="textform">${icon.sosoicon}</div></div>
</div>
good
<div id="myProgress">
  <div id="goodmyBar"><div class="textform">${icon.goodicon}</div></div>
</div>

</div>
</div>

</body>
</html>