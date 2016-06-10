package com.plan.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		System.out.println(mdto);
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
	
	@RequestMapping(value="/update", method= RequestMethod.POST)
	public String update(@ModelAttribute MemberDTO mdto, Model model){
		int result =memberService.update(mdto);
		model.addAttribute("result", result);
		model.addAttribute("mem", mdto);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/delete" ,method= RequestMethod.POST)
	public String delete(int no,HttpSession session){
		memberService.delete(no);
		memberService.logout(session);
		return "redirect:/";
	}
	
	@RequestMapping(value="/samrtEditor2Inputarea")
	public String smartEditor2Inputarea(){
		return "SE2/smart_editor2_inputarea";
	}
	
	@RequestMapping(value="/smarteditor2InputareaIe8")
	public String smartEditor2InputareaIe8(){
		return "SE2/smart_editor2_inputarea_ie8";
	}
	
	@RequestMapping(value="/email")
	public void email(@ModelAttribute MemberDTO mdto,Model model){
		if(memberService.getemail(mdto)==null){
			model.addAttribute("message", "일치하는 이메일이 없습니다.");
		}else{
			model.addAttribute("message", "메일로 정보를 확인하시겠습니까?.");
			model.addAttribute("mem", mdto);
		}
	}
	
	@RequestMapping(value="/id")
	public void id(@ModelAttribute MemberDTO mdto, Model model){
		if(memberService.getid(mdto)==null){
			model.addAttribute("idcheck", "사용가능한 아이디입니다.");
		}else{
			model.addAttribute("idcheck", "중복된 아이디입니다.");
		}

	
	
	
	
	
	}
	
	
}
