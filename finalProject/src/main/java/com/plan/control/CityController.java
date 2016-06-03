package com.plan.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.plan.city.CityService;

@Controller
@RequestMapping("/city/*")
public class CityController {
	
	@Autowired
	private CityService cityService;
	
	@RequestMapping("/city")
	public void city(){
		
	}
	
	@RequestMapping("/cityView")
	public void cityView(@RequestParam("ename") String ename){
		
		
	}
	
	@RequestMapping("/Nf")
	public void Nf(){}
}
