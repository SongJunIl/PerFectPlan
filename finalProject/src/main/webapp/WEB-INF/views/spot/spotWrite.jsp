<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

	<form action="spotWrite" method="post" enctype="multipart/form-data">
	big_name  : <input type="text" name="big_name" ><br>
	spot_name :	<input type="text" name="spot_name"><br>
	city_name : <input type="text" name="city_name"><br>
	contents  : <input type="text" name="contents"><br>
	spot_xlocation : <input type="text" name="spot_xlocation"><br>
	spot_ylocation : <input type="text" name="spot_ylocation"><br>
	thema 		   : <input type="text" name="thema"><br>
	spot_address : <input type="text" name="spot_address"><br>
	img : <input type="file" name="file"><br>
	category : <input type="text" name="category"><br>
	address : <input type="text" name="address"><br>
	phone : <input type="text" name="phone"><br>
	website : <input type="text" name="website">
		<input type="submit">
	</form>
	
</body>
</html>




<br>