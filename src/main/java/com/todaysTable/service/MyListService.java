package com.todaysTable.service;



import java.util.List;

import com.todaysTable.vo.DibsVO;
import com.todaysTable.vo.StoreVO;


public interface MyListService {
	
	
	public int getMemberNo(String id) throws Exception;
	public StoreVO getStoreInfo(int store_no) throws Exception;
	public Double getAvg_Grade(int store_no) throws Exception;
	
	public DibsVO getLikeInfo(String id, int store_no) throws Exception;
	public void insertLikeInfo(DibsVO vo) throws Exception;
	public void deleteLikeInfo(DibsVO vo) throws Exception;
	public List<DibsVO> getLikeList(int memb_no) throws Exception;
	
	
}