package com.todaysTable.controller;

import java.io.FileOutputStream;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.todaysTable.service.MemberService;
import com.todaysTable.vo.MemberVO;

@Controller
public class MemberController {
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService service;
	
	
	@RequestMapping(value="getPersonalInfo.do")//기본 정보 출력
	public String getPersonalInfo(HttpSession session,Model model) throws Exception{
		
		logger.info("myPage");
		
		session.getAttribute("id");//로그인시 저장했던 아이디 get
		
		MemberVO vo= service.getPersonalInfo((String) session.getAttribute("id"));
		model.addAttribute("list",vo);//해당 회원의 기본정보를 가져옴
				
		return "WEB-INF/views/personal_information";//프로필 관리 페이지로 이동
	}
	
	
	@PostMapping(value = "updateProfile.do")//프로필 관리
	public String updateProfile(
			MemberVO vo,HttpSession session, @RequestParam(value = "file", required = false) 
			MultipartFile file) throws Exception {// 파일업로드
		
		logger.info("updateProfile");
		
		session.getAttribute("id");
		vo.setId((String)session.getAttribute("id"));
		
		String location = "C:\\Users\\조유주\\git\\team_todaysTable\\src\\main\\webapp\\resources\\upload\\";
		FileOutputStream fos = null;
		System.out.println(file);
		String fileName = file.getOriginalFilename();
		if (fileName.length() > 0) {
			try {
				fos = new FileOutputStream(location.concat(fileName));
				fos.write(file.getBytes());
				vo.setProfile_image_path(location.concat(fileName));//location + fileName
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (fos != null)
						fos.close();
				} catch (Exception e2) {
				}
			}
		};
		service.updateProfile(vo);
	return "forward:getPersonalInfo.do";//기본정보 출력 페이지로 다시 이동 (업데이트 된 정보로 출력됨)
	}
	
	
	@RequestMapping(value = "modifyProfile.do")//프로필 관리 페이지로 이동
	public String login() {
		return "WEB-INF/views/profile";
	}
}
