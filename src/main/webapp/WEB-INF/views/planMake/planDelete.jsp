<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style type="text/css">
    .reply_list{
		width: 685px;
		height: 125px;
		border-top:  0.1ex solid #c8c8ca;
		margin: 0 auto;
		padding: 20px 0;
	}
	.reply_list_writer_img{
		float: left;
	}
	.plan_daily_spot_box{
		float: right;
	}
	.reply_list_writer{
		float: left;
		margin-right: 20px;
		
	}
	.reply_list_date{
		float: left;
	}
	.reply_del{
		float: right;
		margin-left: 20px;
	}
	.reply_update{
		float: right;
	}
	.reply_list_up_box{
		float: right;
		width: 620px;
		margin-right: 10px;
	}
	.reply_list_down_box{
		float: right;
		width: 620px;
		margin-right: 10px;
		margin-top: 10px;
	}
	
    </style>
<c:forEach items="${reply_list }" var="re_list" varStatus="i">
					<div class="reply_list">
						<div class="reply_list_inner">
							<div class="reply_list_writer_img">
								<img src="${pageContext.request.contextPath}/resources/img/plan/btn_like.png">
								<input type="hidden" value="mamamoo" name="id">
								<input type="hidden" value="${re_list.no }" id="reply_no${i.index }">
							</div>
							<div class="reply_list_cotent_box">
								<div class="reply_list_up_box">
									<div class="reply_list_writer">${re_list.id }</div>
									<div class="reply_list_date">${re_list.reg_date }</div>
									<div class="reply_del" data-index="${i.index }">삭제</div>
									<div class="reply_update">수정</div>
									<div class="clear"></div>
								</div>
								<div class="reply_list_down_box">
									${re_list.contents}
								</div>
							</div>
							<div class="clear"></div>
						</div>
						
					</div>
				
				</c:forEach>