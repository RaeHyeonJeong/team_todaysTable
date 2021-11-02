package com.todaysTable.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		
		storeService.insertStoreInfo(storeVO);
		//storeService.uploadStoreImg(storeImageVO);
		//storeService.updateStoreOption(storeOptionVO);
		//fileUploader.multiFileUploader(fileList, request, "storeImg");
		
		/*Map<String, String> menu = new HashMap<>();
		
		StringTokenizer st = new StringTokenizer(menuVO.getMenu_name(),",");
		StringTokenizer st2 = new StringTokenizer(menuVO.getPrice(),",");
		while(st.hasMoreTokens() && st2.hasMoreTokens()) {
			menu.put(st.nextToken(), st2.nextToken());
		}
		 Iterator<String> keys = menu.keySet().iterator();
	        while(keys.hasNext() ){
	            String key = keys.next();
	            String value = menu.get(key);
	     }
	        
	    for(int i = 0; i<menu.size();i++) {
	    	storeService.insertStoreMenu(menu);
	    }*/
		
	    Map<String, String> menu = new HashMap<>();
	    StringTokenizer st = new StringTokenizer(menuVO.getMenu_name(),",");
	    StringTokenizer st2 = new StringTokenizer(menuVO.getPrice(),",");
	    while(st.hasMoreTokens() && st2.hasMoreTokens()) {
	    	menu.put("menu_name", st.nextToken());
	    	menu.put("price", st2.nextToken());
	    	System.out.println(menu);
	    	storeService.insertStoreMenu(menu);
	    }
	    
		// 겟  스토어브이오 스토어넘버가져와ㅓ 맵에다가 넣어줘라 밸류로> 
		//map.put("store_no", storeVO.getStore_no();
		//if check = 'Y' else 'N'
		//map.put("can_park", Y); 체크시 Y
		//map.put("CAN_RESERVE", ); 아니면 N
		//map.put("CAN_RESERVE", N); 아니면 N
	    //Map<String, Object> option = new HashMap<>();
		
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
