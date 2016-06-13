package com.plan.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlsession;
	
	private String namespace = "MemberMapper.";
	
	@Override
	public void join(MemberDTO mdto) throws Exception {
		sqlsession.insert(namespace+"join", mdto);
		
	}
	
	@Override
	public MemberDTO login(MemberDTO mdto) throws Exception {
		
		return sqlsession.selectOne(namespace+"login", mdto);
	}
	
	@Override
	public int update(MemberDTO mdto) throws Exception {
		
		return sqlsession.update(namespace+"update", mdto);
		 
	}
	
	@Override
	public void delete(int no) throws Exception {
		sqlsession.delete(namespace+"delete",no);
	}
	
	@Override
	public MemberDTO getEmail(MemberDTO mdto) throws Exception {
		return 	sqlsession.selectOne(namespace+"email", mdto);
	}
	
	@Override
	public MemberDTO getid(MemberDTO mdto) throws Exception {
		return sqlsession.selectOne(namespace+"id", mdto);
	}
	
	@Override
	public MemberDTO getEmailck(MemberDTO mdto) throws Exception {
		return sqlsession.selectOne(namespace+"emailck",mdto);
	}
	
}
