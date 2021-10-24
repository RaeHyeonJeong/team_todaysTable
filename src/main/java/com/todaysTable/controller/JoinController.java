package com.todaysTable.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
	


	@RequestMapping(value="signup.do")
	public String joinView() {
		
		return "/WEB-INF/views/signup";
	}
	
	
}
