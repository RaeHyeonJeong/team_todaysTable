package com.todaysTable.dao;



import com.todaysTable.vo.DibsVO;
import com.todaysTable.vo.StoreVO;

public interface MyListDao {
	public int getMemberNo(String id) throws Exception;
	public StoreVO getStoreInfo(int store_no) throws Exception;
	public Double getAvg_Grade(int store_no) throws Exception;
	public void insertLikeInfo(DibsVO vo) throws Exception;
	public void deleteLikeInfo(DibsVO vo) throws Exception;
	public int checkLike(DibsVO vo) throws Exception;
	
}
