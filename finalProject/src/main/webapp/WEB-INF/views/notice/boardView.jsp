<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${boardView.writer }</p>
	<p>${boardView.title }</p>
	<p>${boardView.contents }</p>
	
	<form id="frm">
		<input type="hidden" name="num">
	</form>
	
	<input type="button" class="b" value="MOD">
	<input type="button" class="b" value="DELETE">
	<input type="button" class="b" value="LIST">
</body>
</html>