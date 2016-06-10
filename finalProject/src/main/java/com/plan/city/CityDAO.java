package com.plan.city;

import java.util.List;

import com.plan.plan.PlanDTO;
import com.plan.spot.SpotDTO;
import com.plan.spotRe.SpotReDTO;

public interface CityDAO {
	public CityDTO cityView(String e_name)throws Exception;
	
	public void cityWrite(CityDTO cityDTO)throws Exception;
	
/*	public int totalList() throws Exception;*/
	
	public List<CityDTO> cityList()throws Exception;
	
	public List<SpotDTO> popular_spot()throws Exception;
	
	public List<PlanDTO> popular_plan()throws Exception;
	
	public List<SpotReDTO> reply_city(int city_no)throws Exception;
}
