package com.todaysTable.service;

import java.util.HashMap;

public interface MemberService {
	
	public boolean loginCheck(String id, String password) throws Exception;
	
	public HashMap<String, Object> getLoginInfo(String id) throws Exception;
}
