package com.plan.spot;

public class SpotDTO {
	private int num;
	private String spot_name;
	private String big_name;
	private String city_no;
	private String contents;
	private double spot_xlocation;
	private double spot_ylocation;
	private int thema;
	private int counts;
	private String spot_img;
	private int ref;
	
	public String getCity_no() {
		return city_no;
	}
	public void setCity_no(String city_no) {
		this.city_no = city_no;
	}

	public String getSpot_img() {
		return spot_img;
	}
	public void setSpot_img(String spot_img) {
		this.spot_img = spot_img;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getBig_name() {
		return big_name;
	}
	public void setBig_name(String big_name) {
		this.big_name = big_name;
	}
	public String getSpot_name() {
		return spot_name;
	}
	public void setSpot_name(String spot_name) {
		this.spot_name = spot_name;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
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
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	public int getThema() {
		return thema;
	}
	public void setThema(int thema) {
		this.thema = thema;
	}
	
	
}
