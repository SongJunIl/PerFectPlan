package com.plan.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plan.big.BigDTO;
import com.plan.plan.PlanService;



@Controller
@RequestMapping(value="/planMake/*")
public class PlanController {
	@Autowired
	private PlanService planService;
	
	@RequestMapping(value="planSelectCity")
	public void planSelectCity(Model model){
		
		List<BigDTO> bigList = planService.s_bigCity_list();
		model.addAttribute("bigCity", bigList);
	}
	
	@RequestMapping(value="plannerMake")
	public void plannerMake(){}
	
	
	@RequestMapping(value="planList")
	public void planList(){}
}
