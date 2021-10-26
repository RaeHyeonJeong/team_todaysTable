package com.todaysTable.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.todaysTable.service.StoreService;
import com.todaysTable.vo.PageMaker;
import com.todaysTable.vo.SearchCriteria;

@Controller
public class StoreController {

	@Inject
	StoreService storeService;

	@RequestMapping(value = "storeSearch.do")
	public String list(Model model,@ModelAttribute("scri") SearchCriteria scri) {

		model.addAttribute("list", storeService.list(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(storeService.listCount(scri));

		model.addAttribute("pageMaker", pageMaker);

		return "WEB-INF/views/admin/storeSearch";
	}
	
	
	
	@RequestMapping(value="newStoreRegister.do")
	public String register() {
		
		return "WEB-INF/views/admin/newStoreRegister";
	}
	

}
