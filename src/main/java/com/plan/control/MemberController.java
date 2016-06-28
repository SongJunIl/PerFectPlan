package com.plan.control;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.mail.Multipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.plan.email.EmailSender;
import com.plan.member.MemberDTO;
import com.plan.member.MemberService;
import com.plan.plan.NewPlanDTO;
import com.plan.plan.PlanService;
import com.plan.qna.QnaDTO;
import com.plan.qna.QnaService;
import com.plan.qna.ReplyQnaDTO;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private PlanService planService;
	
	@Autowired
	private QnaService qnaservice;
	
	@Autowired
	private EmailSender emailsender;
	
	
	// 미완성 완성 뽑아오기
		//완성===
		
	
	@RequestMapping("mypage")
	public void mypage(HttpSession session, Model model){
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		NewPlanDTO newPlanDTO = new NewPlanDTO();
		newPlanDTO.setId(memberDTO.getId());
		System.out.println(newPlanDTO.getId());
		List<NewPlanDTO> ar = planService.s_select_complite_plan(newPlanDTO);
		System.out.println(ar.size());
		for(int i=0;i<ar.size();i++){
			
		    
		    int spot_counts = planService.s_spot_counts(ar.get(i));
		    
		    int clip_counts = planService.s_clip_counts(ar.get(i));
		    List<String> ar2 = planService.s_get_city_names(ar.get(i));
		    String city_names = "";
		    for(int j=0;j<ar2.size();j++){
		    	if(j==0){
		    		city_names += ar2.get(j);		    		
		    	}else{
		    		city_names += ","+ ar2.get(j);
		    	}
		    }
		   
		    ar.get(i).setSpot_counts(spot_counts);
		    ar.get(i).setJim(clip_counts);
		    ar.get(i).setCity_names(city_names);
		}
		
		List<NewPlanDTO> ar3 = planService.s_select_incomplite_plan(newPlanDTO);
		for(int i=0;i<ar3.size();i++){
			
		    
		    int spot_counts = planService.s_spot_counts(ar3.get(i));
		    
		    int clip_counts = planService.s_clip_counts(ar3.get(i));
		    List<String> ar4 = planService.s_get_city_names(ar3.get(i));
		    String city_names = "";
		    for(int j=0;j<ar4.size();j++){
		    	if(j==0){
		    		city_names += ar4.get(j);		    		
		    	}else{
		    		city_names += ","+ ar4.get(j);
		    	}
		    }
		   
		    ar3.get(i).setSpot_counts(spot_counts);
		    ar3.get(i).setJim(clip_counts);
		    ar3.get(i).setCity_names(city_names);
		}
		
		System.out.println("길이"+ar.size());
		System.out.println("길이"+ar3.size());
		/*List<CityDTO> city_list = planService.s_city_list_all();*/
		
		model.addAttribute("plan_list2", ar);
		model.addAttribute("plan_list3", ar3);
		/*model.addAttribute("city_list",city_list);*/
	}
	
	@RequestMapping(value="/jimlist")
	public void jimlist(@ModelAttribute MemberDTO mdto,Model model){
		memberService.jimlist(mdto, model);
		 
	}
	
	@RequestMapping(value="/logincheck",method = RequestMethod.POST)
	public void logincheck(@ModelAttribute MemberDTO mdto,Model model){
		mdto=memberService.login(mdto);
		if(mdto==null){  
			model.addAttribute("message", "no");
		}else{
			model.addAttribute("message", "yes");
		}
	}
	
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public void login(@ModelAttribute MemberDTO mdto, Model model){
		mdto=memberService.login(mdto);
		if(mdto.getId().equals("admin")){
			model.addAttribute("admin", mdto);
		}else{
			model.addAttribute("mem", mdto);
		}
		
		
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
	
	
	
	@RequestMapping(value="/samrtEditor2Inputarea")
	public String smartEditor2Inputarea(){
		return "SE2/smart_editor2_inputarea";
	}
	
	@RequestMapping(value="/smarteditor2InputareaIe8")
	public String smartEditor2InputareaIe8(){
		return "SE2/smart_editor2_inputarea_ie8";
	}
	
	@RequestMapping(value="/email",method = RequestMethod.POST)
	public void email(@ModelAttribute MemberDTO mdto,Model model,Model model2){
		if(memberService.getemail(mdto)==null){
			model.addAttribute("message", "일치하는 이메일이 없습니다.");
			model2.addAttribute("echeck", "사용가능한 이메일입니다.");
		}else{
			model2.addAttribute("echeck", "중복된 이메일 입니다.");
			model.addAttribute("message", "메일로 정보를 확인하시겠습니까?.");
			model.addAttribute("mem", mdto);
			model.addAttribute("cant","2" );
		}
	}
	
	@RequestMapping(value="/id")
	public void id(@ModelAttribute MemberDTO mdto, Model model){
		if(memberService.getid(mdto)==null){
			
			model.addAttribute("idcheck", "사용가능한 아이디입니다.");
		}else{
			model.addAttribute("idcheck", "중복된 아이디입니다.");
			model.addAttribute("cant", "1");
		}
	}

	
	/*이메일 체크*/
	@RequestMapping(value="/emailck",method = RequestMethod.POST)
	public void emailck(@ModelAttribute MemberDTO mdto,Model model,HttpSession session){
		if(memberService.getemailck(mdto,model)==null){
			model.addAttribute("message", "일치하는 이메일이 없습니다.");
		}else{
			model.addAttribute("message", "메일로 정보를 확인하시겠습니까?.");
			
		}
	}
	
	//이메일 보내기
 
  @RequestMapping(value="/emailsend",method = RequestMethod.POST)
  @ResponseBody
	public String mailsend(@ModelAttribute MemberDTO mdto) {
		try {
			emailsender.send(mdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ok";
	}
	
  
  //qna_board

  @RequestMapping(value="/qna_write",method = RequestMethod.POST)
  	public String qnawrite(@ModelAttribute QnaDTO qdto){
	  	qnaservice.qna_write(qdto);
	  return "redirect:/member/mypage";
  }
  
  @RequestMapping(value="/qna_list",method = RequestMethod.POST)
  public void qnalist(@RequestParam(defaultValue="1") int curPage, Model model, String id,String type,int page){

	  qnaservice.qna_getview(curPage,model,id,type,page);
	  
  }
  
  @RequestMapping(value="/qna_listcheck",method=RequestMethod.POST)
  public void qna_listcheck(@RequestParam(defaultValue="1")int curPage,Model model, String id,String type,int page){
	  qnaservice.qna_getview(curPage, model, id, type, page);
  }
  
  @RequestMapping(value="/qna_update",method=RequestMethod.POST)
  public String qna_update(@ModelAttribute QnaDTO qdto,Model model){
	  qnaservice.qna_update(qdto);
	  return "redirect:/member/mypage";
  }
  
  @RequestMapping(value="/qna_delete",method=RequestMethod.POST)
  public String qna_delete(@RequestParam int com_no,Model model){
	 qnaservice.qna_delete(com_no);
	 return "redirect:/member/mypage";
  }
  
  //replyqna_board
  
  @RequestMapping(value="/replyqna_write",method = RequestMethod.POST)
  public String replyqna_write(@ModelAttribute ReplyQnaDTO rqdto,@RequestParam("com_no") String com_no1){
	  int com_no = Integer.parseInt(com_no1); 
	  qnaservice.replyQna_write(rqdto,com_no);
	  return "redirect:/member/mypage";
  }
  
  @RequestMapping(value="/qna_replylist", method =RequestMethod.POST)
  public void qna_userreply(@ModelAttribute QnaDTO qdto,Model model){
	    qnaservice.replyQna_getview(qdto, model);
	  
  }
  
  @RequestMapping(value="/replyqna_getreplyview", method=RequestMethod.POST)
  public void replyqna_getreplyview(@ModelAttribute ReplyQnaDTO rqdto,Model model){
	  qnaservice.replyqna_getreplyview(rqdto, model);
  }
  
  @RequestMapping(value="/imgupload", method=RequestMethod.POST)
  public String imgupload(@ModelAttribute MemberDTO memberDTO,MultipartFile file, Model model,HttpServletRequest request) throws Exception{
	  String uploadPath =request.getSession().getServletContext().getRealPath("/resources/memberimg");
	  String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(), uploadPath);
	  memberDTO.setM_img(savedName);
	  memberService.imgupload(memberDTO);
	  request.getSession().setAttribute("member", memberDTO);
	  return "redirect:/"; 
 }
  
  private String uploadFile(String orginalName, byte[] fileData, String uploadPath) throws Exception{
	UUID uid = UUID.randomUUID();
	String saveName = uid.toString()+"_"+orginalName;
	File target = new File(uploadPath,saveName);
	FileCopyUtils.copy(fileData, target);
	return saveName;
	  
  }
  
  
  
  
	
}
