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
</script>
<c:choose>
	<c:when test="${empty qnalist}">
		<div><h2>질문 하신 글이 없습니다.</h2></div>
	</c:when>
	<c:otherwise>
		<div id="p_qna_form">
				<div class="p_qna_list">
						<div id="p_scrap_body_list_img" class="p_body_div_1 	">
							<!-- <div id="p_qna_list_img"></div> -->
									<div class="p_qna_d_userimg"><span>${qnalist.m_img}</span></div><div class="p_qna_d_title">&nbsp;&nbsp;<span>${qnalist.title}</span></div>
									<div class="p_qna_d_contents"><span>${qnalist.contents}</span></div>
									<div class="p_qna_d_id"><span>작성자:&nbsp;&nbsp;${qnalist.id}</span></div>
									<div class="p_qna_d_reg_date"><span>작성일:&nbsp;&nbsp;${qnalist.reg_date}</span>
										<c:if test="${ not empty admin }">
									<!--관리자만 볼 수 있는 버튼  -->
									<div><button class="btn btn-warning" data-toggle="modal" data-target="#p_qnaReplymodal" id="p_qna_view_btn_2">답변 하기</button></div>
									</c:if>
									</div>
									
									
			      		</div>
			      		
			      		<!-- 관리자가 답글은 달았냐 안달앗냐  -->
						<div class="p_body_div_1 p_qna_body_1" id="p_qna_body_list_contents">
									<div id="p_qna_view_btn">
									<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" id="p_qna_view_btn_1">답변 보기</button>
									</div>
									<div class="collapse" id="collapseExample">
										  	<div id="p_scrap_body_list_img" class="p_body_div_1">
												<!-- <div id="p_qna_list_img"></div> -->
												<div class="p_qna_d_userimg"><span>userimg</span></div>
												<div class="p_qna_d_title"><span>title</span></div>
												<div class="p_qna_d_contents"><span>contents</span></div>
			      							</div>
									</div>
						</div>	
					</div>
		</div>
	</c:otherwise>
</c:choose>

