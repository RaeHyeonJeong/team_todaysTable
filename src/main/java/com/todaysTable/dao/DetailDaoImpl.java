package com.todaysTable.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.todaysTable.vo.MenuVO;
import com.todaysTable.vo.StoreVO;

@Repository
public class DetailDaoImpl implements DetailDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public StoreVO selectStoreInfo(int store_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.selectStoreInfo", store_no);
	}

	@Override
	public double getAvgGrade(int store_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.getAvgGrade", store_no);
	}

	@Override
	public String getCanPark(int store_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.getCanPark", store_no);
	}

	@Override
	public List<MenuVO> selectMenuList(int store_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("detailMapper.selectMenuList", store_no);
	}

	@Override
	public String getNickName(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.getNickName", id);
	}
	
	
}
