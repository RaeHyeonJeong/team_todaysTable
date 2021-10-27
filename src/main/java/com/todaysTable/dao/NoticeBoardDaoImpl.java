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
	public void insertNoticeBoard(NoticeBoardVO vo) {
		sqlSession.insert("boardMapper.insertNoticeBoard", vo);
	}

	@Override
	public void updateNoticeBoard(NoticeBoardVO vo) {
		sqlSession.update("boardMapper.updateNoticeBoard", vo);

	}

	@Override
	public void deleteNoticeBoard(int no) {
		sqlSession.delete("boardMapper.deleteNoticeBoard", no);
	
	}
	

	
}
