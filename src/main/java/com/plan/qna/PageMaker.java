package com.plan.qna;

public class PageMaker {
	private String id;
	private String type;
	private int startNum;
	private int lastNum;
	private int curBlock;
	private int totalBlock;
	private int startRow;
	private int lastRow;
	private int perPage;
	private int perBlock;
	public PageMaker() {
		// TODO Auto-generated constructor stub
	}
	public PageMaker(int curPage, int totalList) {
		// TODO Auto-generated constructor stub
		perPage=3;
		perBlock=1;
		pageMake(curPage, totalList);
	}
	
	public void pageMake(int curPage, int totalList){
		this.startRow = (curPage-1)*perPage+1;
		this.lastRow = curPage*perPage;
		
		int totalPage;
		if(totalList%perPage==0){
			totalPage=totalList/perPage;
		}else{
			totalPage=totalList/perPage+1;
		}
		
		if(totalPage%perBlock==0){
			totalBlock=totalPage/perBlock;
		}else{
			totalBlock=totalPage/perBlock+1;
		}
		
		if(curPage%perBlock==0){
			curBlock = curPage/perBlock;
		}else{
			curBlock = curPage/perBlock+1;
		}
		
		startNum = (curBlock-1)*perBlock+1;
		lastNum = curBlock*perBlock;
		
		if(curBlock==totalBlock){
			lastNum=totalPage;
		}
		
		
	}
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getPerBlock() {
		return perBlock;
	}
	public void setPerBlock(int perBlock) {
		this.perBlock = perBlock;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public int getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}
	public int getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}
	
	
}
