package com.todaysTable.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.todaysTable.vo.DibsVO;
import com.todaysTable.vo.MenuVO;
import com.todaysTable.vo.ReviewImageVO;
import com.todaysTable.vo.ReviewVO;
import com.todaysTable.vo.StoreVO;

@Repository
public class DetailDaoImpl implements DetailDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public StoreVO selectStoreInfo(int store_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.selectStoreInfo", store_no);
	}

	@Override
	public double getAvgGrade(int store_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.getAvgGrade", store_no);
	}

	@Override
	public String getCanPark(int store_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.getCanPark", store_no);
	}

	@Override
	public List<MenuVO> selectMenuList(int store_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("detailMapper.selectMenuList", store_no);
	}

	@Override
	public String getNickname(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.getNickname", id);
	}
	
	@Override
	public String getNicknameFromNo(int memb_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.getNicknameFromNo", memb_no);
	}

	@Override
	public int getMemberNo(String id) {
		return sqlSession.selectOne("detailMapper.getMemberNo", id);
	}

	@Override
	public int getNewReviewNo() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.getNewReviewNo");
	}

	@Override
	public void insertReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert("detailMapper.insertReview", vo);
	}

	@Override
	public void insertReviewImage(ReviewImageVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert("detailMapper.insertReviewImage", vo);
	}

	@Override
	public String getRegDate(int review_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("detailMapper.getRegDate", review_no);
	}

	@Override
	public List<ReviewVO> selectReviewList(int store_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("detailMapper.selectReviewList", store_no);
	}

	@Override
	public List<ReviewImageVO> selectReviewImageList(int review_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("detailMapper.selectReviewImageList", review_no);
	}

	
	//찜하기(유주)
		
	@Override
	public void insertLikeInfo(DibsVO vo) {
		this.sqlSession.insert("detailMapper.insertLikeInfo",vo);
		
	}

	@Override
	public void deleteLikeInfo(DibsVO vo) {
		this.sqlSession.delete("detailMapper.deleteLikeInfo",vo);
		
	}
	@Override
	public int checkLike(DibsVO vo){
		return sqlSession.selectOne("detailMapper.checkLike",vo);
	}
	
	
	
}
