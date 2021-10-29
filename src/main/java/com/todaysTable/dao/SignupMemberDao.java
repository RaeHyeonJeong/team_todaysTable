package com.todaysTable.dao;

import com.todaysTable.vo.MemberVO;

public interface SignupMemberDao {
	// 회원가입
	public void memberJoin(MemberVO vo) throws Exception;

	// 아이디 중복체크
	public int IdCheck(String id);

	// 닉네임 중복체크
	public int NickCheck(String nickname);
	
	

}
