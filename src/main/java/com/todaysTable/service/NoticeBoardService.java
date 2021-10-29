package com.todaysTable.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.todaysTable.vo.NoticeBoardVO;

public interface NoticeBoardService {
	public List<NoticeBoardVO> noticeBoardList();
	public void insertNoticeBoard(NoticeBoardVO vo);
	public void updateNoticeBoard(NoticeBoardVO vo);
	public void deleteNoticeBoard(int no);
	public NoticeBoardVO detailNoticeBoard(int no);
	public void updateHits(int no);
	public void insertNoticeBoardImage(List<MultipartFile> fileList);
}
