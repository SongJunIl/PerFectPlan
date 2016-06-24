package com.plan.spot;

import java.util.List;

import com.plan.spotRe.SpotReDTO;


public interface SpotDAO {
	
	public List<SpotDTO> list(MakePage mp) throws Exception;
	
	public int totlaList() throws Exception;
	
	public void spotWrite(SpotDTO spotDTO) throws Exception;
	
	public SpotDTO spotView(int num) throws Exception;
	
	public List<SpotDTO> search(SpotSearchType spotSearchType) throws Exception;
	
	public void spotUpdate(SpotDTO spotDTO) throws Exception;
	
	public void spotDelect(int num) throws Exception;
	
	public void spotReply(ReplyDTO replyDTO) throws Exception;
	
	public List<ReplyDTO> spotReplyView(int num) throws Exception;
	
	public void spotReplyDelete(int num) throws Exception;
	
	public void spotReplyUpdate(ReplyDTO replyDTO) throws Exception;
	
	public int totalicon(int num) throws Exception;
	
	public int badicon(int num) throws Exception;
	
	public int sosoicon(int num) throws Exception;
	
	public int goodicon(int num) throws Exception;
	
	public List<SpotDTO> all_category(MakePage mp) throws Exception;
	
	public List<SpotDTO> spot_category(MakePage mp) throws Exception;
	
	public List<SpotDTO> landmark_category(MakePage mp) throws Exception;
	
	public int crilbCount(String spot_name) throws Exception;
}
