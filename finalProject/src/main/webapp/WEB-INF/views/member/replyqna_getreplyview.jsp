<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	
							<c:choose>
									<c:when test="${empty replyqna}">
										<div><h2>답변이 아직 등록되지 않았습니다.</h2></div>
									</c:when>
									<c:otherwise>
									<div class="p_body_div_1 p_qna_body_1" id="p_qna_body_list_contents">
											<div class="panel-group" id="p_replyqnaList">
												<div class="panel-collapse collapse in">
													<div class="p_collapse" id="${replyqna.com_no}">
														  	<div id="p_qna_body_list" class="p_body_div_1">
																<!-- <div id="p_qna_list_img"></div> -->
																<input type="hidden" class="p_qnalist_id" value="${replyqna.id}">
																
																<input type="hidden" class="p_qnalist_no" value="${replyqna.com_no}">
																<div class="p_qna_d_userimg"><span>${replyqna.m_img}</span></div>
																<div class="p_qna_d_title"><span>${replyqna.title}</span></div>
																<div class="p_qna_d_id"><span>작성자:&nbsp;&nbsp;${replyqna.id}</span></div>
																<div class="p_qna_d_contents"><span>${replyqna.contents}</span></div>
							      							</div>
													</div>
												</div>
											</div>	
										</div>
									</c:otherwise>
								</c:choose>										
											