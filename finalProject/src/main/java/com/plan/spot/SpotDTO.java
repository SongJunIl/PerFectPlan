package com.plan.spot;


public class SpotDTO {
	private int num;
	private String big_name;
	private String spot_img;
	private String city_name;
	private String spot_name;
	private String contents;
	private String spot_address;
	private double spot_xlocation;
	private double spot_ylocation;
	private int counts;
	private int thema;
	private int ref;

	public String getSpot_address() {
		return spot_address;
	}
	public void setSpot_address(String spot_address) {
		this.spot_address = spot_address;
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
	public String getSpot_img() {
		return spot_img;
	}
	public void setSpot_img(String spot_img) {
		this.spot_img = spot_img;
	}
	public String getBig_name() {
		return big_name;
	}
	public void setBig_name(String big_name) {
		this.big_name = big_name;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
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
