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
		var id=$("#qnaid").val();
		var type=$("#qnalist3").val();
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/member/qna_listcheck",
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
	
	$("#p_qnaupdate_no").click(function () {
		var n = $(".p_qnalist_nono").val();
		alert(n);
		$("#p_qnaup_no").html("<input type='hidden' id='p_qnaup_nono' value="+n+">");
		
		$("#p_qnaupbdtn").click(function () {
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
									
					 },	
					 error : function(){
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
	
	
		<c:forEach items="${qna_list}" var="i" varStatus="a">	
			<div id="p_qna_form">
					<div class="p_qna_list" id="${a}">
							<div id="p_qna_body_list" class="p_body_div_1">
								<!-- <div id="p_qna_list_img"></div> -->
										<div id="p_updel" style="float: right;">
										<a data-toggle="modal" data-target="#p_qnaupmodal" style="cursor: pointer;" id="p_qnaupdate_no" ><span class="glyphicon glyphicon-pencil" aria-hidden="true">수정</span></a>&nbsp;
										<a data-toggle="modal" data-target="#p_qnadelete"  style="cursor: pointer;" id="p_qna"><span class="glyphicon glyphicon-trash" aria-hidden="true">삭제</span></a>
										</div>
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

<!--QnA-update write Modal -->
<div class="modal fade" id="p_qnaupmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" id="p_qna_md_2">
      <form action="${pageContext.request.contextPath}/member/qna_update" method="post">
    <div class="modal-content" id="p_qna_md_3">
		     	<div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">수정 하기</h4>
     			</div>
     			    <div id="p_qnaup_no" ></div>	 
     				<input type="hidden" id="p_qnaupid" name="id" value="${member.id}">
     				<input type="hidden" id="p_qnaupm_img" name="m_img" value="${member.m_img}">
					<input type="text" id="p_qnauptitle" name="title" placeholder="제목을 입력하세요.">
							<div class="modal-body">
					<textarea name="contents" id="p_qnaupcontents" rows="10" cols="100" style="width: 568px; height: 170px;"></textarea>
							</div>
		      </div>
		      <div class="modal-footer" id="p_qna_footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" id="p_qnaupbdtn" class="btn btn-primary">Save</button>
		      </div>
		</form>
    </div>
  </div>


<div class="modal fade bs-example-modal-sm" id="p_qnadelete" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
										  <div class="modal-dialog modal-sm">
										    <div class="modal-content" id="p_modal_mout">
										     <form action="${pageContext.request.contextPath}/member/qna_delete" method="post">
										      <br><br><span style="margin-left: 65px;">정말로 삭제 하시겠습니까?</span><br><br><br>
									  		  <button type="button" id="qna_delbt"class="button button3" style="	margin-left: 90px;margin-bottom: 20px;">예</button></a><span>              </span>
										      <button class="button button5" data-dismiss="modal" >아니오</button>
										     </form>	
										    </div>	
										  </div>
										</div>
