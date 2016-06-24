package com.plan.scrap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ScrapDAOImpl implements ScrapDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String SPACENAME="SpotMapper.";
	
	
	
	@Override
	public int jim(ScrapDTO scrapDTO) throws Exception {
		return sqlSession.insert(SPACENAME+"jim",scrapDTO);
		
	}
}
