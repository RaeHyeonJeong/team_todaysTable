package com.todaysTable.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.todaysTable.func.FileUploader;
import com.todaysTable.service.NoticeBoardService;
import com.todaysTable.vo.NoticeBoardVO;

@Controller
public class BoardController {

	@Autowired
	NoticeBoardService service;

	@Autowired
	FileUploader fileUploader;

	// BOARD 공통 메서드
	@RequestMapping(value = "boardWriteMove.do")
	public String writeBoardMoveAction() {
		return "WEB-INF/views/boardWrite";
	}

	@RequestMapping(value = "boardUpdateMove.do")
	public String updateBoardMoveAction(Model model, int notice_no) {
		NoticeBoardVO vo = new NoticeBoardVO();
		vo.setContent(vo.getContent().replace("<br>", "\r\n"));
		vo = service.detailNoticeBoard(notice_no);
		model.addAttribute("info", vo);
		return "WEB-INF/views/boardUpdate";
	}

	// NoticeBoard 메서드
	@RequestMapping(value = "noticeBoard.do")
	public String noticeBoardListAction(Model model) {
		List<NoticeBoardVO> list = service.noticeBoardList();
		model.addAttribute("list", list);
		return "WEB-INF/views/boardNotice";
	}

	@RequestMapping(value = "insertNoticeBoard.do", method = RequestMethod.POST)
	public String noticeBoardInsertAction(NoticeBoardVO vo, @RequestParam(value = "file", required = false) List<MultipartFile> fileList, MultipartHttpServletRequest request, String folderName) {
		
		vo.setContent(vo.getContent().replace("\r\n", "<br>"));
		service.insertNoticeBoard(vo);
		
		service.insertNoticeBoardImage(fileList);
		fileUploader.multiFileUploader(fileList, request, "noticeImg");
		return "redirect:/noticeBoard.do";
	}

	@RequestMapping(value = "noticeBoardDetail.do", method = RequestMethod.GET)
	public String noticeBoardDetailAction(HttpServletRequest request, Model model, int notice_no) {
		NoticeBoardVO vo = new NoticeBoardVO();
		service.updateHits(notice_no);
		vo = service.detailNoticeBoard(notice_no);
		model.addAttribute("info", vo);
		return "WEB-INF/views/boardNoticeContentDetail";
	}

	@RequestMapping(value = "updateNoticeBoard.do", method = RequestMethod.POST)
	public String noticeBoardUpdateAction(NoticeBoardVO vo, int notice_no) {
		vo.setContent(vo.getContent().replace("\r\n", "<br>"));
		service.updateNoticeBoard(vo);
		return "redirect:/noticeBoardDetail.do?notice_no=" + notice_no;
	}

	@RequestMapping(value = "deleteNoticeBoard.do")
	public String noticeBoardDeleteAction(int notice_no) {
		service.deleteNoticeBoard(notice_no);
		return "redirect:/noticeBoard.do";
	}
	
	@RequestMapping(value= "insertNoticeBoardImage.do")
	public String noticeBoardImage() {
		return "";
	}

}
