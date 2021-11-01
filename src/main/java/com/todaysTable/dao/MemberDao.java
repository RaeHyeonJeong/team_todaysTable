package com.todaysTable.dao;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.todaysTable.vo.MemberVO;

public interface MemberDao {

	public String loginCk(String id) throws Exception;
	
	public HashMap<String, Object> getLoginInfo(String id);
	
	public MemberVO getPersonalInfo(String id);
	
	public void updateProfile(MemberVO vo) ;
	
	public void logout(HttpSession session);
	
}
