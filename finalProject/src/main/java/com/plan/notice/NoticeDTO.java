package com.plan.notice;

import java.sql.Date;

public class NoticeDTO {
	private int com_no;
	private String title;
	private String contents;
	private Date reg_date;
	public int getNo() {
		return com_no;
	}
	public void setNo(int com_no) {
		this.com_no = com_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
}
