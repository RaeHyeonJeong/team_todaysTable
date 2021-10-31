package com.todaysTable.service;

import java.util.HashMap;

import com.todaysTable.vo.MemberVO;

public interface MemberService {
	
	public boolean loginCheck(String id, String password) throws Exception;//로그인
	
	public HashMap<String, Object> getLoginInfo(String id) throws Exception;//로그인
	
	public void updateProfile(MemberVO vo)  throws Exception;//회원정보 업데이트
	
	public MemberVO getPersonalInfo(String id) throws Exception;//회원정보 가져오기
	
	
}
