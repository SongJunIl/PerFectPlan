package com.plan.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public void cityView(@RequestParam("e_name") String e_name, Model model){
		cityService.cityView(e_name, model);
	}
	
}
