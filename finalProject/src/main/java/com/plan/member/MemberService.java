package com.plan.member;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface MemberService {

	public void join(MemberDTO mdto);
	public MemberDTO login(MemberDTO mdto);
	public void logout(HttpSession session);
	public int update(MemberDTO mdto);
	public void delete(int no);
	public MemberDTO getid(MemberDTO mdto);
	public MemberDTO getemail(MemberDTO mdto);

	public MemberDTO getemailck(MemberDTO mdto,Model model);
}
