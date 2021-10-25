package com.todaysTable.dao;

import com.todaysTable.vo.MemberVO;

public interface SignupMemberDao {
	// 회원가입 메소드
	public void memberJoin(MemberVO vo) throws Exception;

}
