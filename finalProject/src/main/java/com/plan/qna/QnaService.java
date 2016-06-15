package com.plan.qna;


public interface QnaService {

	public void qna_write(QnaDTO qdto);
	public int qna_update(QnaDTO qdto);
	public void qna_delete(int no);
	public QnaDTO qna_getview(QnaDTO qdto);
	
	
	/*관리자*/
	public void replyQna_write(QnaDTO qdto);
	public int replyQna_update(QnaDTO qdto);
	public void replyQna_delete(int no);
	public QnaDTO replyQna_getview(QnaDTO qdto);
	
	
}
