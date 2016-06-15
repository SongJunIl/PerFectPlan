package com.plan.qna;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	private SqlSession sqlsession;
	
	
	private String namespace = "qnaboardMapper.";
	
	
	
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
	public QnaDTO getQna_view(QnaDTO qdto) throws Exception {
		return sqlsession.selectOne(namespace+"qna_view", qdto);
	}

	@Override
	public void replyQna_write(QnaDTO qdto) throws Exception {
		sqlsession.insert(namespace+"replyqna_write", qdto);
	}

	@Override
	public int replyQna_update(QnaDTO qdto) throws Exception {
		return sqlsession.update(namespace+"replyqna_update",qdto);
	}

	@Override
	public void replyQna_delete(int no) throws Exception {
		sqlsession.delete(namespace+"replyqna_delete",no);
	}

}
