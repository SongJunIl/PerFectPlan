package com.plan.city;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CityDAOImpl implements CityDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	private static final String namespace="CityMapper.";
	
	@Override
	public CityDTO cityView(String e_name) throws Exception {
		System.out.println("aaa");
		System.out.println("가져오라고"+e_name);
		return sqlSession.selectOne(namespace+"cityView", e_name);
	}
}
