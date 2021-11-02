package com.todaysTable.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todaysTable.dao.StoreDao;
import com.todaysTable.vo.SearchCriteriaVO;
import com.todaysTable.vo.StoreImageVO;
import com.todaysTable.vo.StoreOptionVO;
import com.todaysTable.vo.StoreVO;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	StoreDao storeDao;

	// 매장 리스트 출력 및 검색
	@Override
	public List<StoreVO> list(SearchCriteriaVO scri) {
		// TODO Auto-generated method stub
		return storeDao.list(scri);
	}
	// 매장 페이징을 위한 게시물 총 갯수
	@Override
	public int listCount(SearchCriteriaVO scri) {
		// TODO Auto-generated method stub
		return storeDao.listCount(scri);
	}
	// 매장 정보 INSERT
	@Override
	public void insertStoreInfo(StoreVO storeVO) {
		// TODO Auto-generated method stub
		storeDao.insertStoreInfo(storeVO);
	}
	// 매장별 메뉴 INSERT
	@Override
	public void insertStoreMenu(Map<String, String> menu) {
		// TODO Auto-generated method stub
		storeDao.insertStoreMenu(menu);
	}
	// 매장별 편의사항 UPDAT
	@Override
	public void updateStoreOption(StoreOptionVO storeOptionVO) {
		// TODO Auto-generated method stub
		storeDao.updateStoreOption(storeOptionVO);
	}
	// 매장 이미지 업로드
	@Override
	public void uploadStoreImg(StoreImageVO storeImageVO) {
		// TODO Auto-generated method stub
		storeDao.uploadStoreImg(storeImageVO);
	}
	//storeResult.jsp 매장리스트 검색용
	@Override
	public List<StoreVO> storelist() {
		// TODO Auto-generated method stub
		return  storeDao.storeList();
	}
	@Override
	public List<StoreVO> storeRandomList() {
		// TODO Auto-generated method stub
		return storeDao.storeRandomList();
	}
	
	

}
