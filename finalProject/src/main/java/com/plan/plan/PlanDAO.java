package com.plan.plan;

import java.util.List;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
import com.plan.dayPlan.DayPlanDTO;

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
	
}
