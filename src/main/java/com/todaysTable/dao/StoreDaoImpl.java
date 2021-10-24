package com.todaysTable.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.todaysTable.vo.Criteria;
import com.todaysTable.vo.StoreVO;

@Repository
public class StoreDaoImpl implements StoreDao {

	@Inject
	SqlSession sqlSession;

	@Override
	public List<StoreVO> list(Criteria cri) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("storeMapper.list");
	}
	@Override
	public int listCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("storeMapper.listCount");
	}

}
