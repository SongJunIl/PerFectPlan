<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="spotUpdate" method="post" enctype="multipart/form-data">
	big_name  : <input type="text" name="big_name" ><br>
	spot_name :	<input type="text" name="spot_name"><br>
	city_name : <input type="text" name="city_name"><br>
	contents  : <input type="text" name="contents"><br>
	spot_xlocation : <input type="text" name="spot_xlocation"><br>
	spot_ylocation : <input type="text" name="spot_ylocation"><br>
	thema 		   : <input type="text" name="thema"><br>
	spot_address :<input type="text" name="spot_address"><br>
	img : <input type="file" name="file"><br>
	<input type="hidden" name="num" value="${param.num}">
		<input type="submit">
	</form>
</body>
</html>