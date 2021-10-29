package com.todaysTable.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.todaysTable.vo.BookVO;
import com.todaysTable.vo.RoomVO;
import com.todaysTable.vo.StoreVO;

@Repository
public class BookDaoImpl implements BookDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int getMemberNo(String id) {
		return sqlSession.selectOne("bookMapper.getMemberNo", id);
	}
	
	@Override
	public List<RoomVO> selectRooms(int store_no) {
		return sqlSession.selectList("bookMapper.selectRooms", store_no);
	}
	
	@Override
	public void insertReservationInfo(BookVO vo) {
		sqlSession.insert("bookMapper.insertReservationInfo", vo);
	}	
}
