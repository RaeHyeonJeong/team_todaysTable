package com.todaysTable.controller;

import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import com.todaysTable.service.MyListService;
import com.todaysTable.vo.DibsVO;

public class MyListController {
	private Logger logger = LoggerFactory.getLogger(MyListController.class);
	
	@Autowired
	private MyListService service;

	@PostMapping(value="LikeStore.do") /*버전1*/
	public String insertLikeInfo(HttpSession session,int store_no) throws Exception{
		logger.info("LikeStore");
		session.getAttribute("id");
		DibsVO vo = service.getLikeInfo((String)session.getAttribute("id"), store_no);
		service.insertLikeInfo(vo);
		return "WEB-INF/views/Like";	
	}
	
	/*@PostMapping(value="LikeStore.do") 버전2
	public String insertLikeInfo(HttpSession session,DibsVO vo,int store_no) throws Exception{
		logger.info("LikeStore");
		session.getAttribute("id");
		vo.setAddress(service.getStoreInfo(store_no).getAddress());
		vo.setStore_no(service.getStoreInfo(store_no).getStore_no());
		vo.setStore_name(service.getStoreInfo(store_no).getName());
		vo.setMemb_no(service.getMemberNo("id"));
		vo.setAvg_grade(service.getAvg_Grade(store_no));
		service.insertLikeInfo(vo);
		return "WEB-INF/views/Like";
	}*/
	
	
	
}