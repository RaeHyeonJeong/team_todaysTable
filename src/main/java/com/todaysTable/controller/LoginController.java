package com.todaysTable.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.todaysTable.service.MemberService;

@Controller
public class LoginController {
	private Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private MemberService service;

	@PostMapping(value = "loginCheck.do")
	public String loginCheck(HttpServletRequest request, HttpSession session) throws Exception {
		logger.info("Login Page");

		boolean state = service.loginCheck(request.getParameter("id"), request.getParameter("password"));// state=true의 경우 로그인 성공
	
		if (state) {
			session.setAttribute("id", request.getParameter("id"));// 로그인 성공시 입력한 id를 세션에 저장
			session.setMaxInactiveInterval(6000);

			if (request.getParameter("id").equals("ADMIN")) {
				return "WEB-INF/views/dashBoard";// ADMIN 아이디로 로그인 성공시 dashBoard.jsp로 이동
			} else {

				HashMap<String, Object> map = service.getLoginInfo((String) session.getAttribute("id"));// name과profile_image_path를 가져와서 map에 저장
																										
				session.setAttribute("NAME", map.get("NAME"));// 가져온 name값을 세션에 저장
				session.setAttribute("PROFILE_IMAGE_PATH", map.get("PROFILE_IMAGE_PATH"));// 가져온 profle_image_path값을 세션에 저장
		
				/*
				 * System.out.println("keySet(): " + map.keySet());
				 * System.out.println(map.get("NAME"));
				 * System.out.println(map.get("PROFILE_IMAGE_PATH")); key,value 확인 가능
				 */

				return "WEB-INF/views/index";// name, profle_image_path를 갖고 index로 이동
			}
		} else {
			return "redirect:login.do";// 로그인 실패시 다시 로그인 페이지로 돌아감
		}
	}

	@RequestMapping(value = "login.do")
	public String login() {
		return "WEB-INF/views/login";// 로그인 실패시 다시 로그인 페이지로 돌아감
	}
}
