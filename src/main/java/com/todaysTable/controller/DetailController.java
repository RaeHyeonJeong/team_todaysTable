package com.todaysTable.controller;

import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.todaysTable.service.DetailService;
import com.todaysTable.vo.DibsVO;
import com.todaysTable.vo.ReviewImageVO;
import com.todaysTable.vo.ReviewVO;

@Controller
public class DetailController {
	
	private Logger logger = LoggerFactory.getLogger(MyListController.class);
	
	@Autowired
	private DetailService service;
	

	
	@RequestMapping(value="moveTostoreDetail.do")
	public String storeDetail(Model model, int store_no, HttpServletRequest request) {
		// 가게 정보 불러오기
		model.addAttribute("store", service.selectStoreInfo(store_no));
		// 평균 평점 불러오기
		model.addAttribute("avgGrade", service.getAvgGrade(store_no));
		// 주자가능여부 불러오기
		model.addAttribute("canPark", service.getCanPark(store_no));
		// 메뉴 정보 불러오기
		model.addAttribute("menu", service.selectMenuList(store_no));
				
		// 닉네임 불러오기
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		model.addAttribute("nickname", service.getNickname(id).trim());
		
		// 리뷰 리스트 불러오기
		List<ReviewVO> reviewList = service.selectReviewList(store_no);
		for(ReviewVO reviewVO : reviewList) {
			reviewVO.setAvg_grade((reviewVO.getTaste_grade() + reviewVO.getService_grade() + reviewVO.getMood_grade()) / 3);
			reviewVO.setNickname(service.getNicknameFromNo(reviewVO.getMemb_no()));
			reviewVO.setImage_list(service.selectReviewImageList(reviewVO.getReview_no()));
		}
		model.addAttribute("reviewList", reviewList);
		

		//찜하기 여부 불러오기
		DibsVO vo = service.getLikeInfo(id, store_no);
		if(service.checkLike(vo)!=0)
		model.addAttribute("check_value","checked");
		return "WEB-INF/views/storeDetail";
	}
	
	@ResponseBody
	@RequestMapping(value="putUpReview.do")
	public ReviewVO putUpReview(ReviewVO vo, int store_no,
			@RequestParam(value="files", required=false)MultipartFile[] files,
			HttpServletRequest request) {
		
		// 접속중인 id 받아오기
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		// 회원 넘버 vo에 저장
		vo.setMemb_no(service.getMemberNo(id));
		// 가게 번호 vo에 저장
		vo.setStore_no(store_no);
		// 리뷰 번호 생성 후 vo에 저장
		vo.setReview_no(service.getNewReviewNo());
		// 리뷰 내용 끝부분 콤마 제거
		vo.setContent(vo.getContent().substring(0, vo.getContent().length()-1));
		// 평균 별점 구해서 vo에 저장
		vo.setAvg_grade((vo.getTaste_grade() + vo.getService_grade() + vo.getMood_grade()) / 3);
		
		// DB에 리뷰 insert
		System.out.println(vo);
		service.insertReview(vo);
		
		// DB로부터 등록 날짜를 가져옴
		vo.setReg_date(service.getRegDate(vo.getReview_no()));
		
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "resources/img/review/";
		System.out.println("path : " + root_path + attach_path);
		
		FileOutputStream fos = null;
		List<ReviewImageVO> image_list = new ArrayList<ReviewImageVO>();
		for(int i = 0; i < files.length; i++) {
			String fileName = files[i].getOriginalFilename();
			if(fileName.length() > 0) {
				try {
					fos = new FileOutputStream(root_path + attach_path + fileName);
					fos.write(files[i].getBytes());
					ReviewImageVO imageVO = new ReviewImageVO();
					imageVO.setReview_no(vo.getReview_no());
					imageVO.setImage_path(fileName);
					image_list.add(imageVO);
					service.insertReviewImage(imageVO);
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				} finally {
					try {
						if(fos != null) fos.close();
					} catch (Exception e2) {
						// TODO: handle exception
						e2.printStackTrace();
					}
				}
			}
		}
		vo.setImage_list(image_list);
		return vo;
	}


	//찜하기 (유주)
	@RequestMapping(value="LikeStore.do")
	public void LikeStore(int store_no, HttpServletRequest request) {//int store_no,
		logger.info("LikeStore");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		session.getAttribute("id");
		DibsVO vo = service.getLikeInfo(id,store_no);
		service.insertLikeInfo(vo);
	}
	//찜해제(유주)
	@RequestMapping(value="DislikeStore.do")
	public void DisLikeStore(int store_no, HttpServletRequest request) {
		logger.info("DisLikeStore");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		session.getAttribute("id");
		DibsVO vo = service.getLikeInfo(id, store_no);
		service.deleteLikeInfo(vo);
		
	}
}