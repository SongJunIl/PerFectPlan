package com.plan.plan;

import java.util.List;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
import com.plan.dayPlan.DayPlanDTO;
import com.plan.dayPlan.DayPlanReDTO;
import com.plan.spot.SpotDTO;

public interface PlanService {
	
	public List<BigDTO> s_bigCity_list();
	
	public List<CityDTO> s_gang_list();
	
	public List<CityDTO> s_gyeong_list();
	
	public List<CityDTO> s_gyeongsangS_list();
	
	public List<CityDTO> s_gyeongsangN_list();
	
	public List<CityDTO> s_chungcheongS_list();
	
	public List<CityDTO> s_chungcheongN_list();
	
	public List<CityDTO> s_jeollaS_list();
	
	public List<CityDTO> s_jeollaN_list();
	
	public void s_plan_insert(PlanDTO planDTO);
	
	public int s_plan_no();
	
	public void s_dayPlan_insert(DayPlanDTO dayPlanDTO);
	
	public List<DayPlanReDTO> s_get_dayPalnReDTO(DayPlanReDTO dayPlanReDTO);
	
	public PlanDTO s_get_planDTOone(PlanDTO planDTO);
	
	public List<SpotDTO> s_get_pspotList(int city_no);
	
}
