package com.plan.qna;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.plan.member.MemberDTO;

public interface QnaDAO {

	
	
	public int getTotalList();
	
	public void qna_write(QnaDTO qdto)throws Exception;
	
	public int qna_update(QnaDTO qdto) throws Exception;
	
	public void qna_delete(int no)throws Exception;
	
	
	public List<QnaDTO> getQna_view(PageMaker pm)throws Exception; 
	
	public ReplyQnaDTO replyqna_view(ReplyQnaDTO rqdto)throws Exception;
	
	
	
	/*관리자 전용*/
	public void replyQna_write(ReplyQnaDTO rqdto)throws Exception;
	
	public int replyQna_update(ReplyQnaDTO rqdto) throws Exception;
	
	public void replyQna_delete(int no)throws Exception; 
	
	public ReplyQnaDTO getReplyQna_view(ReplyQnaDTO rqdto)throws Exception; 

	public List<QnaDTO> getReplyQna_list(QnaDTO qdto)throws Exception; 
	
	public int replyQna_replyupdate(int com_no)throws Exception;
}
