package com.todaysTable.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todaysTable.dao.DetailDao;
import com.todaysTable.vo.MenuVO;
import com.todaysTable.vo.ReviewImageVO;
import com.todaysTable.vo.ReviewVO;
import com.todaysTable.vo.StoreVO;

@Service
public class DetailServiceImpl implements DetailService{

	@Autowired
	DetailDao dao;
	
	@Override
	public StoreVO selectStoreInfo(int store_no) {
		// TODO Auto-generated method stub
		return dao.selectStoreInfo(store_no);
	}

	@Override
	public double getAvgGrade(int store_no) {
		// TODO Auto-generated method stub
		return dao.getAvgGrade(store_no);
	}

	@Override
	public String getCanPark(int store_no) {
		// TODO Auto-generated method stub
		return dao.getCanPark(store_no);
	}

	@Override
	public List<MenuVO> selectMenuList(int store_no) {
		// TODO Auto-generated method stub
		return dao.selectMenuList(store_no);
	}

	@Override
	public String getNickname(String id) {
		// TODO Auto-generated method stub
		return dao.getNickname(id);
	}
	
	@Override
	public String getNicknameFromNo(int memb_no) {
		// TODO Auto-generated method stub
		return dao.getNicknameFromNo(memb_no);
	}

	@Override
	public int getMemberNo(String id) {
		// TODO Auto-generated method stub
		return dao.getMemberNo(id);
	}

	@Override
	public int getNewReviewNo() {
		// TODO Auto-generated method stub
		return dao.getNewReviewNo();
	}

	@Override
	public void insertReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		dao.insertReview(vo);
	}

	@Override
	public void insertReviewImage(ReviewImageVO vo) {
		// TODO Auto-generated method stub
		dao.insertReviewImage(vo);
	}

	@Override
	public String getRegDate(int review_no) {
		// TODO Auto-generated method stub
		return dao.getRegDate(review_no);
	}

	@Override
	public List<ReviewVO> selectReviewList(int store_no) {
		// TODO Auto-generated method stub
		return dao.selectReviewList(store_no);
	}

	@Override
	public List<ReviewImageVO> selectReviewImageList(int review_no) {
		// TODO Auto-generated method stub
		return dao.selectReviewImageList(review_no);
	}
	
	
}
