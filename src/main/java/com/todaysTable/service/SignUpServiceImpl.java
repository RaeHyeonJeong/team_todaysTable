package com.todaysTable.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.todaysTable.dao.SignupMemberDao;
import com.todaysTable.vo.MemberVO;

@Repository
public class SignUpServiceImpl implements SignUpService {

	@Autowired
	private SignupMemberDao dao;

	@Override
	public void memberJoinProcess(MemberVO vo) {
		try {
			dao.memberJoin(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int IdCheck(String id) {
		return dao.IdCheck(id);
	}

	@Override
	public int NickCheck(String nickname) {
		return dao.NickCheck(nickname);
	}

}
