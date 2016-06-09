package com.plan.intercept;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.plan.member.MemberDTO;

public class MemberInterCept extends HandlerInterceptorAdapter{

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		HttpSession session = request.getSession();
		Object obj = modelAndView.getModel().get("mem");
		modelAndView.setViewName("home");
		if(obj != null){
			session.setAttribute("member", modelAndView.getModel().get("mem"));
			response.sendRedirect(request.getContextPath()+"/");
		}else{
			response.sendRedirect(request.getContextPath()+"/");
		}
		
	   Object obj2= modelAndView.getModel().get("message");
	   modelAndView.setViewName("home");
	   if(obj2 !=null){
		   session.setAttribute("message", modelAndView.getModel().get("message"));
		   response.sendRedirect(request.getContextPath()+"/");
	   }
	   
	
	
	}
	
	
}
