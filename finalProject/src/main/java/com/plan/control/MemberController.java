package com.plan.control;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class MemberController {

	@RequestMapping("mypage")
	public void mypage(){
		
	}
=======
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.plan.member.MemberDTO;
import com.plan.member.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping("mypage")
	public void mypage(){
		
	}
	
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public void login(@ModelAttribute MemberDTO mdto, Model model){
		mdto=memberService.login(mdto);
		model.addAttribute("mem", mdto);
	}
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		memberService.logout(session);
		return "redirect:/";
	}
	
	
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String join(@ModelAttribute MemberDTO mdto, Model model){
		memberService.join(mdto);
		return "redirect:/";
	}
	

	
	
}
