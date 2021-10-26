package com.todaysTable.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todaysTable.dao.AdminDao;
import com.todaysTable.dao.MemberDao;

@Service
public class MemberServiceIpl implements MemberService {

	@Autowired
	private AdminDao adminDao;
	@Autowired
	private MemberDao memberDao;

	public String loginCheck(String id, String password) throws Exception {
		String dbPass;
		String state;
		
		if (id.equals("ADMIN")) {
			dbPass = adminDao.adminCk(id);
			System.out.println("dbPass:"+dbPass);
			if (dbPass != null && dbPass.equals(password)) {
				state = "1"; 
				return state;
			} else {
				state = "0";
				return state; 
			}
		} else {
			dbPass = memberDao.loginCk(id);
			System.out.println("dbPass:"+dbPass);
			if(dbPass != null && dbPass.equals(password)) {
				state="1";
						return state;
			}else {
				state="0";
				return state;
			}
		}
	}
}
