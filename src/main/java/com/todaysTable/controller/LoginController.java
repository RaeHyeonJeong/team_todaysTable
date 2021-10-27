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

	@PostMapping(value = "loginCheck.do")
	public String loginCheck(HttpServletRequest request, HttpSession session) throws Exception {
		logger.info("Login Page");

		boolean state = service.loginCheck(request.getParameter("id"), request.getParameter("password"));

		if (state) {
			session.setAttribute("id", request.getParameter("id"));
			session.setMaxInactiveInterval(60);
			if (request.getParameter("id").equals("ADMIN")) {
				return "WEB-INF/views/dashBoard";
			} else {
				return "WEB-INF/views/index";
			}
		} else {
			return "redirect:login.do";
		}
	}

	@RequestMapping(value = "login.do")
	public String login() {
		return "WEB-INF/views/login";
	}
}
