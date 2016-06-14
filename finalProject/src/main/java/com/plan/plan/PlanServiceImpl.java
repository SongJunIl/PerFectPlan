package com.plan.plan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
import com.plan.dayPlan.DayPlanDTO;
@Service
public class PlanServiceImpl implements PlanService {
	@Autowired
	private PlanDAO pdao;
	
	@Override
	public List<BigDTO> s_bigCity_list() {
		
		
			try {
				return pdao.bigCity_list();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
	}
	
	@Override
	public List<CityDTO> s_gang_list() {
		// TODO Auto-generated method stub
		
			try {
				return pdao.gang_list();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
	}
	
	@Override
	public List<CityDTO> s_gyeong_list() {
		// TODO Auto-generated method stub
		
			try {
				return pdao.gyeong_list();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
	}
	
	@Override
	public List<CityDTO> s_gyeongsangS_list() {
		// TODO Auto-generated method stub
		
			try {
				return pdao.gyeongsangS_list();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
	}
	
	@Override
	public List<CityDTO> s_gyeongsangN_list() {
		// TODO Auto-generated method stub
		
			try {
				return pdao.gyeongsangN_list();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
	}
	
	@Override
	public List<CityDTO> s_jeollaS_list() {
		// TODO Auto-generated method stub
		
			try {
				return pdao.jeollaS_list();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
	}
	
	@Override
	public List<CityDTO> s_jeollaN_list() {
		// TODO Auto-generated method stub
		
			try {
				return pdao.jeollaN_list();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
	}
	
	@Override
	public List<CityDTO> s_chungcheongS_list() {
		// TODO Auto-generated method stub
		
			try {
				return pdao.chungcheongS_list();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
	}
	
	@Override
	public List<CityDTO> s_chungcheongN_list() {
		// TODO Auto-generated method stub
		
			try {
				return pdao.chungcheongN_list();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
	}
	
	//=====plan DB insert=====================================================================
	@Override
	public void s_plan_insert(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		
			try {
				pdao.plan_insert(planDTO);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	
	//======plan NO get========================================================================
	@Override
	public int s_plan_no() {
		// TODO Auto-generated method stub
		try {
			return pdao.get_plan_no();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	
	//======dayPlan DB에 반복 값넣기==========================================================================
	@Override
	public void s_dayPlan_insert(DayPlanDTO dayPlanDTO) {
		// TODO Auto-generated method stub
		try {
			pdao.dayPlan_insert(dayPlanDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
