package com.plan.control;


import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.plan.spot.ReplyDTO;
import com.plan.spot.SpotDTO;
import com.plan.spot.SpotSearchType;
import com.plan.spot.SpotService;

@Controller
@RequestMapping("/spot/*")
public class SpotController {


	
	@Inject
	private SpotService spotService;
	
	

	
	@RequestMapping("/spotList")
	public void spotdList(@RequestParam(defaultValue="1") int curPage, Model model,String type){
		spotService.list(curPage,model,type);
		
	}
	
	@RequestMapping(value = "/spotUpdate",method=RequestMethod.GET)
	public void updateForm(){}
	
	@RequestMapping(value = "/spotUpdate",method=RequestMethod.POST)
	public String update(@ModelAttribute SpotDTO spotDTO,@RequestParam int num,MultipartFile file, Model model,HttpServletRequest request)throws Exception{
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/fileimg");
		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(),uploadPath);
		spotDTO.setSpot_img(savedName);
		spotService.spotUpdate(spotDTO);
		return  "redirect:/spot/spotList?curPage=1";
	}
	
	@RequestMapping(value = "/spotReplyUpdate",method=RequestMethod.GET)
	public void replyUpdateForm(Model model,@RequestParam("num") int num,@RequestParam("ref") int ref){
		spotService.spotReplyUpdateForm(model,num,ref);
	}
	
	@RequestMapping(value="/spotReplyUpdate",method=RequestMethod.POST)
	public String spotReplyUpdate(@ModelAttribute ReplyDTO replyDTO,@RequestParam("num") int num,@RequestParam("ref") int ref){
		spotService.spotReplyUpdate(replyDTO);
		return "redirect:/spot/spotView?num="+ref;
	}
	
	//write Form 연결
	@RequestMapping(value="/spotWrite",method=RequestMethod.GET)
	public void writeFrom(){}
	
	//write Form 연결
	@RequestMapping(value="/spotWrite",method=RequestMethod.POST)
	public String write(@ModelAttribute SpotDTO spotDTO, MultipartFile file, Model model,HttpServletRequest request) throws Exception{
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/fileimg");
		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(),uploadPath);
		spotDTO.setSpot_img(savedName);
		spotService.spotWrite(spotDTO);
		return "redirect:/spot/spotList?curPage=1";
	}
	
	private String uploadFile(String originalName , byte[] fileData,String uploadPath ) throws Exception{
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(uploadPath,savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}
	@RequestMapping(value="/spotView")
	public void spotdView(@RequestParam int num, Model model , String icon){
		spotService.spotView(num, model);
		spotService.spotReplyView(num, model,icon);
	}
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String search(@ModelAttribute SpotSearchType spotSearchType, Model model){
		spotService.search(spotSearchType, model);
		return "spot/spotList";
	}
	
	@RequestMapping(value="/spotDelete", method=RequestMethod.GET)
	public String spotDelete(@RequestParam int num){		
		spotService.spotDelect(num);
		return "redirect:/spot/spotList?curPage=1";
	}
	
	@RequestMapping(value="/spotReplyDelete", method=RequestMethod.GET)
	public String spotReplyDelete(@RequestParam("num") int num,@RequestParam("ref") int ref){
		
		spotService.spotReplyDelete(num);
		
		return "redirect:/spot/spotView?num="+ref;

	}

	@RequestMapping(value="/spotReply", method=RequestMethod.POST)
	public String reply(@ModelAttribute ReplyDTO replyDTO, int num,@RequestParam int icon){
		replyDTO.setNum(num);
		replyDTO.setIcon(icon);
		spotService.spotReply(replyDTO);
		return "redirect:/spot/spotView?num="+num;
	}
	
	@RequestMapping(value="/category")
	public void category(@RequestParam(defaultValue="1") int curPage, Model model,String type, String category){
		spotService.category(curPage, model, type, category);
	}
	
}
