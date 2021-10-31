package com.todaysTable.service;

import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.todaysTable.dao.AdminDao;
import com.todaysTable.dao.MemberDao;
import com.todaysTable.vo.MemberVO;

@Service
public class MemberServiceIpl implements MemberService {

	@Autowired
	private AdminDao adminDao;
	@Autowired
	private MemberDao memberDao;

	public boolean loginCheck(String id, String password) throws Exception {

		if (id.equals("ADMIN")) {//입력 아이디가 ADMIN일 경우
			String dbPass = adminDao.adminCk(id);//mapper를 통해 가져온 ADMIN의 password
			return dbPass != null && dbPass.equals(password);//mapper를 통해 가져온 ADMIN의 password는 null이 아니고 실제 입력한 password와 같을경우 true
		} else {
			String dbPass = memberDao.loginCk(id);//일반 회원
			return dbPass != null && dbPass.equals(password);//mapper를 통해 가져온 ADMIN의 password는 null이 아니고 실제 입력한 password와 같을경우 true
		}
	}

	public HashMap<String, Object> getLoginInfo(String id) throws Exception {
		return memberDao.getLoginInfo(id);//입력한 id를 통해 name, profile_img_path를 리턴
	}
	
	public MemberVO myPageMove(String id) throws Exception {//기본 정보 출력 페이지로 이동
		return memberDao.getPersonalInfo(id);
	}

	public void  updateProfile(MemberVO vo) throws Exception{//프로필 업데이트
		this.memberDao.updateProfile(vo);
		
	}
	public MemberVO profileMove(String id) throws Exception {
		return memberDao.getPersonalInfo(id);//프로필 관리 페이지로 이동
	}
	
 }
