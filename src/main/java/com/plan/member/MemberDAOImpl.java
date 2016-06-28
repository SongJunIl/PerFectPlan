package com.plan.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.plan.plan.NewPlanDTO;
import com.plan.spot.SpotDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlsession;
	
	private String namespace = "MemberMapper.";
	private String namespace2 = "PlanMapper.";
	
	@Override
	public List<SpotDTO> jimlist(MemberDTO mdto) throws Exception {
		 System.out.println(mdto.getId());
	 List<SpotDTO> ar = sqlsession.selectList(namespace+"jimlist", mdto);
	 System.out.println(ar.get(0).getSpot_img());
		return ar;
	}
	
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
	public int imgipload(MemberDTO memberDTO) throws Exception {
		System.out.println(memberDTO.getM_img());
		System.out.println(memberDTO.getNo());
		return sqlsession.update(namespace+"imgupload", memberDTO);
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
