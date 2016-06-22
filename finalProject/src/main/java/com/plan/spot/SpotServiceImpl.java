package com.plan.spot;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestParam;


@Service
public class SpotServiceImpl implements SpotService {

	
	@Inject
	private SpotDAO spotDAO;
	
	
	@Override
	public void list(int curPage, Model model, String type) {
		List<SpotDTO> ar = null;
		ArrayList<Integer> ar2 = new ArrayList<>() ;
		HashMap<String ,Integer> clib = new HashMap<>();
		try {
			int totalList = spotDAO.totlaList();
			MakePage mp = new MakePage(curPage,totalList);
			mp.setType(type);
			model.addAttribute("page",mp);
			ar =spotDAO.list(mp);
			model.addAttribute("list",ar);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(int i=0; i<ar.size(); i++){
			try {
			ar2.add(spotDAO.crilbCount(ar.get(i).getSpot_name()));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		model.addAttribute("clibcount",ar2);
		
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
	public void spotReplyView(@RequestParam int num, Model model,String icon) {
		try {
			model.addAttribute("spotReply",spotDAO.spotReplyView(num));
			HashMap<String ,Integer> icon3 = new HashMap<>();
			HashMap<String, Double> icon2 = new HashMap<>();
	 
	
			//게이지 평균 
			int totalicon = spotDAO.totalicon(num);
			int badicon = spotDAO.badicon(num);
			int sosoicon = spotDAO.sosoicon(num);
			int goodicon = spotDAO.goodicon(num);
			
			
			
			//10점평균
			double totalicon2 = spotDAO.totalicon(num);
			totalicon2=((badicon*3)+(sosoicon*5)+(goodicon*10))/totalicon2;
			totalicon2=(int)(totalicon2*10)/10.0;
			
			//게이지 평균
			badicon=((badicon*200)/totalicon);
			sosoicon=((sosoicon*200)/totalicon);
			goodicon=((goodicon*200)/totalicon);
			
			
			//게이지 평균
			icon3.put("badicon", badicon);
			icon3.put("sosoicon", sosoicon);
			icon3.put("goodicon", goodicon);
			icon3.put("totalicon", totalicon);
		
	
			//10점평균
			icon2.put("totalicon2", totalicon2);
			
			model.addAttribute("icon",icon3);
			model.addAttribute("icon2",icon2);
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
	@Override
	public void spotReplyUpdateForm(Model model, int num, int ref) {
		model.addAttribute("num",num);
		model.addAttribute("ref",ref);
		
	}
	
	@Override
	public void crilbCount(Model model,int num) {
		HashMap<String ,Integer> clib = new HashMap<>();
		
		try {
			SpotDTO spotDTO = spotDAO.spotView(num);
			int result = spotDAO.crilbCount(spotDTO.getSpot_name());
			
			clib.put("clib", result);
			
			model.addAttribute("clib",clib);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
}
