package com.plan.plan;

import java.util.List;

import org.springframework.stereotype.Service;

import com.plan.big.BigDTO;
@Service
public class PlanServiceImpl implements PlanService {
	
	private PlanDAO pdao;
	
	@Override
	public List<BigDTO> s_bigCity_list() {
		
		return pdao.bigCity_list();
	}
}
