package com.todaysTable.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.todaysTable.func.AjaxFileUploader;
import com.todaysTable.service.NoticeBoardService;
import com.todaysTable.vo.NoticeBoardVO;

@Controller
public class BoardController {

	@Autowired
	NoticeBoardService service;

	// BOARD 공통 메서드
	@RequestMapping(value = "boardWriteMove.do")
	public String writeBoardMoveAction() {
		return "WEB-INF/views/boardWrite";
	}

	@RequestMapping(value = "boardUpdateMove.do")
	public String updateBoardMoveAction(Model model, int notice_no) {
		model.addAttribute("info", service.detailNoticeBoard(notice_no));
		return "WEB-INF/views/boardUpdate";
	}

	// NoticeBoard 메서드
	@RequestMapping(value = "noticeBoard.do")
	public String noticeBoardListAction(Model model) {
		model.addAttribute("list", service.noticeBoardList());
		return "WEB-INF/views/boardNotice";
	}

	@RequestMapping(value = "insertNoticeBoard.do", method = RequestMethod.POST)
	public String noticeBoardInsertAction(NoticeBoardVO vo, @RequestParam(value = "file", required = false) List<MultipartFile> fileList, MultipartHttpServletRequest request, String folderName) {

		service.insertNoticeBoard(vo, fileList, request, "noticeImg");
		return "redirect:/noticeBoard.do";
	}

	@RequestMapping(value = "noticeBoardDetail.do", method = RequestMethod.GET)
	public String noticeBoardDetailAction(Model model, int notice_no) {
		service.updateHits(notice_no);
		model.addAttribute("info", service.detailNoticeBoard(notice_no));
		model.addAttribute("img", service.selectNoticeImage(notice_no));
		return "WEB-INF/views/boardNoticeContentDetail";
	}

	@RequestMapping(value = "updateNoticeBoard.do", method = RequestMethod.POST)
	public String noticeBoardUpdateAction(NoticeBoardVO vo, int notice_no) {
		service.updateNoticeBoard(vo);
		return "redirect:/noticeBoardDetail.do?notice_no=" + notice_no;
	}

	@RequestMapping(value = "deleteNoticeBoard.do")
	public String noticeBoardDeleteAction(int notice_no) {
		service.deleteNoticeBoard(notice_no);
		return "redirect:/noticeBoard.do";
	}

	@RequestMapping(value = "uploadImgAjax.do", method = {RequestMethod.POST, RequestMethod.GET} )
	public void uploadAjax(MultipartFile[] uploadFile) {
		AjaxFileUploader ajaxFileUploader = new AjaxFileUploader();
		String forderName = "noticeImg";
		
		for(MultipartFile multipartFile : uploadFile) {
			try {
				System.out.println("name : " +multipartFile.getOriginalFilename());
				
				ajaxFileUploader.uploadFile(multipartFile, forderName);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
