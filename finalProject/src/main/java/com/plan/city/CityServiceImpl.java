package com.plan.city;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.plan.plan.PlanDTO;
@Service
public class CityServiceImpl implements CityService {
	
	@Autowired
	private CityDAO cityDAO;
	
	@Override
	public void city(Model model){
		List<CityDTO> ar = cityDAO.city(); 
		model.addAttribute("city", ar);
	}
	
	@Override
	public void cityView(String e_name,int city_no, Model model) {
		CityDTO cityDTO = null;
		List<PopularSpotDTO> ar = null;
		List<PlanDTO> ar1 = null;
		List<City_ReDTO> ar2 = null;
		try {
			cityDTO = cityDAO.cityView(city_no);
			ar = cityDAO.popular_spot(city_no);
			ar1 = cityDAO.popular_plan(city_no);
			ar2 = cityDAO.reply_city(city_no);
			model.addAttribute("cityView", cityDTO);
			model.addAttribute("spotView", ar);
			model.addAttribute("planView", ar1);
			model.addAttribute("cityReply", ar2);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public void cityWrite(CityDTO cityDTO){
		try {
			cityDAO.cityWrite(cityDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void cityList(Model model) {
		try {
	/*		int totalList = cityDAO.totalList();*/
			/*MakePage mp = new MakePage(curPage, totalList);
			mp.setType(type);
			model.addAttribute("page", mp);*/
			List<CityDTO> ar = cityDAO.gangwon_cityList("Gangwon");
			List<CityDTO> ar2=cityDAO.gyeonggi_cityList("Gyeonggi");
			List<CityDTO> ar3=cityDAO.gyeongsangS_cityList("GyeongsangSouth");
			List<CityDTO> ar4=cityDAO.gyeongsangN_cityList("GyeongsangNorth");
			List<CityDTO> ar5=cityDAO.JeollaS_cityList("JeollaSouth");
			List<CityDTO> ar6=cityDAO.JeollaN_cityList("JeollaNorth");
			List<CityDTO> ar7=cityDAO.chungcheongS_cityList("ChungcheongSouth");
			List<CityDTO> ar8=cityDAO.chungcheongN_cityList("ChungcheongNorth");
			List<CityDTO> ar9=cityDAO.main_cityList();
			model.addAttribute("gangwon_cityList", ar);
			model.addAttribute("gyeonggi_cityList", ar2);
			model.addAttribute("gyeongsangS_cityList", ar3);
			model.addAttribute("gyeongsangN_cityList", ar4);
			model.addAttribute("JeollaS_cityList", ar5);
			model.addAttribute("JeollaN_cityList", ar6);
			model.addAttribute("chungcheongS_cityList", ar7);
			model.addAttribute("chungcheongN_cityList", ar8);
			model.addAttribute("main_cityList", ar9);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void searchCity(String search, Model model) {
		try {
			List<CityDTO> ar = cityDAO.searchCity(search);
			List<CityDTO> ar1 = cityDAO.searchCitySpot(search);
			List<CityDTO> ar2 = cityDAO.searchCityReply(search);
			model.addAttribute("searchCity", ar);
			model.addAttribute("searchCitySpot",ar1);
			model.addAttribute("searchCityReply", ar2);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void weatherView(String lat, String lon,Model model) {
		Weather wea = new Weather();
		List<WeatherDTO> ar;
		try {
			ar = wea.Weatherparsing(lat,lon);
			model.addAttribute("weather", ar);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
