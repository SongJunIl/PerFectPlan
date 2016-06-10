package com.plan.city;

import org.springframework.ui.Model;

import com.sun.org.apache.xpath.internal.operations.Mod;

public interface CityService {
	public void cityView(String e_name,int city_no, Model model);
	
	public void cityWrite(CityDTO cityDTO);
	
	public void cityList(Model model);
}
