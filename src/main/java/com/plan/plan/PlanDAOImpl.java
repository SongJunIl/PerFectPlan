package com.plan.plan;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
		System.out.println(dayPlanDTO.getCity_no());
		System.out.println(dayPlanDTO.getDaily_no());
		System.out.println(dayPlanDTO.getDaily_xlocation());
		System.out.println(dayPlanDTO.getDaily_ylocation());
		System.out.println(dayPlanDTO.getPlan_no());
		System.out.println(dayPlanDTO.getDaily_date());
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
	
	//=======planDTO 최종 및 임시 저장==============================================================
	@Override
	public void plan_save_update(PlanDTO planDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+"plan_save_update", planDTO);
	}
	
	
	//=======dayPlanDTO 없데이트 시키기=============================================================
	@Override
	public void get_daily_update(DayPlanDTO dayPlanDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+"get_daily_update", dayPlanDTO);
	}
	
	//=======dayspotDTO insert 시키기=============================================================
	@Override
	public void daySpot_insert(DaySpotDTO daySpotDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+"daySpot_insert", daySpotDTO);
	}
	
	//=======글쓴이 검색하기=======================================================================
	@Override
	public MemberDTO writer_search(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+"writer_search", id);
	}
	//=======plna_no로 일정관련 DB 가져오기=============================================================
	@Override
	public List<DayPlanReDTO> daily_plan_search(int plan_no) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+"plan_view_counts_update", plan_no);
		return sqlSession.selectList(namespace+"daily_plan_search", plan_no);
	}
	@Override
	public List<DaySpotReDTO> daily_spot_search(int plan_no,int daily_no) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Integer> hs = new HashMap<>();
		hs.put("plan_no", plan_no);
		hs.put("daily_no", daily_no);
		return sqlSession.selectList(namespace+"daily_spot_search", hs);
	}
	@Override
	public PlanDTO plan_search(int plan_no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+"plan_search", plan_no);
	}
	
	//==========plan 댓글 쓰기 ======================================================================
	@Override
	public PlanReDTO plan_reply_write(PlanReDTO planReDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+"plan_reply_write",planReDTO);
		int no = sqlSession.selectOne(namespace+"plan_reply_maxNo", planReDTO);
		return sqlSession.selectOne(namespace+"plan_reply_write_result", no);
	}
	//=========plan reply 리스트 읽어오기=============================================================
	@Override
	public List<PlanReDTO> plan_reply_list(int plan_no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"plan_reply_list", plan_no);
	}
	
	//=========plan reply 리스트 지우기=============================================================
	@Override
	public List<PlanReDTO> plan_reply_del(PlanReDTO planReDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+"plan_reply_del", planReDTO);
		int plan_no = planReDTO.getP_no();
		return sqlSession.selectList(namespace+"plan_reply_list", plan_no);
	}
	
	//=========plan f_date 업데이트==================================================================
	@Override
	public void plan_fdate_update(PlanDTO planDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+"plan_fdate_update", planDTO);
	}
	//=========daily_plan_del====================================================================
	@Override
	public List<DayPlanReDTO> day_plan_del(DayPlanReDTO dayPlanReDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+"day_plan_del", dayPlanReDTO);
		HashMap<String, Integer> hs = new HashMap<>();
		hs.put("plan_no", dayPlanReDTO.getPlan_no());
		hs.put("daily_no", dayPlanReDTO.getDaily_no());
		if(sqlSession.selectList(namespace+"daily_spot_search", hs)!=null){
			sqlSession.delete(namespace+"day_spot_del", dayPlanReDTO);
		};
		return sqlSession.selectList(namespace+"daily_plan_search", dayPlanReDTO);
	}
	//===========plan_spot plan_no이면 싹다 지우기=====================================================
	@Override
	public void plan_spot_del(PlanDTO planDTO) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println(sqlSession.delete(namespace+"day_spot_del2", planDTO));
	}
	//==========plan_list 뽑아오기===================================================================
	@Override
	public List<NewPlanDTO> plan_list_select(PlanMakePage planMakePage) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"plan_list_select", planMakePage);
	}
	
	//========spot_counts get하기=================================================================
	@Override
	public int spot_counts(PlanDTO planDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+"spot_counts", planDTO);
	}
	
	//========clip_counts get하기=================================================================
	@Override
	public int clip_counts(PlanDTO planDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+"clip_counts",planDTO);
	}
	
	//========get_city_names get하기=================================================================
	@Override
	public List<String> get_city_names(PlanDTO planDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"get_city_names", planDTO);
	}
	
	//========city_list_all get하기=================================================================
	@Override
	public List<CityDTO> city_list_all() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"city_list_all");
	}
	//========plan_list_ajax get하기=================================================================
	@Override
	public List<NewPlanDTO> plan_list_ajax(NewPlanDTO newPlanDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"plan_list_ajax", newPlanDTO);
	}
	//========plan_jim insert하기===========================================================================
	@Override
	public void plan_jim_insert(ScrapDTO scrapDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+"plan_jim_insert", scrapDTO);
	}
	//========plan_jim select하기===========================================================================
	@Override
	public ScrapDTO plan_jim_select(ScrapDTO scrapDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+"plan_jim_select", scrapDTO);
	}
	
	//========plan_jim delete하기===========================================================================

	@Override
	public void plan_jim_delete(ScrapDTO scrapDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+"plan_jim_delete", scrapDTO);
	}
	
	//========plan_list_counts============================================================================
	@Override
	public int plan_list_counts() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+"plan_list_counts");
	}
	
	//========select_complite_plan=======================================================================
			@Override
	public List<NewPlanDTO> select_complite_plan(NewPlanDTO newPlanDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"select_complite_plan", newPlanDTO);
	}
	//========select_incomplite_plan=======================================================================
		@Override
	public List<NewPlanDTO> select_incomplite_plan(NewPlanDTO newPlanDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+"select_incomplite_plan", newPlanDTO);
	}
	//========del_my_plan=================================================================================
	@Override
	public void del_my_plan(PlanDTO planDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+"del_my_plan", planDTO);
	}
	
}
