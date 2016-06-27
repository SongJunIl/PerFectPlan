package com.plan.city;

import java.util.List;

import com.plan.plan.PlanDTO;

public interface CityDAO {
	public List<CityDTO> city();
	
	public CityDTO cityView(int no)throws Exception;
	
	public void cityWrite(CityDTO cityDTO)throws Exception;
	
/*	public int totalList() throws Exception;*/
	
	public List<CityDTO> cityList()throws Exception;
	
	public List<PopularSpotDTO> popular_spot(int city_no)throws Exception;
	
	public List<PlanDTO> popular_plan(int city_no)throws Exception;
	
	public List<City_ReDTO> reply_city(int city_no)throws Exception;
	
	public List<CityDTO> searchCity(String search)throws Exception;
	
	public List<CityDTO> searchCitySpot(String search)throws Exception;
	
	public List<CityDTO> searchCityReply(String search)throws Exception;
	
	public List<CityDTO> gangwon_cityList(String bigEname)throws Exception;
	public List<CityDTO> gyeonggi_cityList(String bigEname)throws Exception;
	public List<CityDTO> gyeongsangS_cityList(String bigEname)throws Exception;
	public List<CityDTO> gyeongsangN_cityList(String bigEname)throws Exception;
	public List<CityDTO> JeollaS_cityList(String bigEname)throws Exception;
	public List<CityDTO> JeollaN_cityList(String bigEname)throws Exception;
	public List<CityDTO> chungcheongS_cityList(String bigEname)throws Exception;
	public List<CityDTO> chungcheongN_cityList(String bigEname)throws Exception;
	public List<CityDTO> main_cityList()throws Exception;
}
