package com.todaysTable.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.todaysTable.service.BookService;
import com.todaysTable.service.DetailService;
import com.todaysTable.vo.BookVO;

@Controller
public class BookController {
	
	@Autowired
	private BookService bookService;
	@Autowired
	private DetailService detailService;
	
	@RequestMapping(value = "moveToBookStore.do")
	public String moveTobookStore(Model model, int store_no) {
		// 가게 정보 불러오기
		model.addAttribute("store", detailService.selectStoreInfo(store_no));
		// 전체 객실 정보 불러오기
		model.addAttribute("rooms", bookService.selectRooms(store_no));
		return "WEB-INF/views/bookStore";
	}
	
	@RequestMapping(value = "bookStoreSubmit.do")
	public String bookStoreSubmit(Model model, BookVO vo, HttpServletRequest request) {
		
		// 접속중인 id 받아오기
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		// 회원 넘버 받아오기
		vo.setMemb_no(detailService.getMemberNo(id));
		// 예약 날짜 올바른 포맷으로 받아오기
		vo.setReserve_date(bookService.getReserveDate(vo.getBookingDate(), vo.getTime()));
		// 이미 예약되어 있는지 확인 후 예약되어 있을시 예약화면 재로딩
		if(bookService.isAlreadyBooked(vo)) {
			model.addAttribute("alreadyBooked", "Y");
			model.addAttribute("store", detailService.selectStoreInfo(vo.getStore_no()));
			model.addAttribute("rooms", bookService.selectRooms(vo.getStore_no()));
			return "WEB-INF/views/bookStore";
		}
		// 예약 정보 DB에 저장
		bookService.insertReservationInfo(vo);
		
		return "redirect:moveTostoreDetail.do?store_no="+vo.getStore_no();
	}
}
