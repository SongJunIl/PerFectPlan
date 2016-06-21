package com.plan.dayPlan;

import java.sql.Date;

public class DayPlanDTO {
	private int daily_no;
	private int plan_no;
	private Date daily_date;
	private int city_no;
	private double daily_xlocation;
	private double daily_ylocation;
	
	
	public int getDaily_no() {
		return daily_no;
	}
	public void setDaily_no(int daily_no) {
		this.daily_no = daily_no;
	}
	public Date getDaily_date() {
		return daily_date;
	}
	public void setDaily_date(Date daily_date) {
		this.daily_date = daily_date;
	}
	public int getCity_no() {
		return city_no;
	}
	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}
	public int getPlan_no() {
		return plan_no;
	}
	public void setPlan_no(int plan_no) {
		this.plan_no = plan_no;
	}
	public double getDaily_xlocation() {
		return daily_xlocation;
	}
	public void setDaily_xlocation(double daily_xlocation) {
		this.daily_xlocation = daily_xlocation;
	}
	public double getDaily_ylocation() {
		return daily_ylocation;
	}
	public void setDaily_ylocation(double daily_ylocation) {
		this.daily_ylocation = daily_ylocation;
	}

	
	
}
