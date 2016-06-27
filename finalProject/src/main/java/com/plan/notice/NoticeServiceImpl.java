package com.plan.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.plan.qna.PageMaker;

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
	public void notice_list(int curPage,Model model) {
		PageMaker pm = new PageMaker();	
		try {
			ndao.notcie_list(pm);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
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
