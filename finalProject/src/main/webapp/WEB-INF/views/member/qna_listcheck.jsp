<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>					
					
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