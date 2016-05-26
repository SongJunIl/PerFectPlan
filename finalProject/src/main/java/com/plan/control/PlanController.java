package com.plan.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/planMake/*")
public class PlanController {
	
	@RequestMapping(value="planList")
	public void planList(){}
}
