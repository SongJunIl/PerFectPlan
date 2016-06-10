<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="spotReplyUpdate" method="post">
<p>id : <input type="text" name="id"></p>
<p>contents : <textarea rows="" cols="" name="contents"></textarea></p>
<p>reply_num :  ${param.num}</p>
<p>reply_ref : ${param.ref}</p>
	<input type="hidden" name="num" value="${param.num}">
	<input type="hidden" name="ref" value="${param.ref}">
	<input type="submit" value="전송">
</form>
</body>
</html>