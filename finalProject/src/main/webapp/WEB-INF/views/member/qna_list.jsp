<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/css/mypage.css" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
$('.collapse').bind("pageshow",function(event){
	 
    $('#collapseExample').bind('expand', function () {
    //펼쳐졌을때 동작 
    }).bind('collapse', function () {
    //닫혀 졌을때 동작
    });

});

$(function(){
	var page=3;
	$("#qnalist3").click(function () {
		page=page+3;
		var id=$("#qnaid").val();
		var type=$("#qnalist3").val();
		alert(type);
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/member/qna_list",
			data:{
				id:id,
				type:type,
				page:page
			},
			 success: function (result){
			 	$("#p_qna_form").html(result);
			 },
			 error:function(){
				 alert("eeeeeeeeeeeeeee");
			 }
		});
	});
	
	
	
	
	$(".p_qna_view_btn_1").click(function () {
		var n = $(this).val();
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/member/replyqna_getreplyview",
			data:{
					qnalist_no:n,
				 },
				 success: function (result){
							    $("#"+n).html("");
								$("#"+n).html(result);
				 },	
				 error : function(){
					 alert("아직안만들엇지렁");
				 }
		});
	});	
	
	
	
	
	
	
});





</script>

<c:choose>
	<c:when test="${empty qna_list}">
		<div id="p_qnanotice_con"><h2>질문 하신 글이 없습니다.</h2></div>
	</c:when>
	<c:otherwise>
	
	
		<c:forEach items="${qna_list}" var="i" varStatus="a">	
			<div id="p_qna_form">
					<div class="p_qna_list" id="${a}">
							<div id="p_qna_body_list" class="p_body_div_1">
								<!-- <div id="p_qna_list_img"></div> -->
										<div class="p_qna_d_userimg"><span><img src="${pageContext.request.contextPath}/resources/memberimg/${i.m_img}"
										style="width: 50px; height: 50px; border-radius: 50%;"></span></div>
										<input type="hidden" class="p_qnalist_nono" value="${i.com_no}"> 
										<div class="p_qna_d_title">&nbsp;&nbsp;<span>${i.title}</span>
										<div class="p_qna_d_id"><span>작성자:&nbsp;&nbsp;${i.id}</span></div>
										<div class="p_qna_d_reg_date"><span>${i.reg_date}</span></div></div>
										<div class="p_qna_d_contents"><span>${i.contents}</span></div>
										<c:if test="${ not empty admin }">
										<!--관리자만 볼 수 있는 버튼  -->
										<div class="p_qnaadminbt"><button class="btn btn-danger p_qna_view_btn_2" data-toggle="modal" data-target="#p_qnaReplymodal" data-id="${i.id}" value="${i.com_no}">답변 하기</button></div>
										</c:if>
										
										<div id="p_qna_view_btn">
											<a data-toggle="collapse" data-parent="p_replyqnaList" data-target="#${i.com_no}" aria-expanded="false" aria-controls="collapseExample" href="#p_collapse"><button class="btn btn-primary p_qna_view_btn_1" value="${i.com_no}" type="button">답변 보기</button></a>
										</div>
				      		</div>
				      					
										
								<div class="collapse" id="${i.com_no}">
									<div id="${i.com_no}" ></div>
								</div>
								 	 
						</div>
			</div>
		</c:forEach>
			<button type="button" class="btn btn-primary" id="qnalist3" value="plus" >더 보기 </button>
				<input type="hidden" id="qnaid" name="qnaid" value="${member.id}">
							
						
		
		
	</c:otherwise>
</c:choose>

