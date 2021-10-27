package com.todaysTable.service;

import java.util.List;

import com.todaysTable.vo.NoticeBoardVO;

public interface NoticeBoardService {
	public List<NoticeBoardVO> noticeBoardList();
	public void insertNoticeBoard(NoticeBoardVO vo);
	public void updateNoticeBoard(NoticeBoardVO vo);
	public void deleteNoticeBoard(int num);
}
