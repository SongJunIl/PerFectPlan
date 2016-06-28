package com.plan.intercept;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class PlanInterCept extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		if(session.getAttribute("member") != null || session.getAttribute("admin") != null){
			return true;
		}else{
			response.sendRedirect(request.getContextPath()+"/planMake/planList?curPage=1");
			session.setAttribute("message", "일정 만들기는 회원 가입 후 이용 가능합니다.");
			return false;
		}
		
	}
}
