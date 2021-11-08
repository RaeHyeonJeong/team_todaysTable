package com.todaysTable.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.todaysTable.service.MyListService;
import com.todaysTable.vo.DibsVO;
import com.todaysTable.vo.MemberVO;
import com.todaysTable.vo.ReviewVO;

@Controller
public class MyListController {
	private Logger logger = LoggerFactory.getLogger(MyListController.class);
	
	@Autowired
	private MyListService service;

	/*@RequestMapping(value="LikeStore.do") 버전1
	public String insertLikeInfo(HttpSession session,int store_no) throws Exception{
		logger.info("LikeStore");
		session.getAttribute("id");
		DibsVO vo = service.getLikeInfo((String)session.getAttribute("id"), store_no);
		service.insertLikeInfo(vo);
		return "WEB-INF/views/Like";	
	}*/
	
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
	
	@RequestMapping(value="LikeList.do")
	public String LikeList (HttpSession session,Model model) throws Exception{
	
	logger.info("LikeList");
	session.getAttribute("id");//로그인시 저장했던 아이디 get
	int memb_no=service.getMemberNo((String) session.getAttribute("id"));
	List<DibsVO> LikeList = service.getLikeList(memb_no);
	model.addAttribute("LikeList", LikeList);
   return "WEB-INF/views/Like";//기본정보출력 페이지로 이동
}
	
	/*@RequestMapping(value="checkLike.do")
	public String checkLike(int store_no, HttpSession session) throws Exception {
		logger.info("checkLike");
		session.getAttribute("id");
		DibsVO vo = service.getLikeInfo((String)session.getAttribute("id"), store_no);
		String checkLikeNo=service.checkLike(vo);
		return checkLikeNo;
		
	}*/
	
	
	
}