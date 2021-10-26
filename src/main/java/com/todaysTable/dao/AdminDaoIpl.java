package com.todaysTable.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDaoIpl implements AdminDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public String adminCk(String id) throws Exception {
		return sqlSession.selectOne("loginMapper.adminCk", id);

	}

}
