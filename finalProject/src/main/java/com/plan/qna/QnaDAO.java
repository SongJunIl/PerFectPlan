package com.plan.qna;

import org.springframework.stereotype.Repository;

import com.plan.member.MemberDTO;

public interface QnaDAO {

	
	
	
	
	public void qna_write(QnaDTO qdto)throws Exception;
	
	public int qna_update(QnaDTO qdto) throws Exception;
	
	public void qna_delete(int no)throws Exception;
	
	
	public QnaDTO getQna_view(QnaDTO qdto)throws Exception; 
	
	
	
	/*관리자 전용*/
	public void replyQna_write(QnaDTO qdto)throws Exception;
	
	public int replyQna_update(QnaDTO qdto) throws Exception;
	
	public void replyQna_delete(int no)throws Exception; 
	
	
}
