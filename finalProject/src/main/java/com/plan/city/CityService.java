package com.plan.city;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.sun.org.apache.xpath.internal.operations.Mod;

public interface CityService {
	public void cityView(String e_name,int city_no, Model model);
	
	public void cityWrite(CityDTO cityDTO);
	
	public void cityList(Model model);
	
	public void city(Model model);
	
	public void searchCity(String search, Model model); 
	
	public void weatherView(String lat, String lon,Model model);
}
