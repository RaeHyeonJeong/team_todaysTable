package com.todaysTable.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.todaysTable.func.FileUploader;
import com.todaysTable.service.StoreService;
import com.todaysTable.vo.MenuVO;
import com.todaysTable.vo.PageMaker;
import com.todaysTable.vo.SearchCriteriaVO;
import com.todaysTable.vo.StoreImageVO;
import com.todaysTable.vo.StoreOptionVO;
import com.todaysTable.vo.StoreVO;

@Controller
public class StoreController {

	@Autowired
	StoreService storeService;
	@Autowired
	FileUploader fileUploader;

	// 가게 리스트 출력 및 검색, 페이징
	@RequestMapping(value = "storeSearch.do", method = { RequestMethod.POST, RequestMethod.GET })
	public String list(Model model, @ModelAttribute("scri") SearchCriteriaVO scri) {
		model.addAttribute("list", storeService.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(storeService.listCount(scri));
		
		model.addAttribute("pageMaker",pageMaker);
		return "WEB-INF/views/storeSearch";
	}
	
	// 신규 매장 등록 SUBMIT
	@RequestMapping(value = "insertData.do", method = { RequestMethod.POST, RequestMethod.GET })
	public String insertStoreInfo(StoreVO storeVO, MenuVO menuVO, StoreOptionVO storeOptionVO,
			@RequestParam(value = "file", required = false) List<MultipartFile> fileList, MultipartHttpServletRequest request,
			StoreImageVO storeImageVO) {
		//가게 기본정보
		storeService.insertStoreInfo(storeVO);
		
		//fileUploader.multiFileUploader(fileList, request, "storeImg");
		//storeService.uploadStoreImg(storeImageVO);
		
		//가게 메뉴
	    Map<String, String> menu = new HashMap<>();
	    StringTokenizer st = new StringTokenizer(menuVO.getMenu_name(),",");
	    StringTokenizer st2 = new StringTokenizer(menuVO.getPrice(),",");
	    while(st.hasMoreTokens() && st2.hasMoreTokens()) {
	    	menu.put("menu_name", st.nextToken());
	    	menu.put("price", st2.nextToken());
	    	System.out.println(menu);
	    	storeService.insertStoreMenu(menu);
	    }
	    
	    //가게 편의사항(OPTION)
	    storeService.updateStoreOption(storeOptionVO);
	    System.out.println(storeOptionVO);
		
		return "redirect:storeSearch.do";
	}
	
	
	// 신규 매장 등록 페이지
	@RequestMapping(value = "newStoreRegister.do", method = { RequestMethod.POST, RequestMethod.GET })
	public String newStoreRegisterView() {
		return "WEB-INF/views/newStoreRegister";
	}

	@RequestMapping(value = "dashBoard.do")
	public String dashBoardView() {
		return "WEB-INF/views/dashBoard";
	}
	
	
}
