package com.plan.notice;

public interface NoticeService {

	public void notice_write(NoticeDTO ndto);
	public void notice_delete(int notice_no);
	public void notice_list(NoticeDTO ndto);
	public void notice_view(int notice_no);
	public int notice_update(NoticeDTO ndto);
	
}
