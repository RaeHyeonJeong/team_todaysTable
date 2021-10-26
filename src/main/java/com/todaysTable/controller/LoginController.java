package com.todaysTable.controller;

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

	@PostMapping(value = "loginCheck.do" )
	public String loginCheck(HttpServletRequest request, HttpSession session) throws Exception {
		logger.info("Login Page");
		
		
		String state = service.loginCheck(request.getParameter("id"), request.getParameter("password"));
		System.out.println("id:" + request.getParameter("id"));
		System.out.println("password:" + request.getParameter("password"));
		if (state=="1") {
			session.setAttribute("id", request.getParameter("id"));
			session.setMaxInactiveInterval(60 * 60);
			System.out.println(session.getAttribute("id"));

			if (request.getParameter("id").equals("ADMIN")) {
				System.out.println("Admin login success");
				return "WEB-INF/views/dashBoard";

			} else {
				System.out.println("email login success");
				return "WEB-INF/views/index";
			}

		} else {
			System.out.println("login fail");
			return "redirect:login.do";
		}
	}

	@RequestMapping(value = "login.do")
	public String login() {
		return "WEB-INF/views/login";
	}
	
}
