package com.plan.daySpot;

public class DaySpotDTO {
	private int plan_no;
	private int no;
	private int dp_no;
	private int spot_no;
	private String spot_name;
	private double spot_xlocation;
	private double spot_ylocation;
	
	
	
	public int getSpot_no() {
		return spot_no;
	}
	public void setSpot_no(int spot_no) {
		this.spot_no = spot_no;
	}
	public double getSpot_xlocation() {
		return spot_xlocation;
	}
	public void setSpot_xlocation(double spot_xlocation) {
		this.spot_xlocation = spot_xlocation;
	}
	public double getSpot_ylocation() {
		return spot_ylocation;
	}
	public void setSpot_ylocation(double spot_ylocation) {
		this.spot_ylocation = spot_ylocation;
	}
	public int getPlan_no() {
		return plan_no;
	}
	public void setPlan_no(int plan_no) {
		this.plan_no = plan_no;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getDp_no() {
		return dp_no;
	}
	public void setDp_no(int dp_no) {
		this.dp_no = dp_no;
	}
	public String getSpot_name() {
		return spot_name;
	}
	public void setSpot_name(String spot_name) {
		this.spot_name = spot_name;
	}
	
	
}
