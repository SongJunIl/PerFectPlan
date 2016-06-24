package com.plan.plan;

import java.util.ArrayList;
import java.util.List;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
import com.plan.dayPlan.DayPlanDTO;
import com.plan.dayPlan.DayPlanReDTO;
import com.plan.daySpot.DaySpotDTO;
import com.plan.daySpot.DaySpotReDTO;
import com.plan.member.MemberDTO;
import com.plan.planRe.PlanReDTO;
import com.plan.spot.SpotDTO;

public interface PlanDAO {
	
	public List<BigDTO> bigCity_list() throws Exception;
	
	public List<CityDTO> gang_list()throws Exception;
	
	public List<CityDTO> gyeong_list()throws Exception;
	
	public List<CityDTO> gyeongsangS_list()throws Exception;
	
	public List<CityDTO> gyeongsangN_list()throws Exception;
	
	public List<CityDTO> chungcheongS_list()throws Exception;
	
	public List<CityDTO> chungcheongN_list()throws Exception;
	
	public List<CityDTO> jeollaS_list()throws Exception;
	
	public List<CityDTO> jeollaN_list()throws Exception;
	
	public void plan_insert(PlanDTO planDTO)throws Exception;
	
	public int get_plan_no()throws Exception;
	
	public void dayPlan_insert(DayPlanDTO dayPlanDTO)throws Exception;
	
	public List<DayPlanReDTO> get_dayPalnReDTO(DayPlanReDTO dayPlanReDTO)throws Exception;
	
	public PlanDTO get_planDTOone(PlanDTO planDTO)throws Exception;
	
	public List<SpotDTO> get_pspotList(int city_no)throws Exception;
	
	public void plan_save_update(PlanDTO planDTO)throws Exception;
	
	public void get_daily_update(DayPlanDTO dayPlanDTO)throws Exception;
	
	public void daySpot_insert(DaySpotDTO daySpotDTO)throws Exception;
	
	public MemberDTO writer_search(String id)throws Exception;
	
	public PlanDTO plan_search(int plan_no)throws Exception;
	
	public List<DayPlanReDTO> daily_plan_search(int plan_no)throws Exception;
	
	public List<DaySpotReDTO> daily_spot_search(int plan_no, int daily_no)throws Exception;
	
	public PlanReDTO plan_reply_write(PlanReDTO planReDTO)throws Exception;
	
	public List<PlanReDTO> plan_reply_list(int plan_no)throws Exception;
	
	public List<PlanReDTO> plan_reply_del(PlanReDTO planReDTO)throws Exception;
}
