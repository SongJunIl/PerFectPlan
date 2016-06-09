package com.plan.member;

public interface MemberDAO {

	
	public MemberDTO login(MemberDTO mdto)throws Exception;
	
	public void join(MemberDTO mdto)throws Exception;
	
	public int update(MemberDTO mdto) throws Exception;
	
	public void delete(int no)throws Exception;
	
	public MemberDTO getEmail(MemberDTO mdto)throws Exception; 
	
}
