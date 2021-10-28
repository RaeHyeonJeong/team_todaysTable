package com.todaysTable.dao;

import java.util.HashMap;

public interface MemberDao {

	public String loginCk(String id) throws Exception;
	
	public HashMap<String, Object> getLoginInfo(String id);
}
