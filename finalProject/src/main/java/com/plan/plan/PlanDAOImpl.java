package com.plan.plan;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
import com.plan.dayPlan.DayPlanDTO;
import com.plan.dayPlan.DayPlanReDTO;
import com.plan.spot.SpotDTO;
@Repository
public class PlanDAOImpl implements PlanDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private String namespace="PlanMapper.";
	
	@Override
	public List<BigDTO> bigCity_list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"bigCity_list");
		
	}
	
	@Override
	public List<CityDTO> gang_list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"gang_list");
	}
	
	@Override
	public List<CityDTO> gyeong_list() {
		// TODO Auto-generated method stub
		return  sqlSession.selectList(namespace+"gyeong_list");
	}
	
	@Override
	public List<CityDTO> gyeongsangS_list() {
		// TODO Auto-generated method stub
		return  sqlSession.selectList(namespace+"gyeongsangS_list");
	}
	
	@Override
	public List<CityDTO> gyeongsangN_list() {
		// TODO Auto-generated method stub
		return  sqlSession.selectList(namespace+"gyeongsangN_list");
	}
	
	@Override
	public List<CityDTO> jeollaS_list() {
		// TODO Auto-generated method stub
		return  sqlSession.selectList(namespace+"jeollaS_list");
	}
	
	@Override
	public List<CityDTO> jeollaN_list() {
		// TODO Auto-generated method stub
		return  sqlSession.selectList(namespace+"jeollaN_list");
	}
	
	@Override
	public List<CityDTO> chungcheongS_list() {
		// TODO Auto-generated method stub
		return  sqlSession.selectList(namespace+"chungcheongS_list");
	}
	
	@Override
	public List<CityDTO> chungcheongN_list() {
		// TODO Auto-generated method stub
		return  sqlSession.selectList(namespace+"chungcheongN_list");
	}
	
	//=====plan DB 넣기========================================================
	@Override
	public void plan_insert(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+"plan_insert", planDTO);
		
	}
	//======plan NO 가져오기==============================================================
	@Override
	public int get_plan_no() throws Exception {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne(namespace+"get_plan_no");
	}
	//=======dayPlan DB에 반복해서 값넣기================================================================
	@Override
	public void dayPlan_insert(DayPlanDTO dayPlanDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+"dayPlan_insert", dayPlanDTO);
	}
	//=======dayPlanReDTO 데이터 값 리스트로 받기==============================================================================
	@Override
	public List<DayPlanReDTO> get_dayPalnReDTO(DayPlanReDTO dayPlanReDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"get_dayPalnReDTO", dayPlanReDTO);
	}
	//=======planDB에서 plan_no값인 값 하나 빼오기=========================================================
	@Override
	public PlanDTO get_planDTOone(PlanDTO planDTO) throws Exception {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne(namespace+"get_planDTOone", planDTO);
	}
	
	//=======spotList 얻어오기===================================================================
	@Override
	public List<SpotDTO> get_pspotList(int city_no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"get_pspotList", city_no);
	}
}
