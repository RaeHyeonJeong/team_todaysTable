package com.todaysTable.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.todaysTable.service.FindMemberService;

@Controller
public class FindMemberController {
	
	@Autowired
	private FindMemberService service;
	
	@ResponseBody
	@RequestMapping(value="findID.do")
	public String findId(String name,String tel) {
		HashMap<String ,Object> map=new HashMap<>();
		
		map.put("name",name);
		map.put("tel", tel);
		System.out.println(map);
		String id = service.findId(map);
		System.out.println(id);
		
		return id;
		
	}

}
