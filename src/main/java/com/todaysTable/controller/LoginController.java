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
import org.springframework.web.bind.annotation.RequestMethod;

import com.todaysTable.service.MemberService;

@Controller
public class LoginController {
	private Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private MemberService service;

	@PostMapping(value = "loginCheck.do")
	public String loginCheck(HttpServletRequest request, HttpSession session) throws Exception {
		logger.info("Login Page");

		boolean state = service.loginCheck(request.getParameter("id"), request.getParameter("password"));// state=true의
															// 경우 로그인 성공

		if (state) {
			session.setAttribute("id", request.getParameter("id"));// 로그인 성공시 입력한 id를 세션에 저장
			session.setMaxInactiveInterval(6000);

			if (request.getParameter("id").equals("ADMIN")) {
				return "WEB-INF/views/dashBoard";// ADMIN 아이디로 로그인 성공시 dashBoard.jsp로 이동
			} else {

				HashMap<String, Object> map = service.getLoginInfo((String) session.getAttribute("id"));// name과profile_image_path를 가져와서 map에 저장

				String profileImgPath = null;
				String profileImg = null;

				if ((String) map.get("PROFILE_IMAGE_PATH") == null) {
					profileImg = "resources/img/avatar/default_profile.png";
				} else {
					profileImgPath = (String) map.get("PROFILE_IMAGE_PATH");

					int beginIndex = profileImgPath.lastIndexOf("resources");
					int endIndex = profileImgPath.length();
					profileImg = profileImgPath.substring(beginIndex, endIndex);
					profileImg = profileImg.replace("\\\\", "/");

				}

				map.put("PROFILE_IMAGE_PATH", profileImg);

				session.setAttribute("NAME", map.get("NAME"));// 가져온 name값을 세션에 저장
				session.setAttribute("PROFILE_IMAGE_PATH", map.get("PROFILE_IMAGE_PATH"));// 가져온 profle_image_path값을 세션에 저장

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

	@RequestMapping(value = "logout.do")
	public String logout(HttpSession session) {
		try {
			service.logout(session);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "WEB-INF/views/index";
	}

	@RequestMapping(value = "findid.do")
	public String findId() {
		return "WEB-INF/views/findid";
	}

	@RequestMapping(value = "findpwd.do")
	public String findPwd() {
		return "WEB-INF/views/findpwd";
	}

	@RequestMapping(value = "kakaologin.do", method = RequestMethod.GET)
	public String login(HttpServletRequest request, HttpSession session) {
		session = request.getSession();
		String id = request.getParameter("id");
		session.setAttribute("id", id);
		session.setAttribute("NAME", id);

		return "WEB-INF/views/index";
	}

}