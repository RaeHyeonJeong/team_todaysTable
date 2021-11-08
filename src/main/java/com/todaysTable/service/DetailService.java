package com.todaysTable.service;

import java.util.HashMap;
import java.util.List;

import com.todaysTable.vo.DibsVO;
import com.todaysTable.vo.MenuVO;
import com.todaysTable.vo.ReviewImageVO;
import com.todaysTable.vo.ReviewVO;
import com.todaysTable.vo.StoreVO;

public interface DetailService {
	public StoreVO selectStoreInfo(int store_no);
	public double getAvgGrade(int store_no);
	public String getCanPark(int store_no);
	public List<MenuVO> selectMenuList(int store_no);
	public String getNickname(String id);
	public String getNicknameFromNo(int memb_no);
	public int getMemberNo(String id);
	public int getNewReviewNo();
	public void insertReview(ReviewVO vo);
	public void insertReviewImage(ReviewImageVO vo);
	public String getRegDate(int review_no);
	public List<ReviewVO> selectReviewList(int store_no);
	public List<ReviewImageVO> selectReviewImageList(int review_no);
	public int countReview();
	public List<ReviewVO> selectReview(HashMap<String, Object> map);
	
	//찜하기(유주)
	public DibsVO getLikeInfo(String id, int store_no);
	public void insertLikeInfo(DibsVO vo);
	public void deleteLikeInfo(DibsVO vo);
	public int checkLike(DibsVO vo);
}
