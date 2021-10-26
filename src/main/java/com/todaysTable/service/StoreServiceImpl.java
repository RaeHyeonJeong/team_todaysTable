package com.todaysTable.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.todaysTable.dao.StoreDao;
import com.todaysTable.vo.Criteria;
import com.todaysTable.vo.SearchCriteria;
import com.todaysTable.vo.StoreVO;

@Service
public class StoreServiceImpl implements StoreService {

	@Inject
	StoreDao storeDao;

	@Override
	public List<StoreVO> list(SearchCriteria scri) {
		// TODO Auto-generated method stub
		// return storeDao.storeList();
		return storeDao.list(scri);
	}

	@Override
	public int listCount(SearchCriteria scri) {
		// TODO Auto-generated method stub
		return storeDao.listCount(scri);
	}

}
