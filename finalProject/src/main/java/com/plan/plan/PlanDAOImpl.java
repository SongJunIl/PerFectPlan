package com.plan.plan;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.plan.big.BigDTO;
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
}
