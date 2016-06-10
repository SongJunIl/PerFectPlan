package com.plan.city;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.plan.plan.PlanDTO;
import com.plan.spot.SpotDTO;
import com.plan.spotRe.SpotReDTO;

@Repository
public class CityDAOImpl implements CityDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	private static final String namespace="CityMapper.";
	
	@Override
	public CityDTO cityView(String e_name) throws Exception {
		return sqlSession.selectOne(namespace+"cityView", e_name);
	}
	@Override
	public void cityWrite(CityDTO cityDTO)throws Exception{
		int num = sqlSession.insert(namespace+"cityWrite", cityDTO);
	}
	
	@Override
	public List<SpotDTO> popular_spot() throws Exception{
		List<SpotDTO> ar =sqlSession.selectList(namespace+"popular_spot");
		return ar;
	}
	@Override
	public List<PlanDTO> popular_plan() throws Exception{
		List<PlanDTO> ar = sqlSession.selectList(namespace+"popular_plan");
		return ar;
	}
/*	@Override
	public int totalList() throws Exception{
		return sqlSession.selectOne(namespace+"totalList");
	}*/
	@Override
	public List<CityDTO> cityList()throws Exception{
		List<CityDTO> ar = sqlSession.selectList(namespace+"cityList");
		return ar;
	}
	
	@Override
	public List<SpotReDTO> reply_city(int city_no) throws Exception {
		List<SpotReDTO> ar = sqlSession.selectList(namespace+"reply_city");
		return ar;
	}
}
