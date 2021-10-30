package com.todaysTable.dao;

import java.util.List;

import com.todaysTable.vo.Criteria;
import com.todaysTable.vo.SearchCriteria;
import com.todaysTable.vo.StoreVO;

public interface StoreDao {
	// 매장 리스트 출력
	//public List<StoreVO> list();
	
	// 매장 리스트 출력
	public List<StoreVO> list(SearchCriteria scri);

	// 게시물 총 갯수
	public int listCount(SearchCriteria scri);
	
	//storeResult.jsp 매장리스트 검색용
	public List<StoreVO> storeList();
	
	//index.jsp 매장리스트 랜덤출력용
	public List<StoreVO> storeRandomList();
	
}
