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
	
	$(".p_qnaupdate_no").click(function () {
		var a=$(this).attr("data-index");
		var n = $(".p_qnalist_nono"+a).val();
/* 		$("#p_qnaup_no").html("<input type='hidden' id='p_qnaup_nono' value="+n+">"); */
		
		$(".p_qnaupbdtn").click(function () {
			var t = $("#p_qnauptitle").val();
			var c = $("#p_qnaupcontents").val();
			var m = $("#p_qnaupm_img").val();
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/member/qna_update",
				data:{
						com_no:n,
						title:t,
						contents:c,
						m_img:m
					 },
					 success: function (result){
								    alert("수정성공")
								    window.location.reload();
					 },	
					 error : function(){
						 alert("실패");
					 }
			}); 
		});
	});
	
	
	$(".p_qnadel").click(function () {
		var a=$(this).attr("data-index");
		var n = $(".p_qnalist_nono"+a).val();
			$(".qna_delbt").click(function () {
				$.ajax({
					type:"POST",
					url:"${pageContext.request.contextPath}/member/qna_delete",
					data:{
						com_no:n
					},
					success:function(){
						alert("삭제완료");
						window.location.reload();
					},
					error:function(){
						alert("실패");
					}
				});
		})
	});
	
	
	
});





</script>

<c:choose>
	<c:when test="${empty qna_list}">
		<div id="p_qnanotice_con"><h2>질문 하신 글이 없습니다.</h2></div>
	</c:when>
	<c:otherwise>
	
	<div id="list_chek_form">
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
							
						
		</div>
		
	</c:otherwise>
</c:choose>

<!--QnA-update write Modal -->
<div class="modal fade" id="p_qnaupmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" id="p_qna_md_2">
      <form action="${pageContext.request.contextPath}/member/qna_write" method="post">
    <div class="modal-content" id="p_qna_md_3">
		     	<div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">수정 하기</h4>
     			</div>
     			    <div id="p_qnaup_no" ></div>	 
     				<input type="hidden" id="p_qnaupid" name="id" value="${member.id}">
     				<input type="hidden" id="p_qnaupm_img" name="m_img" value="${member.m_img}">
						<div class="input-group" id="p_qnaup_input1">
							<span class="input-group-addon" id="p_qna_addon1">title</span> 
							<input	type="text" class="form-control p_join_form" id="p_qnauptitle" name="title" placeholder="제목을 입력하세요."	aria-describedby="basic-addon1">
						</div>
							<div class="modal-body" style="margin-top: -15px;">
							<br>
								<div class="input-group">
									 <span class="input-group-addon" id="p_qna_addon2">Contents</span>
									 <textarea class="form-control p_join_form"	id="p_qnaupcontents" name="contents" placeholder="내용을 입력하세요." aria-describedby="basic-addon1"></textarea>
								</div>
							</div>
		      </div>
		      <div class="modal-footer" id="p_qna_footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary p_qnaupbdtn">Save</button>
		      </div>
		</form>
    </div>
  </div>

						<!-- qna_delete modal -->
									<div class="modal fade bs-example-modal-sm" id="p_qnadelete" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
										  <div class="modal-dialog modal-sm">
										    <div class="modal-content" id="p_modal_mout">
										     <form action="${pageContext.request.contextPath}/member/qna_delete" method="post">
										      <div id="p_qnadel_no" ></div>	 
										      <br><br><span style="margin-left: 65px;">정말로 삭제 하시겠습니까?</span><br><br><br>
									  		  <button type="button" class="button button3 qna_delbt" style="margin-left: 90px;margin-bottom: 20px;">예</button></a><span>              </span>
										      <button class="button button5" data-dismiss="modal" >아니오</button>
										     </form>	
										    </div>	
										  </div>
										</div>

										