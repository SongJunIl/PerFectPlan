package com.plan.city;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.plan.plan.PlanDTO;

@Repository
public class CityDAOImpl implements CityDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	private static final String namespace="CityMapper.";
	
	@Override
	public List<CityDTO> city(){
		List<CityDTO> ar = sqlSession.selectList(namespace+"city");
		return ar;
	}
	
	@Override
	public void cityWrite(CityDTO cityDTO)throws Exception{
		int num = sqlSession.insert(namespace+"cityWrite", cityDTO);
	}
	
	@Override
	public CityDTO cityView(int no) throws Exception {
		return sqlSession.selectOne(namespace+"cityView", no);
	}
	
	@Override
	public List<PopularSpotDTO> popular_spot(int city_no) throws Exception{
		List<PopularSpotDTO> ar =sqlSession.selectList(namespace+"popular_spot", city_no);
		return ar;
	}
	
	@Override
	public List<PlanDTO> popular_plan(int city_no) throws Exception{
		List<PlanDTO> ar = sqlSession.selectList(namespace+"popular_plan", city_no);
		return ar;
	}

	@Override
	public List<City_ReDTO> reply_city(int city_no) throws Exception {
		List<City_ReDTO> ar = sqlSession.selectList(namespace+"reply_city", city_no);
		return ar;
	}

	@Override
	public List<CityDTO> cityList()throws Exception{
		List<CityDTO> ar = sqlSession.selectList(namespace+"cityList");
		return ar;
	}
	
	@Override
	public List<CityDTO> searchCity(String search) throws Exception {
		List<CityDTO> ar = sqlSession.selectList(namespace+"searchCity",search);
		return ar;
	}
	
	@Override
	public List<CityDTO> searchCitySpot(String search) throws Exception {
		List<CityDTO> ar = sqlSession.selectList(namespace+"searchCitySpot", search);
		return ar;
	}
	@Override
	public List<CityDTO> searchCityReply(String search) throws Exception {
		List<CityDTO> ar = sqlSession.selectList(namespace+"searchCityReply", search);
		return ar;
	}
	/*	@Override
	public int totalList() throws Exception{
		return sqlSession.selectOne(namespace+"totalList");
	}*/
}
