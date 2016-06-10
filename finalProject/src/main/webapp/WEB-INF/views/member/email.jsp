<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<<script type="text/javascript">
	$(function (){
		
		$("#p_mail_send_btn").click(function () {
			alert("${mem.email}");
	});

});


</script>	
<c:choose>
	<c:when test="${not empty mem }">
	
	<span>${message}</span><br>
	<input type="hidden" name="email" value="${mem.email}">
	<button class="btn btn-danger" id="p_mail_send_btn">메일 전송</button>	
	</c:when>
	<c:otherwise>
	<span>${message}</span>
	</c:otherwise>


</c:choose>
	
	








