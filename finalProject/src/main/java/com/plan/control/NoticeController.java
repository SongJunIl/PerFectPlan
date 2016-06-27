package com.plan.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.plan.notice.NoticeDTO;
import com.plan.notice.NoticeService;

@Controller
@RequestMapping(value="/notice/*")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	
	@RequestMapping(value="board")
	public void boardlist(@RequestParam(defaultValue="1") int curPage, Model model){
		noticeService.notice_list(curPage, model);
	}
	
	@RequestMapping(value="board_WriteForm")
	public void board_WriteForm(){
		
	}
	
	@RequestMapping(value="boardWrite", method=RequestMethod.GET)
	public String notice_write(@ModelAttribute NoticeDTO ndto){
		noticeService.notice_write(ndto);
		System.out.println("더르움");
		return "redirect:/board/list";
				
	}
	
	@RequestMapping(value="boardView", method=RequestMethod.GET)
	public void notice_view(@RequestParam int notice_no, Model model){
		noticeService.notice_view(notice_no,model);
	}
	
	@RequestMapping(value="boardUpdate", method=RequestMethod.POST)
	public void notice_update(@ModelAttribute NoticeDTO ndto){
		noticeService.notice_update(ndto);
	}
	
	@RequestMapping(value="boardDelete",method=RequestMethod.POST)
	public void notice_delete(@RequestParam int notice_no){
		noticeService.notice_delete(notice_no);
	}
	
	
	
	
}
