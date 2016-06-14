<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript">
	$(function (){
		
		$("#p_mail_send_btn").click(function () {
			
			var email = $("#p_getemail").val();
			var id = $("#p_getid").val();
			var pw = $("#p_getpw").val();
			/* alert(email);
			alert(id);
			alert(pw); */
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/member/emailsend",
			data:{
				email:email,
				id:id,
				pw:pw
			},
			 success:function(result){
				 alert(email+" 로 정보가 전송되었습니다.");
				 window.location.reload();
			 },
			 error:function(e){
				 alert("error : ");
			 }
		});	
			
			
			
			
			
	});

});

</script>

		<c:choose>
				<c:when test="${not empty mem }">
				<span>${message}</span><br>
				<input type="hidden" id="p_getemail" name="email" value="${mem.email}">
				<input type="hidden" id="p_getid" name="id" value="${mem.id}">
				<input type="hidden" id="p_getpw" name="pw" value="${mem.pw}">
				<button class="btn btn-danger" id="p_mail_send_btn">메일 전송</button>	
				</c:when>
				<c:otherwise>
				<span>${message}</span>
				</c:otherwise>
			</c:choose>

	
	
	


	

	
	








