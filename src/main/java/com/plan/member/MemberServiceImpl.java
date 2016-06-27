package com.plan.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.plan.spot.SpotDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO mdao;
	
	@Override
	public void jimlist(MemberDTO mdto,Model model) {
		try {
			List<SpotDTO> ar = null;
			ar = mdao.jimlist(mdto);
			model.addAttribute("jimlist",ar);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	
	
	
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
	public int imgupload(MemberDTO memberDTO) {
		int result =0;
			try {
				result=mdao.imgipload(memberDTO);
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
	
	
	@Override
	public MemberDTO getemail(MemberDTO mdto) {
		try {
			mdto=mdao.getEmail(mdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mdto;
	}
	
	
	@Override
	public MemberDTO getid(MemberDTO mdto) {
		
		try {
			 mdto=mdao.getid(mdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mdto;
	}
	
	@Override
	public MemberDTO getemailck(MemberDTO mdto, Model model) {

		try {
			mdto=mdao.getEmailck(mdto);
			model.addAttribute("mem", mdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mdto;
				
	}

}
