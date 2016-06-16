package com.plan.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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
	public void qna_getview(QnaDTO qdto,Model model) {
		try {
			  if(qnadao.getQna_view(qdto)==null){
				  model.addAttribute("qnamessage", "질문 하신 글이 없습니다.");
			  }else{
				  model.addAttribute("qna_list", qnadao.getQna_view(qdto));
			  }
			  
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void replyQna_write(ReplyQnaDTO rqdto) {
		try {
			qnadao.replyQna_write(rqdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public int replyQna_update(ReplyQnaDTO rqdto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void replyQna_delete(int no) {
		// TODO Auto-generated method stub

	}

	@Override
	public ReplyQnaDTO replyQna_getview(ReplyQnaDTO rqdto) {
		// TODO Auto-generated method stub
		return null;
	}

}
