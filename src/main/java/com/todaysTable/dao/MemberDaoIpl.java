package com.todaysTable.dao;

import java.util.HashMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoIpl implements MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public String loginCk(String id) {
		return sqlSession.selectOne("loginMapper.loginCk", id);// 로그인 체크를 위한 dao. 입력한 id값과 입력한 id값을 통해 dbms에서 가져온
																// password가 있다.
	}

	@Override
	public HashMap<String, Object> getLoginInfo(String id) {
		return sqlSession.selectOne("loginMapper.getLoginInfo", id);// 입력한 id로 dbms에서 해당 회원의 name,profile_img_path를 가져옴
	}
}
