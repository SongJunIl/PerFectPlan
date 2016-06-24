package com.plan.control;


import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
import com.plan.dayPlan.DayPlanDTO;
import com.plan.dayPlan.DayPlanReDTO;
import com.plan.daySpot.DaySpotDTO;
import com.plan.daySpot.DaySpotReDTO;
import com.plan.member.MemberDTO;
import com.plan.plan.PlanDTO;
import com.plan.plan.PlanService;
import com.plan.planRe.PlanReDTO;
import com.plan.spot.SpotDTO;



@Controller
@RequestMapping(value="/planMake/*")
public class PlanController {
	@Autowired
	private PlanService planService;
	//plan 댓글 삭제
	@RequestMapping(value="/planDelete")
	public void planDelete(@ModelAttribute PlanReDTO planReDTO,Model model){
		List<PlanReDTO> ar_reply_list = planService.s_plan_reply_del(planReDTO);
		model.addAttribute("reply_list", ar_reply_list);
	}
	
	//plan댓글 쓰기
	@RequestMapping(value="/planReplyWrite")
	public void planReply(@ModelAttribute PlanReDTO planReDTO,Model model){
		System.out.println(planReDTO.getP_no());
		System.out.println(planReDTO.getId());
		System.out.println(planReDTO.getContents());
		
		PlanReDTO planReDTO2 = planService.s_plan_reply_write(planReDTO);
		model.addAttribute("plan_reply", planReDTO2);
	}
	
	@RequestMapping(value="/planView")
	public void planView(@RequestParam("id") String id,@RequestParam("plan_no") int plan_no,Model model){
		//유저 찾아서 DTO 가져오기
		MemberDTO memberDTO = planService.s_writer_search(id);
		model.addAttribute("member", memberDTO);
		//plan 번호로 일정관련 DB 다가져오기
		PlanDTO planDTO = planService.s_plan_search(plan_no);
		List<DayPlanReDTO> ar_day_plan = planService.s_daily_plan_search(plan_no);
		HashMap<Integer,List<DaySpotReDTO>> hs= new HashMap<>();
		for(int i=0;i<ar_day_plan.size();i++){
			List<DaySpotReDTO> ar_day_spot = planService.s_daily_spot_search(plan_no,ar_day_plan.get(i).getDaily_no());
			hs.put(i, ar_day_spot);
		}
		// dayplanReDTO에 요일 값 대입하기
		for(int i=0;i<ar_day_plan.size();i++){
			ar_day_plan.get(i).get_dailyWeek(ar_day_plan.get(i).getDaily_date());
		}
		
		model.addAttribute("planDTO", planDTO);
		model.addAttribute("day_plan", ar_day_plan);
		model.addAttribute("day_spot", hs);
		
		// reply 리스트 뽑아오기
		List<PlanReDTO> ar_reply_list = planService.s_plan_reply_list(plan_no);
		model.addAttribute("reply_list", ar_reply_list);
		
	}
	
	@RequestMapping(value="/planSave", method=RequestMethod.POST)
	public String planSave(@RequestParam("all_day_no") String all_day,@RequestParam("all_plan_list") String all_plan,@ModelAttribute PlanDTO planDTO,@RequestParam("days") String days,Model model,HttpSession session){
		String spot_plan[] = all_plan.split(",");
		ArrayList<DaySpotDTO> ar = new ArrayList<>();
		System.out.println("길이"+spot_plan.length);
		for(int i =0;i<spot_plan.length;i=i+5){
			
			DaySpotDTO daySpotDTO = new DaySpotDTO();
			daySpotDTO.setDaily_no(Integer.parseInt(spot_plan[i]));
			daySpotDTO.setSpot_no(Integer.parseInt(spot_plan[i+1]));
			daySpotDTO.setSpot_name(spot_plan[i+2]);
			daySpotDTO.setSpot_xlocation(Double.parseDouble(spot_plan[i+3]));
			daySpotDTO.setSpot_ylocation(Double.parseDouble(spot_plan[i+4]));
			daySpotDTO.setPlan_no(planDTO.getPlan_no());
			
			ar.add(daySpotDTO);	
			System.out.println(daySpotDTO.getDaily_no());
		}
		// daily에서 선택한지역을 가지고 상세일정DB에 저장시키기
		for(int i=0;i<ar.size();i++){
			planService.s_daySpot_insert(ar.get(i));
		}
		System.out.println("check1");
		Date start_date = planDTO.getS_date();
		System.out.println(start_date);
		planDTO.set_F_date(Integer.parseInt(days));
		
		//planDTO를 가지고 DB 업데이트 하기
		planService.s_plan_save_update(planDTO);
		System.out.println("check2");
		//dayplan update 날짜 업데이트하기
		
		String[] day_no_list=all_day.split(",");
		ArrayList<DayPlanDTO> ar2 = new ArrayList<>();
		for(int i=0;i<Integer.parseInt(days);i++){
			
			DayPlanDTO dayPlanDTO = new DayPlanDTO();
			
			dayPlanDTO.setDaily_no(Integer.parseInt(day_no_list[i]));
			
			dayPlanDTO.setPlan_no(planDTO.getPlan_no());
			
			ar2.add(dayPlanDTO);
			
		}
		System.out.println("check3");
		// plan no가져와서 dayDTO에 값넣고 date값 계산해서 넣기
			for(int i=0;i<ar2.size();i++){
				Calendar cal = new GregorianCalendar();
				cal.setTime(start_date);
				cal.add(Calendar.DAY_OF_MONTH, i);
				
				SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
			    ar2.get(i).setDaily_date(Date.valueOf(fm.format(cal.getTime())));
			    
			    System.out.println(ar2.get(i).getDaily_date());
			    System.out.println("번호"+ar2.get(i).getDaily_no());
			    planService.s_get_daily_update(ar2.get(i));
			}	
			
		System.out.println("완료");
		return "redirect:/planMake/planView?id=mamamoo&plan_no="+planDTO.getPlan_no();
				
	}
	
	//spot ajax로 가져오기
	@RequestMapping(value="/pspotList", method=RequestMethod.POST)
	public void pspotList(@RequestParam("city_no") int city_no,Model model){
		List<SpotDTO> pspot_list = planService.s_get_pspotList(city_no);
		model.addAttribute("spot_List", pspot_list);
	}
	
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
			dayPlanDTO.setDaily_xlocation(Double.parseDouble(plan_city[i+1]));
			dayPlanDTO.setDaily_ylocation(Double.parseDouble(plan_city[i+2]));
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
		
		// plan에서 선택한 날짜와 지역을 가지고 상세일정 테이블 만들기
		for(int i=0;i<ar.size();i++){
			planService.s_dayPlan_insert(ar.get(i));
		}
		
		//dayPlanReDTO 리스트로 받아오기
		DayPlanReDTO dayPlanReDTO = new DayPlanReDTO();
		dayPlanReDTO.setPlan_no(plan_no);
		List<DayPlanReDTO> DayPlanReDTO_ar = planService.s_get_dayPalnReDTO(dayPlanReDTO);
		for(int i=0;i<DayPlanReDTO_ar.size();i++){
			DayPlanReDTO_ar.get(i).get_dailyWeek(DayPlanReDTO_ar.get(i).getDaily_date());
		}
		//plan DB테이블에서 데이터값 받아와서 DTO에 저장시키기
		planDTO.setPlan_no(plan_no);
		planDTO = planService.s_get_planDTOone(planDTO);
		
		model.addAttribute("daylist",DayPlanReDTO_ar);
		model.addAttribute("planDTO", planDTO);
		
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
