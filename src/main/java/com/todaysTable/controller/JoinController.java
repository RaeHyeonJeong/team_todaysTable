package com.todaysTable.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.todaysTable.dao.SignupMemberDao;
import com.todaysTable.service.SignUpService;
import com.todaysTable.vo.MemberVO;

@Controller
public class JoinController {
	@Autowired
	private SignupMemberDao dao;
	@Autowired
	private SignUpService service;

	@RequestMapping(value = "signup.do")
	public String joinView() {
		return "WEB-INF/views/signup";
	}

	@RequestMapping(value = "agreement.do")
	public String agreementView() {
		return "WEB-INF/views/agreement";
	}

	// 회원가입
	@RequestMapping(value = "signupsubmit.do", method = RequestMethod.POST)
	public String joinSubmit(MemberVO vo) throws Exception {
		// 생일 yy/mm/dd로 수정
		String birthdate = vo.getBirthdate();
		birthdate = birthdate.replace('-', '/');
		birthdate = birthdate.substring(2, birthdate.length());
		vo.setBirthdate(birthdate);
		// 회원가입 정보 넣어줌
		dao.memberJoin(vo);
		System.out.println(vo);

		return "WEB-INF/views/index";
	}

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "idCheck.do")
	public int idCheckCtr(String id) {
		System.out.println(id);
		int result = service.IdCheck(id);
		System.out.println(result);

		return result;
	}

	// 닉네임 중복 체크
	@ResponseBody
	@RequestMapping(value = "nickCheck.do")
	public int nickCheckCtr(String nickname) {
		System.out.println(nickname);
		int Nresult = service.NickCheck(nickname);
		System.out.println(Nresult);

		return Nresult;
	}
}
