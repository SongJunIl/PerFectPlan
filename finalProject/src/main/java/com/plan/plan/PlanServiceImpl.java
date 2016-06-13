package com.plan.plan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
@Service
public class PlanServiceImpl implements PlanService {
	@Autowired
	private PlanDAO pdao;
	
	@Override
	public List<BigDTO> s_bigCity_list() {
		return pdao.bigCity_list();
	}
	
	@Override
	public List<CityDTO> s_gang_list() {
		// TODO Auto-generated method stub
		return pdao.gang_list();
		
	}
	
	@Override
	public List<CityDTO> s_gyeong_list() {
		// TODO Auto-generated method stub
		return pdao.gyeong_list();
		
	}
	
	@Override
	public List<CityDTO> s_gyeongsangS_list() {
		// TODO Auto-generated method stub
		return pdao.gyeongsangS_list();
		
	}
	
	@Override
	public List<CityDTO> s_gyeongsangN_list() {
		// TODO Auto-generated method stub
		return pdao.gyeongsangN_list();
		
	}
	
	@Override
	public List<CityDTO> s_jeollaS_list() {
		// TODO Auto-generated method stub
		return pdao.jeollaS_list();
	
	}
	
	@Override
	public List<CityDTO> s_jeollaN_list() {
		// TODO Auto-generated method stub
		return pdao.jeollaN_list();
		
	}
	
	@Override
	public List<CityDTO> s_chungcheongS_list() {
		// TODO Auto-generated method stub
		return pdao.chungcheongS_list();
		
	}
	
	@Override
	public List<CityDTO> s_chungcheongN_list() {
		// TODO Auto-generated method stub
		return pdao.chungcheongN_list();
		
	}
	
	//=====plan DB insert=====================================================================
/*	@Override
	public void s_plan_insert(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		try {
			pdao.plan_insert(planDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
}
