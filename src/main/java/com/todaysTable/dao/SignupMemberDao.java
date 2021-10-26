package com.todaysTable.dao;

import com.todaysTable.vo.MemberVO;

public interface SignupMemberDao {
	// 회원가입
	public void memberJoin(MemberVO vo) throws Exception;

	public int IdCheck(String id);

}
