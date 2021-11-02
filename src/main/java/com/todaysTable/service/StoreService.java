package com.todaysTable.service;

import java.util.List;

import com.todaysTable.vo.MenuVO;
import com.todaysTable.vo.RoomVO;
import com.todaysTable.vo.SearchCriteria;
import com.todaysTable.vo.StoreVO;

public interface StoreService {
	// 매장 리스트 출력
	//public List<StoreVO> list();
	
	// 매장 리스트 출력
	public List<StoreVO> list(SearchCriteria scri);
	
	public int listCount(SearchCriteria scri);
	
	//storeResult.jsp 매장리스트 검색용
	public List<StoreVO> storelist();
	
	//index.jsp 매장리스트 랜덤출력용
	public List<StoreVO> storeRandomList();
	
	//storeDetail.jsp 매장별 메뉴리스트 출력용
	public List<MenuVO> storemenuList();
	
	//storeDetail.jsp 매장별 객실정보 출력용
	public List<RoomVO> storeCapacity();
}
