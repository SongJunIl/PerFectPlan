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
		sqlsession.insert(namespace, mdto);
		
	}
	
	@Override
	public MemberDTO login(MemberDTO mdto) throws Exception {
		
		return sqlsession.selectOne(namespace, mdto);
	}
	
	
}
