package com.todaysTable.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.todaysTable.service.NoticeBoardService;
import com.todaysTable.vo.NoticeBoardVO;

@Controller
public class BoardController {

	@Autowired
	NoticeBoardService service;

	// BOARD 공통 메서드
	@RequestMapping(value = "writeBoard.do")
	public String writeBoardAction() {
		return "WEB-INF/views/boardWriteUpdate";
	}

	//NoticeBoard 메서드
	@RequestMapping(value = "noticeBoard.do")
	public String noticeBoardListAction(Model model) {
		List<NoticeBoardVO> list = service.noticeBoardList();
		model.addAttribute("list", list);
		return "WEB-INF/views/boardNotice";
	}

	@RequestMapping(value = "insertNoticeBoard.do", method = RequestMethod.POST)
	public String noticeBoardInsertAction(NoticeBoardVO vo,  HttpServletRequest request) {
		service.insertNoticeBoard(vo);
		return "redirect:/noticeBoard.do";
	}
}
