package com.todaysTable.dao;

import java.util.HashMap;

public interface FindMemberDao {
	public String findId(HashMap<String, Object>map);
	
	public String findPwd(String email);
}
