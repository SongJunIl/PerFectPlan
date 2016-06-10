package com.plan.city;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.plan.plan.PlanDTO;
import com.plan.spot.SpotDTO;
import com.plan.spotRe.SpotReDTO;
@Service
public class CityServiceImpl implements CityService {
	
	@Autowired
	private CityDAO cityDAO;
	
	@Override
	public void cityView(String e_name,int city_no, Model model) {
		CityDTO cityDTO = null;
		List<SpotDTO> ar = null;
		List<PlanDTO> ar1 = null;
		List<SpotReDTO> ar2 = null;
		try {
			cityDTO = cityDAO.cityView(e_name);
			ar = cityDAO.popular_spot();
			ar1 = cityDAO.popular_plan();
			ar2 = cityDAO.reply_city(city_no);
			model.addAttribute("cityView", cityDTO);
			model.addAttribute("spotView", ar);
			model.addAttribute("planView", ar1);
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
			List<CityDTO> ar = cityDAO.cityList();
			model.addAttribute("cityList", ar);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
