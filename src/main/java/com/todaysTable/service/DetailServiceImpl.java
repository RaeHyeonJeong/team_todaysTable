package com.todaysTable.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todaysTable.dao.DetailDao;
import com.todaysTable.vo.MenuVO;
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
	public String getNickName(String id) {
		// TODO Auto-generated method stub
		return dao.getNickName(id);
	}
	
	
}
