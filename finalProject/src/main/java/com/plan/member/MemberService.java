package com.plan.member;

import javax.servlet.http.HttpSession;

public interface MemberService {

	public void join(MemberDTO mdto);
	public MemberDTO login(MemberDTO mdto);
	public void logout(HttpSession session);
	public int update(MemberDTO mdto);
	public void delete(int no);

}
