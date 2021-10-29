package com.todaysTable.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.todaysTable.vo.MemberVO;

@Repository
public class SignupMemberDaoImpl implements SignupMemberDao {

	@Autowired
	private SqlSessionTemplate st;

	@Override
	public void memberJoin(MemberVO vo) throws Exception {
		st.insert("memberMapper.memberJoin", vo);
	}

	@Override
	public int IdCheck(String id) {
		return st.selectOne("memberMapper.idCheck", id);
	}

	@Override
	public int NickCheck(String nickname) {
		return st.selectOne("memberMapper.nickCheck", nickname);
	}

	
	

}
