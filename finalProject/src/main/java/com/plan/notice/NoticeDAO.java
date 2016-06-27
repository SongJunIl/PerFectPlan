package com.plan.notice;

import java.util.List;

import com.plan.qna.PageMaker;

public interface NoticeDAO {

	public void notice_write(NoticeDTO ndto)throws Exception;
	
	public int notice_update(NoticeDTO ndto)throws Exception;
	
	public void notice_delete(int notice_no)throws Exception;
	
	public List<NoticeDTO> notcie_list(PageMaker pm)throws Exception;
	
	public NoticeDTO notice_view(int notice_no)throws Exception;

	public int getTotalList();
}
