<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="cityWrite" method="post" enctype="multipart/form-data">
		BIGNAME <input type="text" name="big_name">
		CITYNAME <input type="text" name="city_name">
		ENGLISH NAME<input type="text" name="e_name">
		IMG1 <input type="file" name="file1">
		IMG2 <input type="file" name="file2">
		IMG3 <input type="file" name="file3">
		<input type="submit" >
	</form>
</body>
</html>