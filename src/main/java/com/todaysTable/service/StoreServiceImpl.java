package com.todaysTable.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.todaysTable.dao.StoreDao;
import com.todaysTable.vo.Criteria;
import com.todaysTable.vo.StoreVO;

@Service
public class StoreServiceImpl implements StoreService {
	
	@Inject
	StoreDao storeDao;
	
	@Override
	public List<StoreVO> list(Criteria cri) {
		// TODO Auto-generated method stub
		//return storeDao.storeList();
		return storeDao.list(cri);
	}

	@Override
	public int listCount() {
		// TODO Auto-generated method stub
		return storeDao.listCount();
	}
	
	

}
