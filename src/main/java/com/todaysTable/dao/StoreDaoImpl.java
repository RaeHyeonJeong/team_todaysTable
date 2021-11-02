package com.todaysTable.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.todaysTable.vo.SearchCriteriaVO;
import com.todaysTable.vo.StoreImageVO;
import com.todaysTable.vo.StoreOptionVO;
import com.todaysTable.vo.StoreVO;

@Repository
public class StoreDaoImpl implements StoreDao {

	@Autowired
	SqlSession sqlSession;

	// 매장 리스트 출력
	@Override
	public List<StoreVO> list(SearchCriteriaVO scri) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("storeMapper.listPage",scri);
	}
	// 매장 페이징을 위한 게시물 총 갯수
	@Override
	public int listCount(SearchCriteriaVO scri) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("storeMapper.listCount",scri);
	}
	// 매장 정보 INSERT
	@Override
	public void insertStoreInfo(StoreVO storeVO) {
		// TODO Auto-generated method stub
		sqlSession.insert("storeMapper.insertStoreInfo",storeVO);
	}
	/// 매장별 메뉴 INSERT
	@Override
	public void insertStoreMenu(Map<String, String> menu) {
		// TODO Auto-generated method stub
		sqlSession.insert("storeMapper.insertStoreMenu",menu);
	}
	// 매장별 편의사항 UPDATE
	@Override
	public void updateStoreOption(StoreOptionVO storeOptionVO) {
		// TODO Auto-generated method stub
		sqlSession.update("storeMapper.updateStoreOption", storeOptionVO);
	}

	// 매장 이미지 업로드
	@Override
	public void uploadStoreImg(StoreImageVO storeImageVO) {
		// TODO Auto-generated method stub
		sqlSession.insert("storeMapper.insertStoreImg", storeImageVO);
	}
	//storeResult.jsp 매장리스트 검색용
	@Override
	public List<StoreVO> storeList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("storeMapper.storeList");
	}
	
	//index.jsp 매장리스트 랜덤출력용
	@Override
	public List<StoreVO> storeRandomList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("storeMapper.storeRandomList");
	}
	
	

}
