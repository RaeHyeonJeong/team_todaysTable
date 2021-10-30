package com.todaysTable.service;

import java.util.HashMap;

import com.todaysTable.vo.MemberVO;

public interface MemberService {
	
	public boolean loginCheck(String id, String password) throws Exception;
	
	public HashMap<String, Object> getLoginInfo(String id) throws Exception;
	
	public MemberVO myPageMove(String id) throws Exception;
	
	public void updateProfile(MemberVO vo)  throws Exception;
	
	public MemberVO profileMove(String id) throws Exception;
}
