package com.plan.plan;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class PlanDTO {
	private int plan_no;
	private String id;
	private String plan_name;
	private Date s_date;
	private Date f_date;
	private String city_name;
	private int thema;
	private String season;
	private int counts;
	private int state;
	
	public PlanDTO() {
		// TODO Auto-generated constructor stub
	}
	public PlanDTO(Date s_date,int days) {
		// TODO Auto-generated constructor stub
		this.s_date = s_date;
		set_F_date(days);
	}
	
	public void set_F_date(int days){
		Calendar cal = new GregorianCalendar();
		cal.setTime(this.s_date);
		cal.add(Calendar.DAY_OF_MONTH, days-1);
		
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
	    this.f_date = Date.valueOf(fm.format(cal.getTime()));
	    System.out.println( this.f_date);
	}
	
	
	
	
	public int getPlan_no() {
		return plan_no;
	}
	public void setPlan_no(int plan_no) {
		this.plan_no = plan_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPlan_name() {
		return plan_name;
	}
	public void setPlan_name(String plan_name) {
		this.plan_name = plan_name;
	}
	public Date getS_date() {
		return s_date;
	}
	public void setS_date(Date s_date) {
		this.s_date = s_date;
	}
	public Date getF_date() {
		return f_date;
	}
	public void setF_date(Date f_date) {
		this.f_date = f_date;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public int getThema() {
		return thema;
	}
	public void setThema(int thema) {
		this.thema = thema;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	
}
