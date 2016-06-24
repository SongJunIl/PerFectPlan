<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="reply_write"> 
<div id="reply_write_spot">리뷰 남기기</div>
<div id="reply_rate_box">
<div class="rate_box">
</div>
<form action="${pageContext.request.contextPath}/spot/spotReplyUpdate" method="post">
ID : &nbsp;<input type="text" name="id" id="reply_id">
<textarea rows="6" cols="75" id="reply_area" name="contents" placeholder="장소에 대한 리뷰를 입력하세요."></textarea><div id="reply_write_btn"><input type="submit" value="댓글달기" id="reply_submit"></div>
<input type="hidden" name="num" value="${param.num}">
	<input type="hidden" name="ref" value="${param.ref}">
</form>
</div>
</div>


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