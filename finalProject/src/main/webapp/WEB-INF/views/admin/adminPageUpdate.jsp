<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="adminPageUpdate" method="post" enctype="multipart/form-data">
	big_name  : <input type="text" name="big_name" value="${param.big_name }"><br>
	spot_name :	<input type="text" name="spot_name" value="${param.spot_name}"><br>
	city_name : <input type="text" name="city_name" value="${param.city_name}"><br>
	contents  : <input type="text" name="contents" value="${param.contents}"><br>
	spot_xlocation : <input type="text" name="spot_xlocation" value="${param.spot_xlocation}"><br>
	spot_ylocation : <input type="text" name="spot_ylocation" value="${param.spot_ylocation}"><br>
	thema 		   : <input type="text" name="thema" value="${param.thema}"><br>
	city_no : <input type="text" name="city_no" value="${param.city_no}"><br>
	spot_address :<input type="text" name="spot_address" value="${param.spot_address}"><br>
	img : <input type="file" name="file" value="${param.spot_img}"><br>
	category : <input type="text" name="category" value="${param.category}"><br>
	address : <input type="text" name="address" value="${param.address}"><br>
	phone : <input type="text" name="phone" value="${param.phone}"><br>
	website : <input type="text" name="website" value="${param.website}">
	<input type="hidden" name="num" value="${param.num}">
		<input type="submit">
	</form>
</body>
</html>