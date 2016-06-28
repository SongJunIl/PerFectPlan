package com.plan.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.plan.plan.NewPlanDTO;

public interface MemberService {

	public void join(MemberDTO mdto);
	public MemberDTO login(MemberDTO mdto);
	public void logout(HttpSession session);
	public int update(MemberDTO mdto);
	public void delete(int no);
	public MemberDTO getid(MemberDTO mdto);
	public MemberDTO getemail(MemberDTO mdto);
	public int imgupload(MemberDTO memberDTO);
	public MemberDTO getemailck(MemberDTO mdto,Model model);
	public void jimlist(MemberDTO mdto,Model model);

	

}
