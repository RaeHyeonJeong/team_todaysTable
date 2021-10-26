package com.todaysTable.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.todaysTable.dao.SignupMemberDao;
import com.todaysTable.vo.MemberVO;

@Controller
public class JoinController {
	@Autowired
	private SignupMemberDao dao;

	@RequestMapping(value = "signup.do") 
	public String joinView() {
		return "WEB-INF/views/signup";
	}

	@RequestMapping(value = "agreement.do")
	public String agreementView() {
		return "WEB-INF/views/agreement";
	}

	@RequestMapping(value = "signupsubmit.do")
	public String joinSubmit(MemberVO vo) {
		String birthdate = vo.getBirthdate();
		birthdate = birthdate.replace('-', '/');
		birthdate = birthdate.substring(2, birthdate.length());
		vo.setBirthdate(birthdate);
		try {
			dao.memberJoin(vo);
			System.out.println(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "WEB-INF/views/index";
	}
}
