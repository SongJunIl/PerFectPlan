package com.plan.spot;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


@Service
public class SpotServiceImpl implements SpotService {

	
	@Inject
	private SpotDAO spotDAO;
	
	
	@Override
	public void list(int curPage, Model model, String type) {
		try {
			int totalList = spotDAO.totlaList();
			MakePage mp = new MakePage(curPage,totalList);
			mp.setType(type);
			model.addAttribute("page",mp);
			model.addAttribute("list",spotDAO.list(mp));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void spotWrite(SpotDTO spotDTO) {
		try {
			spotDAO.spotWrite(spotDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void spotView(int num, Model model) {
		try {
			model.addAttribute(spotDAO.spotView(num));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void search(SpotSearchType spotSearchType, Model model) {
		try {
			model.addAttribute("list",spotDAO.search(spotSearchType));
			MakePage mp = new MakePage(1,spotDAO.search(spotSearchType).size());
			model.addAttribute("page",mp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void spotUpdate(SpotDTO spotDTO) {
		// TODO Auto-generated method stub
		try {
			spotDAO.spotUpdate(spotDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public void spotDelect(int num) {
		// TODO Auto-generated method stub
		try {
			spotDAO.spotDelect(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public void spotReply(ReplyDTO replyDTO) {
		try {
			spotDAO.spotReply(replyDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void spotReplyView(int num, Model model) {
		try {
			model.addAttribute("spotReply",spotDAO.spotReplyView(num));
			HashMap<String ,Integer> icon = new HashMap<>();
			//게이지 평균 
			int totalicon = spotDAO.totalicon(num);
			int badicon = spotDAO.badicon(num);
			int sosoicon = spotDAO.sosoicon(num);
			int goodicon = spotDAO.goodicon(num);
			
			//게이지 평균
			badicon=(badicon*100)/totalicon;
			sosoicon=(sosoicon*100)/totalicon;
			goodicon=(goodicon*100)/totalicon;
			
			//게이지 평균
			icon.put("badicon", badicon);
			icon.put("sosoicon", sosoicon);
			icon.put("goodicon", goodicon);
			
			model.addAttribute("icon",icon);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public void spotReplyDelete(int num) {
		try {
			spotDAO.spotReplyDelete(num);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public void spotReplyUpdate(ReplyDTO replyDTO) {
		// TODO Auto-generated method stub
		try {
			spotDAO.spotReplyUpdate(replyDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public void category(int curPage,Model model,String type,String category) {
		
		try {
			int totalList = spotDAO.totlaList();
			MakePage mp = new MakePage(curPage,totalList);
			mp.setType(type);
			model.addAttribute("page",mp);
			mp.setCategory(category);
	
		if(category.equals("1")){
		
			model.addAttribute("list",spotDAO.all_category(mp));
		}else if(category.equals("2")){
		
			model.addAttribute("list",spotDAO.spot_category(mp));
		}else{
			
			model.addAttribute("list",spotDAO.landmark_category(mp));
		}
	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
