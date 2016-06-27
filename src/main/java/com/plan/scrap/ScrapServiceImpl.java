package com.plan.scrap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
@Service
public class ScrapServiceImpl implements ScrapService {
 
	@Inject
	private ScrapDAO scrapDAO;
	
	@Override
	public int jim(ScrapDTO scrapDTO) {
	int result=0;
		try {
			result=scrapDAO.jim(scrapDTO);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return result;
	}
}
