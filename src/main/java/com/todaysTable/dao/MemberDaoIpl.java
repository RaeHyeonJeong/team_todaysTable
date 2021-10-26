package com.todaysTable.dao;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoIpl implements MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public String loginCk(String id) {
		return sqlSession.selectOne("loginMapper.loginCk", id);
	}
}


