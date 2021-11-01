package com.todaysTable.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.todaysTable.dao.NoticeBoardDao;
import com.todaysTable.func.FileUploader;
import com.todaysTable.vo.NoticeBoardVO;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired
	NoticeBoardDao dao;
	
	@Autowired
	FileUploader fileUploader;

	@Override
	public List<NoticeBoardVO> noticeBoardList() {
		return dao.selectAllBoard();
	}
	@Override
	public void insertNoticeBoard(NoticeBoardVO vo, List<MultipartFile> fileList,MultipartHttpServletRequest request, String folderName) {
		vo.setContent(vo.getContent().replace("\r\n", "<br>"));
		fileUploader.multiFileUploader(fileList, request, folderName);
		
		List<String > list = fileUploader.getUploadFilePath();
		Iterator<String> it = list.iterator();
		while( it.hasNext()) {
			System.out.println(it.next());
		}
		dao.insertNoticeBoard(vo);
	}

	@Override
	public void updateNoticeBoard(NoticeBoardVO vo) {
		vo.setContent(vo.getContent().replace("\r\n", "<br>"));
		dao.updateNoticeBoard(vo);
	}

	@Override
	public void deleteNoticeBoard(int notice_no) {
		dao.deleteNoticeBoard(notice_no);
	}

	@Override
	public NoticeBoardVO detailNoticeBoard(int notice_no) {
		NoticeBoardVO vo = new NoticeBoardVO();
		vo = dao.deatilNoticeBoard(notice_no);
		vo.setContent(vo.getContent().replace("<br>", "\r\n"));
		return vo;
	}

	@Override
	public void updateHits(int notice_no) {
		dao.updateHits(notice_no);	
	}

	@Override
	public void insertNoticeBoardImage(List<MultipartFile> fileList) {
	/*	iterator fileNamelter = 
		dao.insertNoticeBoardImage();*/
		
	}
	
	
	
}
