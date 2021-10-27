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

	public boolean loginCheck(String id, String password) throws Exception {

		if (id.equals("ADMIN")) {
			String dbPass = adminDao.adminCk(id);
			return dbPass != null && dbPass.equals(password);
		} else {
			String dbPass = memberDao.loginCk(id);
			return dbPass != null && dbPass.equals(password);
		}
	}
}
