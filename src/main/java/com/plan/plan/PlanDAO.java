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
import com.plan.scrap.ScrapDTO;
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
	
	public void plan_fdate_update(PlanDTO planDTO)throws Exception;
	
	public List<DayPlanReDTO> day_plan_del(DayPlanReDTO dayPlanReDTO)throws Exception;
	
	public void plan_spot_del(PlanDTO planDTO)throws Exception;
	
	public List<NewPlanDTO> plan_list_select(PlanMakePage planMakePage)throws Exception;
	
	public int spot_counts(PlanDTO planDTO)throws Exception;
	
	public int clip_counts(PlanDTO planDTO)throws Exception;
	
	public List<String> get_city_names(PlanDTO planDTO)throws Exception;
	
	public List<CityDTO> city_list_all()throws Exception;
	
	public List<NewPlanDTO> plan_list_ajax(NewPlanDTO newPlanDTO)throws Exception;
	
	public void plan_jim_insert(ScrapDTO scrapDTO)throws Exception; 
	
	public ScrapDTO plan_jim_select(ScrapDTO scrapDTO)throws Exception;
	
	public void plan_jim_delete(ScrapDTO scrapDTO)throws Exception;
	
	public int plan_list_counts()throws Exception;
	
	public List<NewPlanDTO> select_complite_plan(NewPlanDTO newPlanDTO)throws Exception;
	
	public List<NewPlanDTO> select_incomplite_plan(NewPlanDTO newPlanDTO)throws Exception;
	
	public void del_my_plan(PlanDTO planDTO)throws Exception;
}
