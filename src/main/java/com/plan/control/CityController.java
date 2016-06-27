package com.plan.control;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.plan.city.CityDTO;
import com.plan.city.CityService;
import com.plan.city.Weather;
import com.plan.city.WeatherDTO;

@Controller
@RequestMapping("/city/*")
public class CityController {
	
	@Autowired
	private CityService cityService;
	
	//사용자 여행지 리스트
	@RequestMapping("/city")
	public void city(Model model){
		cityService.city(model);
		
	}
	
	//관리자 여행지 리스트 
	@RequestMapping("/cityList")
	public void cityList( Model model){
		cityService.cityList(model);
	}
	
/*	//관리자 여행지 작성폼
	@RequestMapping(value="/cityWrite", method=RequestMethod.GET)
	public void cityWriteForm(int no){
	}
	*/
	
	@RequestMapping(value="/cityWrite")
	public String cityWrite(@ModelAttribute CityDTO cityDTO, MultipartFile file1, MultipartFile file2, MultipartFile file3, Model model, HttpServletRequest request,@RequestParam("update_no") int no)throws Exception{
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/img/city/cityIMG");
		System.out.println("uup");
		System.out.println(no);
		String savedName1 = uploadFile(file1.getOriginalFilename(), file1.getBytes(),uploadPath);
		System.out.println("file1");
		System.out.println(savedName1);
		cityDTO.setCity_img1(savedName1);
		
		String savedName2 = uploadFile(file2.getOriginalFilename(), file2.getBytes(),uploadPath);
		System.out.println("file2");
		System.out.println(savedName2);
		cityDTO.setCity_img2(savedName2);
		
		String savedName3 = uploadFile(file3.getOriginalFilename(), file3.getBytes(),uploadPath);
		System.out.println("file3");
		System.out.println(savedName3);
		cityDTO.setCity_img3(savedName3);
		cityDTO.setNo(no);
		
		System.out.println(cityDTO.getCity_img1());
		System.out.println(cityDTO.getCity_img2());
		System.out.println(cityDTO.getCity_img3());
		cityService.cityWrite(cityDTO);
		return "redirect:/city/cityList";
	}
	
	private String uploadFile(String originalName , byte[] fileData,String uploadPath ) throws Exception{
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(uploadPath,savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}
	
	@RequestMapping("/cityView")
	public void cityView(@RequestParam("e_name") String e_name,@RequestParam("city_no") int city_no,@RequestParam("lat") String lat, @RequestParam("lon")String lon, Model model) throws Exception{
		cityService.cityView(e_name,city_no, model);
		cityService.weatherView(lat,lon,model);
	}
	
	@RequestMapping("/searchCity")
	public void searchCity(@RequestParam("search") String search,Model model){
		cityService.searchCity(search, model);
	}
	
}
