package com.todaysTable.dao;

import java.util.List;

import com.todaysTable.vo.MenuVO;
import com.todaysTable.vo.SearchCriteriaVO;
import com.todaysTable.vo.StoreImageVO;
import com.todaysTable.vo.StoreOptionVO;
import com.todaysTable.vo.StoreVO;

public interface StoreDao {
	// 매장 리스트 출력
	public List<StoreVO> list(SearchCriteriaVO scri);
	// 매장 페이징을 위한 게시물 총 갯수
	public int listCount(SearchCriteriaVO scri);
	// 매장 정보 INSERT
	public void insertStoreInfo(StoreVO storeVO);
	// 매장별 메뉴 insert
	public void insertStoreMenu(MenuVO menuVO);
	// 매장별 편의사항 update
	public void updateStoreOption(StoreOptionVO storeOptionVO);
	// 매장 이미지 업로드
	public void uploadStoreImg(StoreImageVO storeImageVO);
	//storeResult.jsp 매장리스트 검색용
	public List<StoreVO> storeList();
	//index.jsp 매장리스트 랜덤출력용
	public List<StoreVO> storeRandomList();
	
}
