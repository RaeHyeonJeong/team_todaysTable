package com.todaysTable.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.todaysTable.vo.Criteria;
import com.todaysTable.vo.StoreVO;

public interface StoreDao {
	// 매장 리스트 출력
	public List<StoreVO> list(Criteria cri);
	
	// 페이징을 위한 매장 총 갯수
	public int listCount();
	

}
