<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
	#d1{
		width: 500px;
		height: 500px;
	}
	
	#big_name{
		margin: 0 auto;
		width: 1210px;	
		height: 50px;
	}
	.arrowImg{
		width: 20px;
		height: 20px;
	}
	#img1{
		width: 50px; 
		height: 50px;
	}
</style>
</head>
<body>
<h2>관리자 city List</h2>
<h1>??</h1>
<hr><div id="big_name"><h3>광역시</h3><img src="${pageContext.request.contextPath}/resources/img/city/blueDown.png" id="img1"><hr></div>
<hr><div id="big_name"><h3>강원도</h3><img src="${pageContext.request.contextPath}/resources/img/city/downArrow.png" ><hr></div>
<hr><div id="big_name"><h3>경기도</h3><img src="${pageCotext.request.contextPath}/resources/img/city/downArrow.png" class="arrowImg"><hr></div>
<hr><div id="big_name"><h3>경상남도</h3><img src="${pageCotext.request.contextPath}/resources/img/city/downArrow.png" class="arrowImg"><hr></div>
<hr><div id="big_name"><h3>경상북도</h3><img src="${pageCotext.request.contextPath}/resources/img/city/downArrow.png" class="arrowImg"><hr></div>
<hr><div id="big_name"><h3>전라남도</h3><img src="${pageCotext.request.contextPath}/resources/img/city/downArrow.png" class="arrowImg"><hr></div>
<hr><div id="big_name"><h3>전라북도</h3><img src="${pageCotext.request.contextPath}/resources/img/city/downArrow.png" class="arrowImg"><hr></div>
<hr><div id="big_name"><h3>충청남도</h3><img src="${pageCotext.request.contextPath}/resources/img/city/downArrow.png" class="arrowImg"><hr></div>
<hr><div id="big_name"><h3>충청북도</h3><hr></div>
사진 나와라 : <img src="${pageContext.request.contextPath}/resources/img/city/magnifier.png">
<img src="${pageContext.request.contextPath}/resources/img/city/blueDown.png" id="img1">
<img src="${pageContext.request.contextPath}/resources/img/city/citymain.png" >
<img src="${pageContext.request.contextPath}/resources/img/city/downArrow.png" >
<div id="d1">
	<table border="1">
	<tr><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td></tr>
		<c:forEach items="${cityList}" var="list">
		<tr>
			<td>1</td>	
			<td>big_name  </td><td> ${list.big_name}</td>
			<td>city_name </td><td>${list.city_name} </td>
			<td>e_name</td><td>${list.e_name}</td>
			<td>city_img</td><td><img src="${pageContext.request.contextPath}/resources/img/city/cityIMG/${list.city_img}"></td>
		</tr>
		</c:forEach>
	</table>
</div>
<table>
	<tr><td>1</td><td>1</td></tr>
	<tr><td>1</td><td>1</td></tr>
	<tr><td>1</td><td>1</td></tr>
	<tr><td>1</td><td>1</td></tr>
</table>
</body>
</html>