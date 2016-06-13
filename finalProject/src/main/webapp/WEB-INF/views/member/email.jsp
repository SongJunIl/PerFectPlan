<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript">
	$(function (){
		
		$("#p_mail_send_btn").click(function () {
			alert("${mem.email}");
	});

});


</script>


				<c:choose>
					<c:when test="${not empty cant }">
					<!-- 중복된 메일이면 1 -->
					<input type="hidden" id="p_echecknotok" value="1">
					<span>${echeck}</span>
					</c:when>
					<c:otherwise>
					<!--사용 가능한 메일이면 2  -->
					<input type="hidden" id="p_echeckok" value="2">
					<span>${echeck}</span>
					</c:otherwise>
				</c:choose>
		
	


	
	
	


	

	
	








