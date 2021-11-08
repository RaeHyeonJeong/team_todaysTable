package com.todaysTable.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.todaysTable.dao.NoticeBoardDao;
import com.todaysTable.func.FileUploader;
import com.todaysTable.vo.NoticeBoardImageVO;
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
	public void insertNoticeBoard(NoticeBoardVO vo, List<MultipartFile> fileList, MultipartHttpServletRequest request, String folderName) {

		vo.setContent(vo.getContent().replace("\r\n", "<br>"));
		fileUploader.multiFileUploader(fileList, request, folderName);

		dao.insertNoticeBoard(vo);

		ArrayList<String> list = fileUploader.getUploadFilePath();
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
			dao.insertNoticeBoardImage(list.get(i));
		}
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
		NoticeBoardVO vo = dao.deatilNoticeBoard(notice_no);
		vo.setContent(vo.getContent().replace("<br>", "\r\n"));
		return vo;
	}

	@Override
	public void updateHits(int notice_no) {
		dao.updateHits(notice_no);
	}

	@Override
	public List<NoticeBoardImageVO> selectNoticeImage(int notice_no) {
		List<NoticeBoardImageVO> list = dao.selectNoticeBoardImage(notice_no);

		for (int i = 0; i < list.size(); i++) {
			String path = list.get(i).getImage_path();

			int beginIndex = path.lastIndexOf("resources");
			int endIndex = path.length();
			path = path.substring(beginIndex, endIndex);
			path = path.replace("\\\\", "/");
			
			list.get(i).setImage_path(path);
		}

		return list;
	}
	
	

}
