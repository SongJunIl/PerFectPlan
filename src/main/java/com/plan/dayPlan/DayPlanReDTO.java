package com.plan.dayPlan;

import java.sql.Date;
import java.util.Calendar;

public class DayPlanReDTO extends DayPlanDTO{
	
	private String city_name;
	private String city_dailyWeek;
	
	/*public DayPlanReDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public DayPlanReDTO(Date city_date) {
		// TODO Auto-generated constructor stub
		this.setDaily_date(city_date);
		get_dailyWeek(city_date);
	}*/
	
	public void get_dailyWeek(Date city_date){
		 Calendar cal = Calendar.getInstance() ;
		    cal.setTime(city_date);
		     
		    int dayNum = cal.get(Calendar.DAY_OF_WEEK) ;
		     
		     
		     
		    switch(dayNum){
		        case 1:
		           this.city_dailyWeek = "일요일";
		            break ;
		        case 2:
		        	this.city_dailyWeek = "월요일";
		            break ;
		        case 3:
		        	this.city_dailyWeek = "화요일";
		            break ;
		        case 4:
		        	this.city_dailyWeek = "수요일";
		            break ;
		        case 5:
		        	this.city_dailyWeek = "목요일";
		            break ;
		        case 6:
		        	this.city_dailyWeek = "금요일";
		            break ;
		        case 7:
		        	this.city_dailyWeek = "토요일";
		            break ;
		             
		    }
	}
	
	
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getCity_dailyWeek() {
		return city_dailyWeek;
	}
	public void setCity_dailyWeek(String city_dailyWeek) {
		this.city_dailyWeek = city_dailyWeek;
	}
	
	
}
