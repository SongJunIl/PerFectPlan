package com.plan.plan;

public class NewPlanDTO extends PlanDTO {
	
	private int jim;
	private int spot_counts;
	private String city_names;
	private int city_no;
	
	
	
	public int getCity_no() {
		return city_no;
	}
	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}
	public int getJim() {
		return jim;
	}
	public void setJim(int jim) {
		this.jim = jim;
	}
	
	public int getSpot_counts() {
		return spot_counts;
	}
	public void setSpot_counts(int spot_counts) {
		this.spot_counts = spot_counts;
	}
	public String getCity_names() {
		return city_names;
	}
	public void setCity_names(String city_names) {
		this.city_names = city_names;
	}
	
	
	
}
