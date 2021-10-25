package com.todaysTable.dao;

import java.util.List;

import com.todaysTable.vo.NoticeBoardVO;

public interface NoticeBoardDao {
	public List<NoticeBoardVO> selectAllBoard();
	// 게시물 전체 목록
	public void selectBoard();
	// 특정 게시물 목록
	public void insertBoard();
	// 게시물 등록 
	public void updateBoard();
	// 게시물 수정 
	public void deleteBoard();
	// 게시물 삭제
}
