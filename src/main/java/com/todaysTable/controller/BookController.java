package com.todaysTable.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView moveTobookStore(int store_no) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("store", detailService.selectStoreInfo(store_no));
		modelAndView.addObject("rooms", bookService.selectRooms(store_no));
		modelAndView.setViewName("WEB-INF/views/bookStore");
		return modelAndView;
	}
	
	@RequestMapping(value = "bookStoreSubmit.do")
	public ModelAndView bookStoreSubmit(String id, BookVO vo) {
		ModelAndView modelAndView = new ModelAndView();
		vo.setMemb_no(bookService.getMemberNo(id));
		vo.setReserve_date(bookService.getReserveDate(vo.getBookingDate(), vo.getTime()));
		bookService.insertReservationInfo(vo);
		
		System.out.println(vo);
		modelAndView.setViewName("WEB-INF/views/storeDetail");
		return modelAndView;
	}
}
