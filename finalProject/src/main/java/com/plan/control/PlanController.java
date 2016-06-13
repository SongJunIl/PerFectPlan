package com.plan.control;


import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
import com.plan.plan.PlanDTO;
import com.plan.plan.PlanService;



@Controller
@RequestMapping(value="/planMake/*")
public class PlanController {
	@Autowired
	private PlanService planService;
	
	//일정만들기 데이터 넘기기
	@RequestMapping(value="/plannerMake", method=RequestMethod.POST)
	public void planMake(@RequestParam("all_positions") String all_positions,@RequestParam("start_day") String start_day,Model model){
		System.out.println("planMake_submit 들어옴");
		String plan_city[] = all_positions.split(",");
		ArrayList<HashMap<String, String>> ar =new ArrayList<>();
		System.out.println(plan_city.length);
		
		int days =0;
		for(int i =0;i<plan_city.length;i=i+5){
			HashMap<String, String> hs = new HashMap<>();
			hs.put("city_name", plan_city[i]);
			hs.put("city_xlocation", plan_city[i+1]);
			hs.put("city_ylocation", plan_city[i+2]);
			hs.put("city_day", plan_city[i+3]);
			hs.put("city_no", plan_city[i+4]);
			
			days += Integer.parseInt(plan_city[i+3]);
			ar.add(hs);
			
		}
		Date start_date = Date.valueOf(start_day);
		System.out.println(start_date);
		System.out.println(days);
		PlanDTO planDTO = new PlanDTO(start_date,days);
		/*planDTO.setId(id);//session 받아서 넣기*/
		/*planService.s_plan_insert(planDTO);*/
		
	}
	
	//일정 만들기
	@RequestMapping(value="/planSelectCity")
	public void planSelectCity(Model model){
		
		List<BigDTO> bigList = planService.s_bigCity_list();
		List<CityDTO> gang = planService.s_gang_list();
		List<CityDTO> gyeong = planService.s_gyeong_list();
		List<CityDTO> gyeongsangN = planService.s_gyeongsangN_list();
		List<CityDTO> gyeongsangS = planService.s_gyeongsangS_list();
		List<CityDTO> jeollaN = planService.s_jeollaN_list();
		List<CityDTO> jeollaS = planService.s_jeollaS_list();
		List<CityDTO> chungcheongN = planService.s_chungcheongN_list();
		List<CityDTO> chungcheongS = planService.s_chungcheongS_list();
		model.addAttribute("bigCity", bigList);
		model.addAttribute("gang", gang);
		model.addAttribute("gyeong", gyeong);
		model.addAttribute("gyeongsangN", gyeongsangN);
		model.addAttribute("gyeongsangS", gyeongsangS);
		model.addAttribute("jeollaN", jeollaN);
		model.addAttribute("jeollaS", jeollaS);
		model.addAttribute("chungcheongN", chungcheongN);
		model.addAttribute("chungcheongS", chungcheongS);
		
	}
	
	
	
	@RequestMapping(value="planList")
	public void planList(){}
}
