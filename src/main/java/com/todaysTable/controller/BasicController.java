package com.todaysTable.controller;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.todaysTable.service.StoreService;
import com.todaysTable.vo.PageMaker;
import com.todaysTable.vo.SearchCriteria;
import com.todaysTable.vo.StoreVO;

@Controller
public class BasicController {

	@RequestMapping(value = "storeDetail.do")
	public ModelAndView basicstoreDetail() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("Message", "HelloSpringMVC1");
		modelAndView.setViewName("WEB-INF/views/storeDetail");

		return modelAndView;
	}

	@RequestMapping(value = "bookStore.do")
	public ModelAndView basicbookStore() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("Message", "HelloSpringMVC2");
		modelAndView.setViewName("WEB-INF/views/bookStore");

		return modelAndView;
	}

	@RequestMapping(value = "review.do")
	public ModelAndView basicreview() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("Message", "HelloSpringMVC3");
		modelAndView.setViewName("WEB-INF/views/review");

		return modelAndView;
	}
	
	@RequestMapping(value = "search.do")
	public ModelAndView basicsearch() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("Message", "HelloSpringMVC3");
		modelAndView.setViewName("WEB-INF/views/store_search");

		return modelAndView;
	}
	
	@RequestMapping(value = "searchResult.do")
	public ModelAndView basicsearchResult() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("Message", "HelloSpringMVC3");
		modelAndView.setViewName("WEB-INF/views/searchResult");

		return modelAndView;
	}
	
	@RequestMapping(value = "main.do")
	public ModelAndView basicMain() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("Message", "HelloSpringMVC3");
		modelAndView.setViewName("WEB-INF/views/index");

		return modelAndView;
	}

	
	//index.jsp 매장리스트 랜덤출력용
	@Inject
	StoreService storeService;
	@RequestMapping(value="storeRandomlist.do")
	@ResponseBody
	public List<StoreVO> storeRandomList() {
		return storeService.storeRandomList();
	}
	
	//searchResult.jsp 매장리스트 출력용
	@RequestMapping(value="storelist.do")
	@ResponseBody
	public List<StoreVO> storeList() {
		return storeService.storelist();
	}

	
	@RequestMapping(value = "limit.do")
	public ModelAndView Limit() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("Message", "HelloSpringMVC3");
		modelAndView.setViewName("WEB-INF/views/limit");

		return modelAndView;
	}
}
