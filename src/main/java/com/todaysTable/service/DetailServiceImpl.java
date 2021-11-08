package com.todaysTable.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todaysTable.dao.DetailDao;
import com.todaysTable.vo.DibsVO;
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
	
	
	//찜하기(유주)

	@Override
	public DibsVO getLikeInfo(String id, int store_no) {
		DibsVO vo=new DibsVO();
		StoreVO storeVO = dao.selectStoreInfo(store_no);
		vo.setAddress(storeVO.getAddress());
		vo.setStore_no(storeVO.getStore_no());
		vo.setStore_name(storeVO.getName());
		vo.setMemb_no(dao.getMemberNo(id));
		vo.setAvg_grade(dao.getAvgGrade(store_no));
		
		return vo;
	}

	@Override
	public void insertLikeInfo(DibsVO vo)  {
		dao.insertLikeInfo(vo);
		
	}

	@Override
	public void deleteLikeInfo(DibsVO vo) {
		dao.deleteLikeInfo(vo);		
	}
	
	@Override
	public int checkLike(DibsVO vo){
		return dao.checkLike(vo);
	}
	
}
