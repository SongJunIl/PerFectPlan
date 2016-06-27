<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>					

<script>
$(function(){
	
	$("#qnalist3").click(function () {
		var page = $("#pages").val();
		page=page+3;
		var type=$(this).val();
		var id=$("#qnaid").val();
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/member/qna_listcheck",
			data:{
				id:id,
				type:type,
				page:page
			},
			 success: function (result){
			 	$("#list_chek_form").html(result);
			 },
			 error:function(){
				 alert("eeeeeeeeeeeeeee");
			 }
		});
	});
});

</script>

	<input type="text" id="pages" value="${qna_pm.perPage}">
	<c:forEach items="${qna_list}" var="i" varStatus="a">	
			<div id="p_qna_form">
					<div class="p_qna_list" id="${a}">
							<div id="p_qna_body_list" class="p_body_div_1">
								<!-- <div id="p_qna_list_img"></div> -->
										<div id="p_updel" style="float: right;">
										<a data-toggle="modal" data-target="#p_qnaupmodal" style="cursor: pointer;" class="p_qnaupdate_no"data-index="${a.index}" ><span class="glyphicon glyphicon-pencil" aria-hidden="true">수정</span></a>&nbsp;
										<a data-toggle="modal" data-target="#p_qnadelete"  style="cursor: pointer;" class="p_qnadel" data-index="${a.index}"><span class="glyphicon glyphicon-trash" aria-hidden="true">삭제</span></a>
										</div>
										<c:if test="${ i.m_img == null }"><img src="${pageContext.request.contextPath}/resources/img/login/user.png"
											style="width: 50px; height: 50px; border-radius: 50%; cursor: pointer;"></c:if>
										<c:if test="${ i.m_img != null }">
										<div class="p_qna_d_userimg"><span><img src="${pageContext.request.contextPath}/resources/memberimg/${i.m_img}"
										style="width: 50px; height: 50px; border-radius: 50%;"></span></div></c:if>
										<input type="hidden" class="p_qnalist_nono${a.index }" value="${i.com_no}"> 
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