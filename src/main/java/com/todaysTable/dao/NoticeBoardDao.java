package com.todaysTable.dao;

import java.util.List;

import com.todaysTable.vo.NoticeBoardVO;

public interface NoticeBoardDao {
	public List<NoticeBoardVO> selectAllBoard();
	// 게시물 전체 목록
	public void insertNoticeBoard(NoticeBoardVO vo);
	// 게시물 등록 
	public void updateNoticeBoard(NoticeBoardVO vo);
	// 게시물 수정 
	public void deleteNoticeBoard(int no);
	// 게시물 삭제
}
