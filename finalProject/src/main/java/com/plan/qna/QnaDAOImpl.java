package com.plan.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;




@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	private SqlSession sqlsession;
	
	
	private String namespace = "qnaboardMapper.";
	
	@Override
	public int getTotalList() {
		return sqlsession.selectOne(namespace+"getTotalList");
	}
	
	@Override
	public void qna_write(QnaDTO qdto) throws Exception {
			sqlsession.insert(namespace+"qna_write",qdto);
	}

	@Override
	public int qna_update(QnaDTO qdto) throws Exception {
		return sqlsession.update(namespace+"qna_update",qdto);
	}

	@Override
	public void qna_delete(int no) throws Exception {
		sqlsession.delete(namespace+"qna_delete",no);
	}

	@Override
	public List<QnaDTO> getQna_view(PageMaker pm) throws Exception {
		return sqlsession.selectList(namespace+"qna_view",pm);
	}

	@Override
	public void replyQna_write(ReplyQnaDTO rqdto) throws Exception {
		sqlsession.insert(namespace+"replyqna_write", rqdto);
	}

	@Override
	public int replyQna_update(ReplyQnaDTO rqdto) throws Exception {
		return sqlsession.update(namespace+"replyqna_update",rqdto);
	}

	@Override
	public void replyQna_delete(int no) throws Exception {
		sqlsession.delete(namespace+"replyqna_delete",no);
	}
	
	
	@Override
	public ReplyQnaDTO getReplyQna_view(ReplyQnaDTO rqdto) throws Exception {
		return rqdto;
	}

	@Override
	public List<QnaDTO> getReplyQna_list(QnaDTO qdto) throws Exception {
		 	
		return sqlsession.selectList(namespace+"replyqna_replyview", qdto);
	}
	
	@Override
	public int replyQna_replyupdate(int com_no) throws Exception {
			
		return sqlsession.update(namespace+"replyqna_replyupdate", com_no);
	}
	
	
	
	@Override
	public ReplyQnaDTO replyqna_view(ReplyQnaDTO rqdto) throws Exception {
		return sqlsession.selectOne(namespace+"replyqna_view", rqdto);
	}
	
	
	
}
