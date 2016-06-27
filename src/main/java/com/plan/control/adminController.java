package com.plan.control;

import java.io.File;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.plan.city.CityService;
import com.plan.spot.SpotDTO;
import com.plan.spot.SpotSearchType;
import com.plan.spot.SpotService;

@Controller
@RequestMapping("/admin/*")
public class adminController {
	
	@Autowired
	private CityService cityService;
	
	@Inject
	private SpotService spotService;
	
	@RequestMapping("/adminPage")
	public void adminPage(Model model,@RequestParam(defaultValue="1") int curPage, String type){
		spotService.list(curPage,model,type);	
		cityService.cityList(model);
		
	}
	
	@RequestMapping(value="/adminPageDelete", method=RequestMethod.GET)
	public String spotDelete(@RequestParam int num){		
		spotService.spotDelect(num);
		return "redirect:/admin/adminPage";
	}
	
	@RequestMapping(value = "/adminPageUpdate",method=RequestMethod.GET)
	public void updateForm(){}
	
	@RequestMapping(value = "/adminPageUpdate",method=RequestMethod.POST)
	public String update(@ModelAttribute SpotDTO spotDTO,@RequestParam int num,MultipartFile file, Model model,HttpServletRequest request)throws Exception{
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/fileimg");
		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(),uploadPath);
		spotDTO.setSpot_img(savedName);
		spotService.spotUpdate(spotDTO);
		return  "redirect:/admin/adminPage";
	}
	
	//write Form 연결
	@RequestMapping(value="/adminPageWrite",method=RequestMethod.GET)
	public void writeFrom(){}
	
	//write Form 연결
	@RequestMapping(value="/adminPageWrite",method=RequestMethod.POST)
	public String write(@ModelAttribute SpotDTO spotDTO, MultipartFile file, Model model,HttpServletRequest request) throws Exception{
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/fileimg");
		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(),uploadPath);
		spotDTO.setSpot_img(savedName);
		spotService.spotWrite(spotDTO);
		return "redirect:/admin/adminPage";
	}
	
	@RequestMapping(value="/adminPagesearch", method=RequestMethod.GET)
	public String search(@ModelAttribute SpotSearchType spotSearchType, Model model){
		spotService.search(spotSearchType, model);
		return "admin/adminPage";
	}
	
	private String uploadFile(String originalName , byte[] fileData,String uploadPath ) throws Exception{
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(uploadPath,savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}
}
