package com.plan.spot;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class SpotDAOImpl implements SpotDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String SPACENAME="SpotMapper.";
	
	@Override
	public List<SpotDTO> list(MakePage mp) throws Exception {
		List<SpotDTO> ar = sqlSession.selectList(SPACENAME+"list",mp);		
		return ar;
	}

	@Override
	public int totlaList() throws Exception {
		return sqlSession.selectOne(SPACENAME+"totalList");
	}

	@Override
	public void spotWrite(SpotDTO spotDTO) throws Exception {
		int num = sqlSession.insert(SPACENAME+"spotWrite",spotDTO);
	}

	@Override
	public SpotDTO spotView(int num) throws Exception {
		
		return sqlSession.selectOne(SPACENAME+"spotView",num);
	}

	@Override
	public List<SpotDTO> search(SpotSearchType spotSearchType) {
		List<SpotDTO> ar = sqlSession.selectList(SPACENAME+"search",spotSearchType);
		return ar;
	}
	
	@Override
	public void spotUpdate(SpotDTO spotDTO) throws Exception {

		sqlSession.update(SPACENAME+"spotUpdate",spotDTO);
	}
	
	@Override
	public void spotDelect(int num) throws Exception {
		sqlSession.delete(SPACENAME+"spotDelete",num);
		
	}

	@Override
	public void spotReply(ReplyDTO replyDTO) throws Exception {
		sqlSession.insert(SPACENAME+"spotReply",replyDTO);
	}
	
	@Override
	public List<ReplyDTO> spotReplyView(int num) throws Exception {
		List<ReplyDTO> ar = sqlSession.selectList(SPACENAME+"spotReplyView",num);
		return ar;
	}
	
	@Override
	public void spotReplyDelete(int num) throws Exception {
		sqlSession.delete(SPACENAME+"spotReplyDelete",num);
		
	}
	
	@Override
	public void spotReplyUpdate(ReplyDTO replyDTO) throws Exception {
		sqlSession.update(SPACENAME+"spotReplyUpdate",replyDTO);
	}

	@Override
	public int totalicon(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(SPACENAME+"totalicon",num);
		
	}

	@Override
	public int badicon(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(SPACENAME+"badicon",num); 
	}

	@Override
	public int sosoicon(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(SPACENAME+"sosoicon",num);
	}

	@Override
	public int goodicon(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(SPACENAME+"goodicon",num);
	}
	
	@Override
	public List<SpotDTO> all_category(MakePage mp) throws Exception {
		List<SpotDTO> ar = sqlSession.selectList(SPACENAME+"all_category",mp);		
		return ar;
	}
	@Override
	public List<SpotDTO> spot_category(MakePage mp) throws Exception {
		List<SpotDTO> ar = sqlSession.selectList(SPACENAME+"spot_category",mp);		
		return ar;
	}
	@Override
	public List<SpotDTO> landmark_category(MakePage mp) throws Exception {
		List<SpotDTO> ar = sqlSession.selectList(SPACENAME+"landmark_category",mp);		
		return ar;
	}
	
	
}
