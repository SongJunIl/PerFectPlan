package com.plan.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.plan.qna.PageMaker;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	private String namespace="NoticeboardMapper.";
	
	@Override
	public int getTotalList() {
		return sqlsession.selectOne(namespace+"getTotalList");
	}
	
	@Override
	public List<NoticeDTO> notcie_list(PageMaker pm) throws Exception {
		return sqlsession.selectList(namespace+"notice_list", pm);
	}
	
	@Override
	public void notice_delete(int notice_no) throws Exception {
		sqlsession.delete(namespace+"notice_delete", notice_no);
	}
	
	@Override
	public int notice_update(NoticeDTO ndto) throws Exception {
		return sqlsession.update(namespace+"notice_update", ndto);
	}
	
	@Override
	public NoticeDTO notice_view(int notice_no) throws Exception {
		return sqlsession.selectOne(namespace+"notice_view", notice_no);
	}
	
	@Override
	public void notice_write(NoticeDTO ndto) throws Exception {
		sqlsession.insert(namespace+"notice_write", ndto);
	}
	
	
}
