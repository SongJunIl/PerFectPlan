package com.plan.plan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
import com.plan.dayPlan.DayPlanDTO;
import com.plan.dayPlan.DayPlanReDTO;
import com.plan.daySpot.DaySpotDTO;
import com.plan.spot.SpotDTO;
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
	
	//=======dayPlanReDTO 데이터 값 리스트로 받기==============================================================================
	@Override
	public List<DayPlanReDTO> s_get_dayPalnReDTO(DayPlanReDTO dayPlanReDTO) {
		// TODO Auto-generated method stub
		try {
			return pdao.get_dayPalnReDTO(dayPlanReDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	//=======planDB에서 plan_no값인 값 하나 빼오기=========================================================
	@Override
	public PlanDTO s_get_planDTOone(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		try {
			return pdao.get_planDTOone(planDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	//=======spotList 얻어오기===================================================================
	@Override
	public List<SpotDTO> s_get_pspotList(int city_no) {
		// TODO Auto-generated method stub
		try {
			return pdao.get_pspotList(city_no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	//=======planDTO 최종 및 임시 저장==============================================================
	@Override
	public void s_plan_save_update(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		try {
			pdao.plan_save_update(planDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//=======dayPlanDTO 없데이트 시키기=============================================================
	@Override
	public void s_get_daily_update(DayPlanDTO dayPlanDTO) {
		// TODO Auto-generated method stub
		try {
			pdao.get_daily_update(dayPlanDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//=======dayspotDTO insert 시키기=============================================================
	@Override
	public void s_daySpot_insert(DaySpotDTO daySpotDTO) {
		// TODO Auto-generated method stub
		try {
			pdao.daySpot_insert(daySpotDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
