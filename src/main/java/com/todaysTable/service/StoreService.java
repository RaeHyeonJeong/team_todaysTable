package com.todaysTable.service;

import java.util.List;

import com.todaysTable.vo.SearchCriteria;
import com.todaysTable.vo.StoreVO;

public interface StoreService {
	// 매장 리스트 출력
	//public List<StoreVO> list();
	
	// 매장 리스트 출력
	public List<StoreVO> list(SearchCriteria scri);
	
	public int listCount(SearchCriteria scri);

}
