package com.todaysTable.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todaysTable.dao.FindMemberDao;

@Service
public class FindMemberServiceImpl implements FindMemberService{
	
	@Autowired
	private FindMemberDao dao;

	@Override
	public String findId(HashMap<String, Object> map) {
		return dao.findId(map);
	}

}
