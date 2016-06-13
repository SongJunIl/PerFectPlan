package com.plan.plan;

import java.util.List;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;

public interface PlanDAO {
	
	public List<BigDTO> bigCity_list();
	
	public List<CityDTO> gang_list();
	
	public List<CityDTO> gyeong_list();
	
	public List<CityDTO> gyeongsangS_list();
	
	public List<CityDTO> gyeongsangN_list();
	
	public List<CityDTO> chungcheongS_list();
	
	public List<CityDTO> chungcheongN_list();
	
	public List<CityDTO> jeollaS_list();
	
	public List<CityDTO> jeollaN_list();
	
	/*public void plan_insert(PlanDTO planDTO)throws Exception;*/
	
}
