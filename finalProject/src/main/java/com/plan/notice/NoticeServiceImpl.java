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
	public void notice_view(int notice_no,Model model) {
			try {
			NoticeDTO nodto=ndao.notice_view(notice_no);
				model.addAttribute("notice_view",nodto);
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	@Override
	public void notice_list(int curPage,Model model) {
		int totallist = ndao.getTotalList();
		PageMaker pm = new PageMaker(curPage, totallist);	
		
		try {
			ndao.notcie_list(pm);
			model.addAttribute("notice_list", ndao.notcie_list(pm));
			model.addAttribute("page", pm);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void notice_delete(int notice_no) {
		try {
			ndao.notice_delete(notice_no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public int notice_update(NoticeDTO ndto) {
		int result=0;
		try {
			result=ndao.notice_update(ndto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
}
