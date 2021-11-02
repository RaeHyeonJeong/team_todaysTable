package com.todaysTable.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FindMemberDaoImpl implements FindMemberDao{
	@Autowired
	private SqlSessionTemplate st;

	@Override
	public String findId(HashMap<String, Object> map) {
		return st.selectOne("findMemberMapper.serchID", map );
	}

	@Override
	public String findPwd(String email) {
		return st.selectOne("findMemberMapper.serchPWD", email);
	}
	

}
