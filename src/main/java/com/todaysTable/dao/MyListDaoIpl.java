package com.todaysTable.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.todaysTable.vo.DibsVO;
import com.todaysTable.vo.StoreVO;

@Repository
public class MyListDaoIpl implements MyListDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public int getMemberNo(String id) throws Exception {
		return sqlSession.selectOne("myListMapper.getMemberNo",id);
	}

	@Override
	public StoreVO getStoreInfo(int store_no) throws Exception {
		return sqlSession.selectOne("myListMapper.selectStore",store_no);
	}

	@Override
	public Double getAvg_Grade(int store_no) throws Exception {
		return sqlSession.selectOne("myListMapper.getAvg_Grade",store_no);
	}

	@Override
	public void insertLikeInfo(DibsVO vo) throws Exception {
		this.sqlSession.insert("myListMapper.insertLikeInfo",vo);
	}
	

	
	
}
