package com.todaysTable.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.todaysTable.service.DetailService;

@Controller
public class DetailController {
	
	@Autowired
	private DetailService service;
	
	@RequestMapping(value="moveTostoreDetail.do")
	public ModelAndView storeDetail(int store_no, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("store", service.selectStoreInfo(store_no));
		modelAndView.addObject("avgGrade", service.getAvgGrade(store_no));
		modelAndView.addObject("canPark", service.getCanPark(store_no));
		modelAndView.addObject("menu", service.selectMenuList(store_no));
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println("id:"+id);
		modelAndView.addObject("nickName", service.getNickName(id));
		modelAndView.setViewName("WEB-INF/views/storeDetail");
		return modelAndView;
	}
}