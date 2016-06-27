package com.plan.plan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
import com.plan.dayPlan.DayPlanDTO;
import com.plan.dayPlan.DayPlanReDTO;
import com.plan.daySpot.DaySpotDTO;
import com.plan.daySpot.DaySpotReDTO;
import com.plan.member.MemberDTO;
import com.plan.planRe.PlanReDTO;
import com.plan.scrap.ScrapDTO;
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
	//=======글쓴이 검색하기===========================================================================
	@Override
	public MemberDTO s_writer_search(String id) {
		// TODO Auto-generated method stub
		try {
			return pdao.writer_search(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	//=======plna_no로 일정관련 DB 가져오기=============================================================

	@Override
	public List<DayPlanReDTO> s_daily_plan_search(int plan_no) {
		// TODO Auto-generated method stub
		try {
			return pdao.daily_plan_search(plan_no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<DaySpotReDTO> s_daily_spot_search(int plan_no, int daily_no) {
		// TODO Auto-generated method stub
		try {
			return pdao.daily_spot_search(plan_no,daily_no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public PlanDTO s_plan_search(int plan_no) {
		// TODO Auto-generated method stub
		try {
			return pdao.plan_search(plan_no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	//==========plan 댓글 쓰기 ======================================================================
	@Override
	public PlanReDTO s_plan_reply_write(PlanReDTO planReDTO) {
		// TODO Auto-generated method stub
		try {
			return pdao.plan_reply_write(planReDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	//=========plan reply 리스트 읽어오기=============================================================
	@Override
	public List<PlanReDTO> s_plan_reply_list(int plan_no) {
		// TODO Auto-generated method stub
		try {
			return pdao.plan_reply_list(plan_no);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	//=========plan reply 리스트 지우기=============================================================

	@Override
	public List<PlanReDTO> s_plan_reply_del(PlanReDTO planReDTO) {
		// TODO Auto-generated method stub
		try {
			return pdao.plan_reply_del(planReDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	//=========plan f_date 업데이트==================================================================

	@Override
	public void s_plan_fdate_update(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		try {
			pdao.plan_fdate_update(planDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//=========daily_plan_del====================================================================
	
	@Override
	public List<DayPlanReDTO> s_day_plan_del(DayPlanReDTO dayPlanReDTO) {
		// TODO Auto-generated method stub
		try {
			return pdao.day_plan_del(dayPlanReDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	//===========plan_spot plan_no이면 싹다 지우기=====================================================
	@Override
	public void s_plan_spot_del(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		try {
			pdao.plan_spot_del(planDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//==========plan_list 뽑아오기===================================================================
	@Override
	public List<NewPlanDTO> s_plan_list_select() {
		// TODO Auto-generated method stub
		try {
			return pdao.plan_list_select();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	//========spot_counts get하기=================================================================
	@Override
	public int s_spot_counts(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		try {
			return pdao.spot_counts(planDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	//========clip_counts get하기=================================================================
	@Override
	public int s_clip_counts(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		try {
			return pdao.clip_counts(planDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	//========get_city_names get하기=================================================================
	@Override
	public List<String> s_get_city_names(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		try {
			return pdao.get_city_names(planDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	//========city_list_all get하기=================================================================
	@Override
	public List<CityDTO> s_city_list_all() {
		// TODO Auto-generated method stub
		try {
			return pdao.city_list_all();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	//========plan_list_ajax get하기=================================================================
	@Override
	public List<NewPlanDTO> s_plan_list_ajax(NewPlanDTO newPlanDTO) {
		// TODO Auto-generated method stub
		try {
			return pdao.plan_list_ajax(newPlanDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	//========plan_jim insert하기===========================================================================
	@Override
	public void s_plan_jim_insert(ScrapDTO scrapDTO) {
		// TODO Auto-generated method stub
		try {
			pdao.plan_jim_insert(scrapDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//========plan_jim select하기===========================================================================
	@Override
	public ScrapDTO s_plan_jim_select(ScrapDTO scrapDTO) {
		// TODO Auto-generated method stub
		try {
			return pdao.plan_jim_select(scrapDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	//========plan_jim delete하기===========================================================================
	@Override
	public void s_plan_jim_delete(ScrapDTO scrapDTO) {
		// TODO Auto-generated method stub
		try {
			pdao.plan_jim_delete(scrapDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
