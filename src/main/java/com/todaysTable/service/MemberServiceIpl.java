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
	public HashMap<String, Object> getLoginInfo(String id) throws Exception {//로그인
		return memberDao.getLoginInfo(id);//입력한 id를 통해 name, profile_img_path를 리턴
	}
	
		
	public void  updateProfile(MemberVO vo) throws Exception{//회원정보 업데이트
		this.memberDao.updateProfile(vo);		
	}
		
	public MemberVO getPersonalInfo(String id) throws Exception {//회원 정보 가져오기
		return memberDao.getPersonalInfo(id);
	 }
	

	
}