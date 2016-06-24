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
		int result=0;
		try {
			result=qnadao.qna_update(qdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public void qna_delete(int no) {

		try {
			qnadao.qna_delete(no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	@Override
	public void qna_getview(int curPage,Model model, String id,String type,int page) {
	
		int totalList = qnadao.getTotalList();
		PageMaker pm = new PageMaker(curPage, totalList);
		pm.setType(type);
		pm.setId(id);
		try {
			  if(qnadao.getQna_view(pm)==null){
				  model.addAttribute("qnamessage", "질문 하신 글이 없습니다.");
			  }else if(qnadao.getQna_view(pm)!=null && pm.getType()==null) {
				  model.addAttribute("list",qnadao.getQna_view(pm));
				  model.addAttribute("page", pm);
				  model.addAttribute("qna_list", qnadao.getQna_view(pm));
			  }else if(qnadao.getQna_view(pm)!=null && pm.getType().equals("plus")){
				  pm.setPerPage(page);
				  pm.pageMake(curPage, totalList);
				  System.out.println(pm.getPerPage());
				  System.out.println(qnadao.getQna_view(pm).size());
				  System.out.println(pm.getLastRow());
				  model.addAttribute("qna_pm", pm);
				  model.addAttribute("qna_list", qnadao.getQna_view(pm));
 
			  }
			  
			  
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void replyQna_getview(QnaDTO qdto,Model model) {
		try {
			if(qnadao.getReplyQna_list(qdto)==null){
				model.addAttribute("qnamessage", "유저가 질문한 글이 없습니다.");
			}else{
				model.addAttribute("qna_list", qnadao.getReplyQna_list(qdto));
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	@Override
	public void replyQna_write(ReplyQnaDTO rqdto,int com_no) {
		try {
			qnadao.replyQna_write(rqdto);
			qnadao.replyQna_replyupdate(com_no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	@Override
	public int replyQna_update(int com_no) {
	try {
		com_no=qnadao.replyQna_replyupdate(com_no);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return com_no;
	}

	@Override
	public void replyQna_delete(int no) {
		// TODO Auto-generated method stub

	}

	@Override
	public void replyqna_getreplyview(ReplyQnaDTO rqdto,Model model) {
		try {
			rqdto=qnadao.replyqna_view(rqdto);
			if(rqdto==null){
				
			}else{
				model.addAttribute("replyqna", rqdto);	
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
	}
	
	
	
	
	

}
