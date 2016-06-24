package com.plan.spot;

public class MakePage {
	private String type;
	private int startRow;
	private int lastRow;
	private int startNum;
	private int lastNum;
	private int totalBlock;
	private int curBlock;
	private int perPage;
	private int perBlock;
	private String category;
	
	public MakePage() {	}
	public MakePage(int curPage, int totalList){
		perPage = 10;
		perBlock = 10;
		setMember(curPage, totalList);
	}
	
	private void setMember(int curPage, int totalList){
		this.startRow = (curPage - 1) * perPage + 1;
		this.lastRow = curPage * perPage;
		int totalPage = sum(totalList, perPage);
		totalBlock = sum(totalPage,perBlock);
		curBlock = sum(curPage, perBlock);
		startNum = (curBlock - 1) * perBlock + 1;
		if(curBlock == totalBlock){
			lastNum = totalPage;
		}else{
			lastNum = curBlock * perBlock;
		}
	}
	
	private int sum(int num1, int num2){
		int num = 0;
		if(num1 % num2 == 0){
			num = num1 / num2;
		}else{
			num = num1 / num2 +1;
		}
		return num;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPerBlock() {
		return perBlock;
	}
	public void setPerBlock(int perBlock) {
		this.perBlock = perBlock;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getLastRow() {
		return lastRow;
	}
	public void setLastRow(int lastRow) {
		this.lastRow = lastRow;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getLastNum() {
		return lastNum;
	}
	public void setLastNum(int lastNum) {
		this.lastNum = lastNum;
	}
	public int getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}
	public int getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}
