package com.todaysTable.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todaysTable.dao.MyListDao;
import com.todaysTable.vo.DibsVO;
import com.todaysTable.vo.StoreVO;

@Service
public class MyListServiceIpl implements MyListService{
	
	@Autowired
	private MyListDao MyListDao;

	@Override
	public int getMemberNo(String id) throws Exception {
		return MyListDao.getMemberNo(id);
	}

	@Override
	public StoreVO getStoreInfo(int store_no) throws Exception {
		return MyListDao.getStoreInfo(store_no);
	}

	@Override
	public Double getAvg_Grade(int store_no) throws Exception {
		return MyListDao.getAvg_Grade(store_no);
	}
	
	
	@Override /*버전1*/
	public DibsVO getLikeInfo(String id, int store_no) throws Exception{
		DibsVO vo=new DibsVO();
		StoreVO storeVO = MyListDao.getStoreInfo(store_no);
		vo.setAddress(storeVO.getAddress());
		vo.setStore_no(storeVO.getStore_no());
		vo.setStore_name(storeVO.getName());
		vo.setMemb_no(MyListDao.getMemberNo("id"));
		vo.setAvg_grade(MyListDao.getAvg_Grade(store_no));
		
		return vo;
	
	}
	
	
	@Override
	public void insertLikeInfo(DibsVO vo) throws Exception {
		this.MyListDao.insertLikeInfo(vo);
	}

	@Override
	public void deleteLikeInfo(DibsVO vo) throws Exception {
		this.MyListDao.deleteLikeInfo(vo);
		
	}

	@Override
	public List<DibsVO> getLikeList(int memb_no) throws Exception {
		return MyListDao.getLikeList(memb_no);
	}

	


	
	
	

	
	
	
}