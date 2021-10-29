package com.todaysTable.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.todaysTable.dao.NoticeBoardDao;
import com.todaysTable.vo.NoticeBoardVO;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired
	NoticeBoardDao dao;

	@Override
	public List<NoticeBoardVO> noticeBoardList() {
		return dao.selectAllBoard();
	}

	@Override
	public void insertNoticeBoard(NoticeBoardVO vo) {
		dao.insertNoticeBoard(vo);
	}

	@Override
	public void updateNoticeBoard(NoticeBoardVO vo) {
		dao.updateNoticeBoard(vo);
	}

	@Override
	public void deleteNoticeBoard(int notice_no) {
		dao.deleteNoticeBoard(notice_no);
	}

	@Override
	public NoticeBoardVO detailNoticeBoard(int notice_no) {
		return dao.deatilNoticeBoard(notice_no);
	}

	@Override
	public void updateHits(int notice_no) {
		dao.updateHits(notice_no);	
	}

	@Override
	public void insertNoticeBoardImage(List<MultipartFile> fileList) {
		/*iterator fileNamelter = 
		dao.insertNoticeBoardImage();*/
		
	}
	
	
	
}
