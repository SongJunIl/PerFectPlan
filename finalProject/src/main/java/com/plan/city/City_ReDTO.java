package com.plan.city;


import com.plan.spotRe.SpotReDTO;

public class City_ReDTO extends SpotReDTO{
	
	
	private String m_img;
	private String spot_name;
	
	
	
	public String getSpot_name() {
		return spot_name;
	}

	public void setSpot_name(String spot_name) {
		this.spot_name = spot_name;
	}

	public String getM_img() {
		return m_img;
	}

	public void setM_img(String m_img) {
		this.m_img = m_img;
	}
	
	
	
}
