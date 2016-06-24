package com.plan.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO ndao;
	
	@Override
	public void notice_write(NoticeDTO ndto) {
			try {
				ndao.notice_write(ndto);
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	@Override
	public void notice_view(int notice_no) {
			try {
				ndao.notice_view(notice_no);
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	@Override
	public void notice_list(NoticeDTO ndto) {
			
		
	}
	
	@Override
	public void notice_delete(int notice_no) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public int notice_update(NoticeDTO ndto) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
