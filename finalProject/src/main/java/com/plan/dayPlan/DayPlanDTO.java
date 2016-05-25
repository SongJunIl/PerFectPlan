package com.plan.dayPlan;

import java.sql.Date;

public class DayPlanDTO {
	private int db_no;
	private int plan_no;
	private Date reg_date;
	private String id;
	public int getDb_no() {
		return db_no;
	}
	public void setDb_no(int db_no) {
		this.db_no = db_no;
	}
	public int getPlan_no() {
		return plan_no;
	}
	public void setPlan_no(int plan_no) {
		this.plan_no = plan_no;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
}
