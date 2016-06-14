package com.plan.control;


import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
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
import com.plan.dayPlan.DayPlanDTO;
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
		ArrayList<DayPlanDTO> ar =new ArrayList<>();
		System.out.println(plan_city.length);
		
		int days =0;
		for(int i =0;i<plan_city.length;i=i+5){
			for(int j=0;j<Integer.parseInt(plan_city[i+3]);j++){
			DayPlanDTO dayPlanDTO = new DayPlanDTO();
			dayPlanDTO.setDaily_xloaction(Double.parseDouble(plan_city[i+1]));
			dayPlanDTO.setDaily_yloaction(Double.parseDouble(plan_city[i+2]));
			dayPlanDTO.setCity_no(Integer.parseInt(plan_city[i+4]));
					
			ar.add(dayPlanDTO);
			}
			days += Integer.parseInt(plan_city[i+3]);
		}
		
		Date start_date = Date.valueOf(start_day);
		System.out.println(start_date);
		System.out.println(days);
		PlanDTO planDTO = new PlanDTO(start_date,days);
		/*planDTO.setId(id);//session 받아서 넣기*/
		// plan DB에 값넣기
		planService.s_plan_insert(planDTO);
		int plan_no = planService.s_plan_no();
		
		// plan no가져와서 dayDTO에 값넣고 date값 계산해서 넣기
		for(int i=0;i<ar.size();i++){
			Calendar cal = new GregorianCalendar();
			cal.setTime(start_date);
			cal.add(Calendar.DAY_OF_MONTH, i);
			
			SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
		    ar.get(i).setDaily_date(Date.valueOf(fm.format(cal.getTime())));
		    ar.get(i).setPlan_no(plan_no);
		    System.out.println(ar.get(i).getDaily_date());
		}
		for(int i=0;i<ar.size();i++){
			planService.s_dayPlan_insert(ar.get(i));
		}
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
	
	
	
	@RequestMapping(value="/planList")
	public void planList(){}
}
