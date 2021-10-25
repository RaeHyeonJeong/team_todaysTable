package com.todaysTable.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.todaysTable.vo.NoticeBoardVO;

@Repository
public class NoticeBoardDaoImpl  implements NoticeBoardDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<NoticeBoardVO> selectAllBoard() {
		return sqlSession.selectList("boardMapper.selectAllNoticeBoard");
	}

	@Override
	public NoticeBoardVO selectBoard(NoticeBoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertBoard() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateBoard() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBoard() {
		// TODO Auto-generated method stub
		
	}
	
	
	

	
}
