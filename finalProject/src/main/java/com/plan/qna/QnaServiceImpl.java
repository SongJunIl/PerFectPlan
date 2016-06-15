package com.plan.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDAO qnadao;
	
	@Override
	public void qna_write(QnaDTO qdto) {
		try {
			qnadao.qna_write(qdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	
	@Override
	public int qna_update(QnaDTO qdto) {
		
		return 0;
	}

	@Override
	public void qna_delete(int no) {
		// TODO Auto-generated method stub

	}

	@Override
	public QnaDTO qna_getview(QnaDTO qdto) {
		try {
			qdto=qnadao.getQna_view(qdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return qdto;
	}

	@Override
	public void replyQna_write(QnaDTO qdto) {
		// TODO Auto-generated method stub

	}

	@Override
	public int replyQna_update(QnaDTO qdto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void replyQna_delete(int no) {
		// TODO Auto-generated method stub

	}

	@Override
	public QnaDTO replyQna_getview(QnaDTO qdto) {
		// TODO Auto-generated method stub
		return null;
	}

}
