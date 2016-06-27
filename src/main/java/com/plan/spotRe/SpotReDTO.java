package com.plan.spotRe;

import java.sql.Date;

public class SpotReDTO {
	private int no;
	private String spot_ame;
	private String id;
	private String contents;
	private int satisfy;
	private Date reg_date;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSpot_ame() {
		return spot_ame;
	}
	public void setSpot_ame(String spot_ame) {
		this.spot_ame = spot_ame;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getSatisfy() {
		return satisfy;
	}
	public void setSatisfy(int satisfy) {
		this.satisfy = satisfy;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
}
