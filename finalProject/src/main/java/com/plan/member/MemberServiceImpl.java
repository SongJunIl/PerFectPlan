package com.plan.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO mdao;
	
	
	@Override
	public void join(MemberDTO mdto) {
		try {
			mdao.join(mdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public MemberDTO login(MemberDTO mdto) {
			
		try {
				mdto=mdao.login(mdto);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return mdto;
	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();		
	}
	
	@Override
	public int update(MemberDTO mdto) {
		int result=0;
		try {
				result=mdao.update(mdto);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return result;
	}
	
	@Override
	public void delete(int no) {
		try {
			mdao.delete(no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	
}
