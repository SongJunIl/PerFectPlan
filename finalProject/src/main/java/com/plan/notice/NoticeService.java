package com.plan.notice;

import org.springframework.ui.Model;

public interface NoticeService {

	public void notice_write(NoticeDTO ndto);
	public void notice_delete(int notice_no);
	public void notice_list(int curPage,Model model);
	public void notice_view(int notice_no,Model model);
	public int notice_update(NoticeDTO ndto);
	
}
