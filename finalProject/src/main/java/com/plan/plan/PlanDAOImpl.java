package com.plan.plan;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.plan.big.BigDTO;
import com.plan.city.CityDTO;
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
	
	/*@Override
	public void plan_insert(PlanDTO planDTO) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+"plan_insert", planDTO);
		
	}*/
	
}
