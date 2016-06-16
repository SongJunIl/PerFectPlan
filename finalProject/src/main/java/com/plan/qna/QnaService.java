package com.plan.qna;

import org.springframework.ui.Model;

public interface QnaService {

	public void qna_write(QnaDTO qdto);
	public int qna_update(QnaDTO qdto);
	public void qna_delete(int no);
	public void qna_getview(QnaDTO qdto,Model model);
	
	
	/*관리자*/
	public void replyQna_write(ReplyQnaDTO rqdto);
	public int replyQna_update(ReplyQnaDTO rqdto);
	public void replyQna_delete(int no);
	public ReplyQnaDTO replyQna_getview(ReplyQnaDTO rqdto);
	
	
}
