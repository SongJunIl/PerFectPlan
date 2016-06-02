package com.plan.city;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
@Service
public class CityServiceImpl implements CityService {
	
	@Autowired
	private CityDAO cityDAO;
	
	@Override
	public void cityView(String e_name,Model model) {
		CityDTO cityDTO = null;
		try {
			cityDTO = cityDAO.cityView(e_name);
			model.addAttribute("cityView", cityDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
